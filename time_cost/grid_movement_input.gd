extends RefCounted

# Keep both combat scenes on the same eight-direction keyboard mapping.
# Numpad works with Num Lock on; Home/PgUp/End/PgDown also cover Num Lock off.
static func direction(event: InputEventKey) -> Vector2i:
	match event.keycode:
		KEY_KP_7, KEY_HOME: return Vector2i(-1, -1)
		KEY_KP_9, KEY_PAGEUP: return Vector2i(1, -1)
		KEY_KP_1, KEY_END: return Vector2i(-1, 1)
		KEY_KP_3, KEY_PAGEDOWN: return Vector2i(1, 1)
	if event.is_action_pressed("move_left"):
		return Vector2i.LEFT
	if event.is_action_pressed("move_right"):
		return Vector2i.RIGHT
	if event.is_action_pressed("move_up"):
		return Vector2i.UP
	if event.is_action_pressed("move_down"):
		return Vector2i.DOWN
	return Vector2i.ZERO
