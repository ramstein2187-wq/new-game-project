extends SceneTree

var failures := 0
var assertions := 0
var _source: NamingContent
var _catalog: NamingCatalog
var _generator: NameGenerator
var _renderer: NameRenderer

func expect(condition: bool, label: String) -> void:
	assertions += 1
	if not condition:
		failures += 1
		push_error(label)

func _init() -> void:
	_source = load(NamingCatalog.CONTENT_PATH)
	_catalog = NamingCatalog.new(_source)
	expect(_catalog.is_valid(), "Shipping synthetic catalog validates: " + "; ".join(_catalog.errors))
	if not _catalog.is_valid():
		quit(1)
		return
	_generator = NameGenerator.new(_catalog)
	_renderer = NameRenderer.new(_catalog)
	_examples_and_serialization()
	_determinism_and_namespaces()
	_validation()
	_blocked_results()
	_extension_and_ownership()
	_variation()
	print("%s: Procedural Naming v1 (%d assertions)" % ["FAIL" if failures else "PASS", assertions])
	quit(1 if failures else 0)

func _proper() -> Dictionary:
	return {"kind": "phonetic", "tokens": ["vei", "ra"]}

func _semantic(token: String) -> Dictionary:
	return {"kind": "semantic", "tokens": [token]}

func _name(template_id: String, name_type: String, components: Dictionary, culture_id: String = "prototype_surface") -> GeneratedName:
	var name := GeneratedName.new()
	name.culture_id = culture_id
	name.name_type = name_type
	name.template_id = template_id
	name.components = components
	return name

func _examples_and_serialization() -> void:
	var examples := [
		[_name("proper_two", "person", {"proper": _proper()}), "Veyra", "베이라"],
		[_name("proper_two", "settlement", {"proper": _proper()}), "Veyra", "베이라"],
		[_name("semantic_place", "semantic_location", {"adjective": _semantic("RED"), "feature": _semantic("WELL")}), "Red Well", "붉은 우물"],
		[_name("semantic_place", "semantic_location", {"adjective": _semantic("ASHEN"), "feature": _semantic("REACH")}), "Ashen Reach", "잿빛 변경"],
		[_name("mixed_place", "mixed_location", {"proper": _proper(), "feature": _semantic("GATE")}), "Veyra Gate", "베이라 관문"],
		[_name("possessive_feature", "mixed_possessive", {"proper": _proper(), "feature": _semantic("GATE")}), "Veyra's Gate", "베이라의 관문"],
		[_name("numbered_facility", "facility", {"domain": _semantic("BIOLOGICAL"), "purpose": _semantic("PRESERVATION"), "feature": _semantic("ARRAY"), "number": {"kind": "number", "value": 74}}, "administrator"), "Biological Preservation Array 74", "생물 보존 배열체 74"],
	]
	for row in examples:
		var name: GeneratedName = row[0]
		var original := name.to_dict()
		expect(_renderer.validation_errors(name).is_empty(), "Example canonical validates")
		for repeat in range(3):
			expect(_renderer.render(name, "en") == row[1], "English example")
			expect(_renderer.render(name, "ko") == row[2], "Korean example")
			expect(name.to_dict() == original, "Locale rendering is pure")
		var restored := GeneratedName.from_dict(JSON.parse_string(name.canonical_key()))
		expect(restored != null and restored.canonical_key() == name.canonical_key(), "JSON roundtrip preserves canonical data")
		expect(_renderer.render(restored, "ko") == row[2], "Restored name renders")
		var dict := name.to_dict()
		dict.components.clear()
		expect(name.to_dict() == original, "Dictionary export is isolated")
	# Native Resource save/load also works without a game-wide save system.
	var path := "user://m035-name-roundtrip.tres"
	var sample: GeneratedName = examples[-1][0]
	expect(ResourceSaver.save(sample, path) == OK, "Canonical Resource serializes")
	var loaded := ResourceLoader.load(path, "", ResourceLoader.CACHE_MODE_IGNORE) as GeneratedName
	expect(loaded != null and loaded.canonical_key() == sample.canonical_key(), "Native Resource roundtrip")
	DirAccess.remove_absolute(path)
	expect(_renderer.render(sample, "unknown") == "" and not _renderer.last_error.is_empty(), "Unknown locale fails explicitly")
	expect(GeneratedName.from_dict({}) == null, "Incomplete restore rejected")
	var invalid_dict := sample.to_dict()
	invalid_dict.naming_version = 1.5
	expect(GeneratedName.from_dict(invalid_dict) == null, "Fractional version rejected")
	invalid_dict = sample.to_dict()
	invalid_dict.components.number.value = 74.5
	expect(GeneratedName.from_dict(invalid_dict) == null, "Fractional restored number rejected")

func _determinism_and_namespaces() -> void:
	var preview_person := _generator.generate(74, "preview/entity-7", "prototype_surface", "person")
	expect(preview_person.template_id == "proper_three" and preview_person.components.proper.tokens == ["to", "se", "wen"], "Naming v1 fixed-seed canonical golden")
	expect(_renderer.render(preview_person, "en") == "Tosewen" and _renderer.render(preview_person, "ko") == "토세웬", "Naming v1 fixed-seed display golden")
	var preview_facility := _generator.generate(74, "preview/entity-7", "administrator", "facility")
	expect(preview_facility.components.number.value == 3530 and preview_facility.components.feature.tokens == ["ARRAY"], "Naming v1 numeric selection golden")
	var first := _generator.generate(1234, "npc/7", "prototype_surface", "person")
	expect(first != null, "Generation succeeds")
	var key := first.canonical_key()
	for index in range(25):
		# Actual terrain/path/landmark generation plus unrelated mutable RNG draws.
		var unrelated := RandomNumberGenerator.new()
		unrelated.seed = SeedDeriver.derive(index, ["other-system"])
		for draw in range(index):
			unrelated.randi()
		SimpleMapGenerator.new().generate(index)
		_generator.generate(index, "other-npc", "administrator", "facility")
		expect(_generator.generate(1234, "npc/7", "prototype_surface", "person").canonical_key() == key, "Independent RNG and call order")
	# Match the public seed contract, so moving to a mutable stream breaks this guard.
	var scope: Array[String] = ["naming-v1", "1", "prototype_surface", "npc/7", "person", "attempt", "0"]
	var rng := RandomNumberGenerator.new()
	var template_scope := scope.duplicate()
	template_scope.append("template")
	rng.seed = SeedDeriver.derive(1234, template_scope)
	var expected_template: String = ["proper_two", "proper_three"][rng.randi_range(0, 1)]
	expect(first.template_id == expected_template, "Template uses its own SeedDeriver scope")
	var item := _catalog.template(first.template_id)
	for index in range(item.slots[0].token_pools.size()):
		var token_scope := scope.duplicate()
		token_scope.append_array([item.id, "slot", "proper", "token", str(index)])
		rng.seed = SeedDeriver.derive(1234, token_scope)
		var pool := item.slots[0].token_pools[index]
		expect(first.components.proper.tokens[index] == pool[rng.randi_range(0, pool.size() - 1)], "Each phonetic selection has a separate substream")
	for seed_value in [-1, 0, 9223372036854775806]:
		var a := _generator.generate(seed_value, "large/negative", "prototype_surface", "person")
		var b := _generator.generate(seed_value, "large/negative", "prototype_surface", "person")
		expect(a != null and a.canonical_key() == b.canonical_key(), "Signed/large world seeds are deterministic")
	# Adding/reordering another slot never consumes draws from the existing slot.
	var source := _copy_source()
	var mixed: NameTemplate = source.templates[3]
	var before := _generator.generate(74, "gate/3", "prototype_surface", "mixed_location")
	mixed.slots.reverse()
	var extra := NameSlot.new()
	extra.id = "marker"
	extra.kind = NameSlot.Kind.NUMBER
	extra.number_max = 999
	mixed.slots.append(extra)
	mixed.patterns = {"en": "{marker} {feature} {proper}", "ko": "{proper} {feature} {marker}"}
	var changed := NameGenerator.new(NamingCatalog.new(source)).generate(74, "gate/3", "prototype_surface", "mixed_location")
	expect(changed != null and changed.components.proper == before.components.proper and changed.components.feature == before.components.feature, "Independent stable slot IDs survive unrelated slot additions/reordering")

func _copy_source() -> NamingContent:
	return _source.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)

func _reject_content(source: NamingContent, label: String) -> void:
	var catalog := NamingCatalog.new(source)
	expect(not catalog.is_valid() and not catalog.errors.is_empty(), label)
	expect(NameGenerator.new(catalog).generate(1, "test", "prototype_surface", "person") == null, "Invalid catalog rejected as a whole")
	expect(NameRenderer.new(catalog).render(_name("proper_two", "person", {"proper": _proper()}), "en") == "", "Invalid catalog cannot render")

func _reject_name(name: GeneratedName, label: String) -> void:
	expect(not _renderer.validation_errors(name).is_empty(), label)
	expect(_renderer.render(name, "en") == "" and not _renderer.last_error.is_empty(), "Malformed canonical rejected by render")

func _validation() -> void:
	var source := _copy_source()
	source.cultures[0].id = ""
	_reject_content(source, "Empty culture ID")
	source = _copy_source()
	source.cultures.append(source.cultures[0])
	_reject_content(source, "Duplicate culture ID")
	source = _copy_source()
	source.tokens.append(source.tokens[0])
	_reject_content(source, "Duplicate token ID")
	source = _copy_source()
	source.templates.append(source.templates[0])
	_reject_content(source, "Duplicate template ID")
	source = _copy_source()
	source.tokens[0].forms.erase("ko")
	_reject_content(source, "Missing required locale form")
	source = _copy_source()
	source.tokens[0].forms.en = "   "
	_reject_content(source, "Empty output token form")
	source = _copy_source()
	source.tokens[0].forms.en = "{proper}"
	_reject_content(source, "Token form cannot inject template placeholders")
	source = _copy_source()
	source.templates[0].slots[0].token_pools[0] = PackedStringArray(["missing"])
	_reject_content(source, "Missing token reference")
	source = _copy_source()
	source.templates[0].slots[0].token_pools[0] = PackedStringArray(["RED"])
	_reject_content(source, "Wrong token kind")
	source = _copy_source()
	source.cultures[0].template_ids.append("missing")
	_reject_content(source, "Missing culture template")
	for pattern in ["", "   ", "{missing}", "{proper", "{proper}}", "{{proper}}", "{proper}{proper}", "literal only"]:
		source = _copy_source()
		source.templates[0].patterns.en = pattern
		_reject_content(source, "Malformed/empty template: " + pattern)
	source = _copy_source()
	source.templates[0].patterns.erase("ko")
	_reject_content(source, "Missing locale grammar")
	source = _copy_source()
	source.templates[0].slots[0].id = "bad slot"
	_reject_content(source, "Malformed slot ID")
	source = _copy_source()
	source.templates[5].slots[3].number_min = -1
	_reject_content(source, "Negative numeric range")
	source = _copy_source()
	source.templates[5].slots[3].number_min = 10000
	_reject_content(source, "Reversed numeric range")
	source = _copy_source()
	source.reserved_display_names = {"ko": [""]}
	_reject_content(source, "Invalid reserved display")
	source = _copy_source()
	source.required_locales = []
	_reject_content(source, "Empty required locale set")
	_reject_name(null, "Null canonical")
	_reject_name(_name("missing", "person", {"proper": _proper()}), "Unknown canonical template")
	_reject_name(_name("proper_two", "person", {"proper": _proper()}, "missing"), "Unknown canonical culture")
	_reject_name(_name("proper_two", "facility", {"proper": _proper()}), "Wrong name type")
	_reject_name(_name("proper_two", "person", {}), "Missing component")
	_reject_name(_name("proper_two", "person", {"proper": {"kind": "phonetic", "tokens": ["missing", "ra"]}}), "Missing canonical token")
	_reject_name(_name("proper_two", "person", {"proper": {"kind": "phonetic", "tokens": ["vei"]}}), "Wrong phonetic count")
	var facility := _generator.generate(74, "facility", "administrator", "facility")
	for value in [-1, 0, 10000, 74.5, "74", null, true]:
		var bad: GeneratedName = facility.duplicate_deep(Resource.DEEP_DUPLICATE_ALL)
		bad.components.number.value = value
		_reject_name(bad, "Invalid numeric component")
	var versioned := _name("proper_two", "person", {"proper": _proper()})
	versioned.naming_version = 2
	_reject_name(versioned, "Unsupported naming version")
	for request in [["", "prototype_surface", "person"], ["x", "", "person"], ["x", "missing", "person"], ["x", "prototype_surface", "missing"]]:
		expect(_generator.generate(1, request[0], request[1], request[2]) == null and not _generator.last_error.is_empty(), "Invalid generation request")
	for options in [{"max_attempts": 0}, {"max_attempts": 33}, {"max_attempts": 1.5}, {"blocked_canonical_keys": [4]}, {"blocked_display_names": {"ko": "bad"}}, {"blocked_display_names": {"ja": ["name"]}}]:
		expect(_generator.generate(1, "x", "prototype_surface", "person", options) == null, "Malformed generation options")

func _blocked_results() -> void:
	var first := _generator.generate(1234, "npc/7", "prototype_surface", "person")
	var options := {"blocked_canonical_keys": [first.canonical_key()]}
	var rerolled := _generator.generate(1234, "npc/7", "prototype_surface", "person", options)
	expect(rerolled != null and rerolled.canonical_key() != first.canonical_key(), "Blocked canonical result rerolls")
	expect(_generator.last_attempt_count > 1, "Attempt count records bounded reroll")
	expect(_generator.generate(1234, "npc/7", "prototype_surface", "person", options).canonical_key() == rerolled.canonical_key(), "Reroll is deterministic")
	var english := _renderer.render(first, "en")
	var korean := _renderer.render(first, "ko")
	for locale in ["en", "ko"]:
		options = {"blocked_display_names": {locale: [" " + (english.to_upper() if locale == "en" else korean) + " "]}}
		var other := _generator.generate(1234, "npc/7", "prototype_surface", "person", options)
		expect(other != null and other.canonical_key() != first.canonical_key(), "Block display in either locale without locale input to generation")
	var source := _copy_source()
	source.reserved_canonical_keys = [first.canonical_key()]
	expect(NameGenerator.new(NamingCatalog.new(source)).generate(1234, "npc/7", "prototype_surface", "person").canonical_key() == rerolled.canonical_key(), "Catalog reserved canonical list")
	source = _copy_source()
	source.reserved_display_names = {"ko": [korean]}
	expect(NameGenerator.new(NamingCatalog.new(source)).generate(1234, "npc/7", "prototype_surface", "person").canonical_key() != first.canonical_key(), "Catalog reserved display list")
	# One possible result, reserved in English: must terminate exactly at the cap.
	source = _copy_source()
	source.templates[0].slots[0].token_pools = [PackedStringArray(["vei"]), PackedStringArray(["ra"])]
	source.cultures[0].template_ids = ["proper_two"]
	source.reserved_display_names = {"en": ["Veyra"]}
	var exhausted := NameGenerator.new(NamingCatalog.new(source))
	expect(exhausted.generate(1, "x", "prototype_surface", "person", {"max_attempts": 3}) == null, "Fully reserved vocabulary fails without infinite loop")
	expect(exhausted.last_attempt_count == 3 and "exhausted" in exhausted.last_error, "Exact bounded failure diagnostic")

func _extension_and_ownership() -> void:
	var source := _copy_source()
	var owned := NamingCatalog.new(source)
	source.tokens[0].forms.en = "mutated"
	expect(owned.token_form("vei", "en") == "vey", "Catalog owns full nested Resource snapshot")
	var definition := owned.template("proper_two")
	definition.slots[0].token_pools.clear()
	expect(not owned.template("proper_two").slots[0].token_pools.is_empty(), "Catalog getters isolate caller edits")
	var generated := _generator.generate(74, "ownership", "prototype_surface", "person")
	var original := generated.canonical_key()
	generated.components.clear()
	expect(_generator.generate(74, "ownership", "prototype_surface", "person").canonical_key() == original, "Generated names do not share mutable components")
	source = _copy_source()
	source.required_locales.append("test")
	for token in source.tokens:
		token.forms.test = "x" + token.forms.en
	for item in source.templates:
		item.patterns.test = item.patterns.en
	var expanded := NamingCatalog.new(source)
	expect(expanded.is_valid(), "New locale supported through authored mappings: " + "; ".join(expanded.errors))
	expect(NameRenderer.new(expanded).render(_name("proper_two", "person", {"proper": _proper()}), "test") == "xveyxra", "Renderer has no en/ko field switch")

func _variation() -> void:
	for name_type in ["person", "settlement", "semantic_location", "mixed_location", "mixed_possessive", "facility"]:
		var culture := "administrator" if name_type == "facility" else "prototype_surface"
		var unique := {}
		for index in range(1000):
			var generated := _generator.generate(index, "sample/entity-7", culture, name_type)
			expect(generated != null, "Fixed-seed sample generates")
			if generated == null:
				continue
			expect(_renderer.validation_errors(generated).is_empty(), "Fixed-seed canonical valid")
			var before := generated.canonical_key()
			var english := _renderer.render(generated, "en")
			expect(not english.is_empty(), "Fixed-seed EN nonempty")
			expect(not _renderer.render(generated, "ko").is_empty(), "Fixed-seed KO nonempty")
			expect(before == generated.canonical_key(), "Fixed-seed locale invariance")
			unique[english] = true
		print("Variation %s: %d/1000 unique English displays" % [name_type, unique.size()])
		var minimum: int = {"person": 450, "settlement": 450, "semantic_location": 20, "mixed_location": 450, "mixed_possessive": 450, "facility": 900}[name_type]
		expect(unique.size() >= minimum, "Variation sanity appropriate to authored vocabulary size")
