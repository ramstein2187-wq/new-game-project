class_name HistoryV5Catalog
extends HistoryV4Catalog

const V5_PATH := "res://content/history/history_v5.json"
const ARCHAEOLOGY_PATH := "res://content/history/history_v5_archaeology.json"
static var _v5_shipping: Dictionary = {}
static var _archaeology_shipping: Dictionary = {}

func _init(content: Dictionary = {}) -> void:
	if _v5_shipping.is_empty():
		_v5_shipping = JSON.parse_string(FileAccess.get_file_as_string(V5_PATH))
	super(content if not content.is_empty() else _v5_shipping)

static func archaeology_content() -> Dictionary:
	if _archaeology_shipping.is_empty():
		_archaeology_shipping = JSON.parse_string(FileAccess.get_file_as_string(ARCHAEOLOGY_PATH))
	return _archaeology_shipping.duplicate(true)

static func stream(seed: int, namespace_id: String) -> RandomNumberGenerator:
	var value := RandomNumberGenerator.new()
	value.seed = SeedDeriver.derive(seed, ["history", "v5", namespace_id])
	return value
