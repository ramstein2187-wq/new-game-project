"""Offline contract checks for M031 attribute payload/schema migration."""
import copy
import unittest

from sync_notion_knowledge import ABILITY_KEYS, SyncError, ensure_monster_attribute_properties


class FakeClient:
    def __init__(self, properties):
        self.properties = copy.deepcopy(properties)
        self.patches = []

    def request(self, method, endpoint, payload=None):
        if method == "GET":
            return {"properties": copy.deepcopy(self.properties)}
        if method == "PATCH":
            self.patches.append(copy.deepcopy(payload))
            for name, value in payload["properties"].items():
                self.properties[name] = {"type": "number", **value}
            return {"properties": copy.deepcopy(self.properties)}
        raise AssertionError(method)


class AttributeSchemaTests(unittest.TestCase):
    def test_adds_current_attributes_without_repurposing_history(self):
        old = {name: {"type": "number", "id": name} for name in ["STR", "DEX", "CON", "INT", "WIS", "CHA"]}
        client = FakeClient(old)
        ensure_monster_attribute_properties(client, "fake")
        self.assertEqual(set(client.patches[0]["properties"]), {"PER", "WIL"})
        for name, value in old.items():
            self.assertEqual(client.properties[name], value)
        ensure_monster_attribute_properties(client, "fake")
        self.assertEqual(len(client.patches), 1)
        self.assertEqual(ABILITY_KEYS, ("STR", "DEX", "CON", "PER", "INT", "WIL"))

    def test_wrong_type_fails_without_overwriting_column(self):
        client = FakeClient({"PER": {"type": "rich_text"}})
        with self.assertRaises(SyncError):
            ensure_monster_attribute_properties(client, "fake")
        self.assertEqual(client.patches, [])

    def test_unconfirmed_schema_fails(self):
        client = FakeClient({})
        original = client.request

        def refuse_patch(method, endpoint, payload=None):
            return {} if method == "PATCH" else original(method, endpoint, payload)

        client.request = refuse_patch
        with self.assertRaises(SyncError):
            ensure_monster_attribute_properties(client, "fake")


if __name__ == "__main__":
    unittest.main()
