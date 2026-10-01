"""Offline contracts for authored governing primaries and sparse action overrides."""
import copy
import json
from pathlib import Path
import unittest

from sync_notion_knowledge import (
    ABILITY_KEYS,
    _normalize_equipment_v2,
    equipment_properties,
)

ROOT = Path(__file__).resolve().parents[1]
DATASET = ROOT / "docs/datasets/equipment.json"


class GoverningAttributeDatasetTests(unittest.TestCase):
    def test_all_primary_rules_survive_offline_and_notion_payload(self):
        source = json.loads(DATASET.read_text(encoding="utf-8"))
        for primary in (*ABILITY_KEYS, "best_str_dex"):
            with self.subTest(primary=primary):
                data = copy.deepcopy(source)
                weapon = data["weapons"][0]
                weapon["damage"]["ability"] = primary
                weapon["weapon_actions"][0]["ability_rule_override"] = primary
                records = _normalize_equipment_v2(data, DATASET)
                record = next(row for row in records if row["id"] == weapon["id"])
                self.assertEqual(record["weapon_actions"][0]["ability_rule_override"], primary)
                self.assertIn(f"ability={primary}", record["weapon_actions_summary"])
                expected = "best(STR, DEX)" if primary == "best_str_dex" else primary
                self.assertIn(expected, record["damage_formula"])
                payload = json.dumps(equipment_properties(record, "synthetic"), ensure_ascii=False)
                self.assertIn(f"ability={primary}", payload)
                self.assertIn(expected, payload)

    def test_missing_override_inherits_without_fabricated_bonus(self):
        source = json.loads(DATASET.read_text(encoding="utf-8"))
        records = _normalize_equipment_v2(source, DATASET)
        for record in records:
            for action in record["weapon_actions"]:
                self.assertEqual(action["ability_rule_override"], "")
                self.assertNotIn("ability=", record["weapon_actions_summary"])


if __name__ == "__main__":
    unittest.main()
