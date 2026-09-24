class_name WorldMapViewer
extends Control

const WorldGeneratorScript := preload("res://procgen/world/world_generator.gd")
const WorldDataScript := preload("res://procgen/world/world_data.gd")
const DefaultSettings := preload("res://procgen/world/default_world_generation_settings.tres")

const LAYER_BIOME := 0
const LAYER_ELEVATION := 1
const LAYER_TEMPERATURE := 2
const LAYER_RAINFALL := 3
const LAYER_DRAINAGE := 4
const LAYER_MOISTURE := 5
const LAYER_LANDFORM := 6
const LAYER_RIVERS := 7
const LAYER_FLOW := 8
const LAYER_BASINS := 9

const LAYER_NAMES := [
	"바이옴", "고도", "기온", "강수량", "배수", "지표 수분",
	"지형", "하천", "유량", "분지 후보",
]
const BIOME_NAMES := [
	"바다", "툰드라", "사막", "초원", "온대림", "열대림", "습지", "고산",
]
const LANDFORM_NAMES := ["바다", "평지", "구릉", "산악"]
const ZOOM_LEVELS := [1, 2, 4, 8, 16]

var world_data
var map_image: Image
var current_layer: int = LAYER_BIOME
var zoom_level: int = 4
var max_flow: float = 1.0

var width_input: SpinBox
var height_input: SpinBox
var seed_input: LineEdit
var layer_input: OptionButton
var river_overlay_input: CheckBox
var map_texture: TextureRect
var status_label: Label
var cell_label: Label
var legend_label: Label
var zoom_label: Label


func _ready() -> void:
	_build_interface()
	regenerate(int(DefaultSettings.world_width), int(DefaultSettings.world_height), 12345)


func _build_interface() -> void:
	var root := VBoxContainer.new()
	root.name = "ViewerLayout"
	root.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	root.add_theme_constant_override("separation", 8)
	add_child(root)

	var title := Label.new()
	title.text = "WORLD GENERATION  |  전역 월드맵 뷰어"
	title.add_theme_font_size_override("font_size", 20)
	root.add_child(title)

	var generation_bar := HBoxContainer.new()
	generation_bar.add_theme_constant_override("separation", 8)
	root.add_child(generation_bar)
	generation_bar.add_child(_make_label("너비"))
	width_input = _make_dimension_input(int(DefaultSettings.world_width))
	generation_bar.add_child(width_input)
	generation_bar.add_child(_make_label("높이"))
	height_input = _make_dimension_input(int(DefaultSettings.world_height))
	generation_bar.add_child(height_input)
	generation_bar.add_child(_make_label("시드"))
	seed_input = LineEdit.new()
	seed_input.name = "SeedInput"
	seed_input.custom_minimum_size.x = 145.0
	seed_input.text = "12345"
	seed_input.tooltip_text = "정수 시드. 같은 시드, 크기, 설정이면 같은 월드가 생성됩니다."
	seed_input.text_submitted.connect(func(_text: String) -> void: _on_generate_pressed())
	generation_bar.add_child(seed_input)
	var generate_button := Button.new()
	generate_button.name = "GenerateButton"
	generate_button.text = "월드 생성"
	generate_button.pressed.connect(_on_generate_pressed)
	generation_bar.add_child(generate_button)

	var view_bar := HBoxContainer.new()
	view_bar.add_theme_constant_override("separation", 8)
	root.add_child(view_bar)
	view_bar.add_child(_make_label("표시 필드"))
	layer_input = OptionButton.new()
	layer_input.name = "LayerInput"
	for layer_name in LAYER_NAMES:
		layer_input.add_item(layer_name)
	layer_input.select(current_layer)
	layer_input.item_selected.connect(select_layer)
	view_bar.add_child(layer_input)
	river_overlay_input = CheckBox.new()
	river_overlay_input.name = "RiverOverlayInput"
	river_overlay_input.text = "강 겹쳐보기"
	river_overlay_input.button_pressed = true
	river_overlay_input.toggled.connect(set_river_overlay)
	view_bar.add_child(river_overlay_input)
	view_bar.add_child(_make_label("확대"))
	var zoom_out := Button.new()
	zoom_out.text = "−"
	zoom_out.pressed.connect(func() -> void: _change_zoom(-1))
	view_bar.add_child(zoom_out)
	zoom_label = _make_label("4×")
	zoom_label.custom_minimum_size.x = 34.0
	view_bar.add_child(zoom_label)
	var zoom_in := Button.new()
	zoom_in.text = "+"
	zoom_in.pressed.connect(func() -> void: _change_zoom(1))
	view_bar.add_child(zoom_in)
	legend_label = _make_label("")
	legend_label.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	view_bar.add_child(legend_label)

	var scroll := ScrollContainer.new()
	scroll.name = "MapScroll"
	scroll.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	scroll.size_flags_vertical = Control.SIZE_EXPAND_FILL
	scroll.horizontal_scroll_mode = ScrollContainer.SCROLL_MODE_AUTO
	scroll.vertical_scroll_mode = ScrollContainer.SCROLL_MODE_AUTO
	root.add_child(scroll)

	map_texture = TextureRect.new()
	map_texture.name = "MapTexture"
	map_texture.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	map_texture.stretch_mode = TextureRect.STRETCH_SCALE
	map_texture.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	map_texture.mouse_filter = Control.MOUSE_FILTER_STOP
	map_texture.gui_input.connect(_on_map_gui_input)
	scroll.add_child(map_texture)

	status_label = _make_label("")
	status_label.name = "StatusLabel"
	root.add_child(status_label)
	cell_label = _make_label("지도 위에 마우스를 올리면 셀 데이터를 확인할 수 있습니다.")
	cell_label.name = "CellLabel"
	root.add_child(cell_label)


func _make_label(value: String) -> Label:
	var label := Label.new()
	label.text = value
	return label


func _make_dimension_input(value: int) -> SpinBox:
	var input := SpinBox.new()
	input.min_value = 16.0
	input.max_value = 2048.0
	input.step = 1.0
	input.rounded = true
	input.custom_minimum_size.x = 92.0
	input.value = float(value)
	input.tooltip_text = "16~2048 셀. 큰 월드는 생성과 이미지 변환에 시간이 더 걸립니다."
	return input


func _on_generate_pressed() -> void:
	var seed_text := seed_input.text.strip_edges()
	if not seed_text.is_valid_int():
		status_label.text = "시드에 정수를 입력해 주세요."
		return
	regenerate(int(width_input.value), int(height_input.value), seed_text.to_int())


func regenerate(world_width: int, world_height: int, world_seed: int) -> void:
	assert(world_width >= 16 and world_width <= 2048)
	assert(world_height >= 16 and world_height <= 2048)
	var settings = DefaultSettings.duplicate(true)
	settings.world_width = world_width
	settings.world_height = world_height
	var start_usec: int = Time.get_ticks_usec()
	world_data = WorldGeneratorScript.new(settings).generate(world_seed)
	var generation_msec: float = float(Time.get_ticks_usec() - start_usec) / 1000.0
	max_flow = 1.0
	for value in world_data.flow_accumulation:
		max_flow = maxf(max_flow, float(value))
	width_input.value = float(world_width)
	height_input.value = float(world_height)
	seed_input.text = str(world_seed)
	_render_layer()
	status_label.text = "월드 %d×%d  |  시드 %d  |  생성 %.1f ms  |  표시 %s  |  생성기 v%d" % [
		world_width, world_height, world_seed, generation_msec,
		LAYER_NAMES[current_layer], int(world_data.generator_version),
	]
	cell_label.text = "지도 위에 마우스를 올리면 셀 데이터를 확인할 수 있습니다."


func select_layer(next_layer: int) -> void:
	assert(next_layer >= 0 and next_layer < LAYER_NAMES.size())
	current_layer = next_layer
	if layer_input != null:
		layer_input.select(next_layer)
	_render_layer()
	if world_data != null and status_label != null:
		status_label.text = "월드 %d×%d  |  시드 %d  |  표시 %s" % [
			int(world_data.width), int(world_data.height), int(world_data.world_seed),
			LAYER_NAMES[current_layer],
		]


func set_river_overlay(enabled: bool) -> void:
	if river_overlay_input != null:
		river_overlay_input.button_pressed = enabled
	_render_layer()


func _change_zoom(direction: int) -> void:
	var index: int = ZOOM_LEVELS.find(zoom_level)
	index = clampi(index + direction, 0, ZOOM_LEVELS.size() - 1)
	zoom_level = ZOOM_LEVELS[index]
	zoom_label.text = "%d×" % zoom_level
	_update_texture_size()


func _update_texture_size() -> void:
	if world_data == null or map_texture == null:
		return
	var desired_size := Vector2(
		float(world_data.width * zoom_level),
		float(world_data.height * zoom_level)
	)
	map_texture.custom_minimum_size = desired_size
	map_texture.size = desired_size


func _render_layer() -> void:
	if world_data == null or map_texture == null:
		return
	map_image = Image.create(int(world_data.width), int(world_data.height), false, Image.FORMAT_RGBA8)
	for y in range(int(world_data.height)):
		for x in range(int(world_data.width)):
			var index: int = int(world_data.index_of(x, y))
			var color: Color = _color_for_cell(index)
			if (
				river_overlay_input.button_pressed
				and current_layer != LAYER_RIVERS
				and int(world_data.river_mask[index]) != 0
			):
				color = Color(0.12, 0.83, 1.0)
			map_image.set_pixel(x, y, color)
	map_texture.texture = ImageTexture.create_from_image(map_image)
	_update_texture_size()
	legend_label.text = _legend_for_layer()


func _color_for_cell(index: int) -> Color:
	var sea: bool = int(world_data.landform[index]) == WorldDataScript.Landform.OCEAN
	var value: float = 0.0
	match current_layer:
		LAYER_BIOME:
			match int(world_data.biome[index]):
				WorldDataScript.Biome.OCEAN: return Color("#25567C")
				WorldDataScript.Biome.TUNDRA: return Color("#AABAB2")
				WorldDataScript.Biome.DESERT: return Color("#D7BB7A")
				WorldDataScript.Biome.GRASSLAND: return Color("#A6BC70")
				WorldDataScript.Biome.TEMPERATE_FOREST: return Color("#457D49")
				WorldDataScript.Biome.RAINFOREST: return Color("#1E634D")
				WorldDataScript.Biome.WETLAND: return Color("#628A80")
				WorldDataScript.Biome.ALPINE: return Color("#D8DED9")
		LAYER_LANDFORM:
			match int(world_data.landform[index]):
				WorldDataScript.Landform.OCEAN: return Color("#25567C")
				WorldDataScript.Landform.PLAINS: return Color("#A5BD80")
				WorldDataScript.Landform.HILLS: return Color("#A89060")
				WorldDataScript.Landform.MOUNTAINS: return Color("#E0DEDA")
		LAYER_ELEVATION:
			value = float(world_data.elevation[index])
			return Color(value, value, value)
		LAYER_TEMPERATURE:
			value = float(world_data.temperature[index])
			return Color("#3779BC").lerp(Color("#DB714A"), value)
		LAYER_RAINFALL:
			value = float(world_data.rainfall[index])
			return Color("#C9B775").lerp(Color("#2465AD"), value)
		LAYER_DRAINAGE:
			value = float(world_data.drainage[index])
			return Color("#416F94").lerp(Color("#B99E62"), value)
		LAYER_MOISTURE:
			value = float(world_data.moisture[index])
			return Color("#C8B67B").lerp(Color("#327C9E"), value)
		LAYER_RIVERS:
			if sea:
				return Color("#25567C")
			if int(world_data.river_mask[index]) != 0:
				return Color("#40CBF4")
			return Color("#596C52")
		LAYER_FLOW:
			if sea:
				return Color("#25567C")
			value = log(1.0 + float(world_data.flow_accumulation[index])) / log(1.0 + max_flow)
			return Color("#312B40").lerp(Color("#64D9FB"), clampf(value, 0.0, 1.0))
		LAYER_BASINS:
			if sea:
				return Color("#25567C")
			if int(world_data.basin_mask[index]) != 0:
				return Color("#E9A44C")
			return Color("#637F60")
	return Color.MAGENTA


func _legend_for_layer() -> String:
	match current_layer:
		LAYER_BIOME: return "사막 · 초원 · 숲 · 습지 · 툰드라 · 고산"
		LAYER_ELEVATION: return "검정 낮음  ↔  흰색 높음"
		LAYER_TEMPERATURE: return "파랑 추움  ↔  주황 따뜻함"
		LAYER_RAINFALL: return "모래색 건조  ↔  파랑 습윤"
		LAYER_DRAINAGE: return "파랑 저배수  ↔  황토색 고배수"
		LAYER_MOISTURE: return "모래색 건조  ↔  파랑 습윤"
		LAYER_LANDFORM: return "바다 · 평지 · 구릉 · 산악"
		LAYER_RIVERS: return "하늘색 하천  |  남색 바다"
		LAYER_FLOW: return "어두움 낮은 누적 유량  ↔  밝음 높은 누적 유량"
		LAYER_BASINS: return "주황 국소 분지 후보 (실제 호수 아님)"
	return ""


func _on_map_gui_input(event: InputEvent) -> void:
	if world_data == null:
		return
	if event is InputEventMouseMotion:
		var position: Vector2 = (event as InputEventMouseMotion).position
		var x: int = int(floorf(position.x / float(zoom_level)))
		var y: int = int(floorf(position.y / float(zoom_level)))
		if x >= 0 and y >= 0 and x < int(world_data.width) and y < int(world_data.height):
			cell_label.text = cell_description(x, y)


func cell_description(x: int, y: int) -> String:
	if world_data == null or x < 0 or y < 0 or x >= int(world_data.width) or y >= int(world_data.height):
		return "범위 밖"
	var index: int = int(world_data.index_of(x, y))
	var biome_id: int = int(world_data.biome[index])
	var landform_id: int = int(world_data.landform[index])
	return "(%d,%d)  %s / %s  |  고도 %.3f  기온 %.3f  강수 %.3f  배수 %.3f  수분 %.3f  유량 %.2f  강 %s  분지 %s" % [
		x, y,
		LANDFORM_NAMES[landform_id], BIOME_NAMES[biome_id],
		float(world_data.elevation[index]), float(world_data.temperature[index]),
		float(world_data.rainfall[index]), float(world_data.drainage[index]),
		float(world_data.moisture[index]), float(world_data.flow_accumulation[index]),
		"예" if int(world_data.river_mask[index]) != 0 else "아니오",
		"후보" if int(world_data.basin_mask[index]) != 0 else "아니오",
	]
