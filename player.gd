extends CharacterBody2D

@export var speed: float = 200.0
@export var center_on_ready: bool = true

var nearby_interactables: Array[Area2D] = []

func _ready() -> void:
	if center_on_ready:
		position = get_viewport_rect().size / 2.0

func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		"move_down"
	)

	velocity = direction * speed
	move_and_slide()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		var target := _get_interaction_target()
		if target != null:
			target.call("interact")

func _on_interaction_detector_area_entered(area: Area2D) -> void:
	if area.has_method("interact") and not nearby_interactables.has(area):
		nearby_interactables.append(area)

func _on_interaction_detector_area_exited(area: Area2D) -> void:
	nearby_interactables.erase(area)

func _get_interaction_target() -> Area2D:
	if nearby_interactables.is_empty():
		return null

	var closest := nearby_interactables[0]
	var closest_distance := global_position.distance_squared_to(closest.global_position)

	for interactable in nearby_interactables:
		var distance := global_position.distance_squared_to(interactable.global_position)
		if distance < closest_distance:
			closest = interactable
			closest_distance = distance

	return closest
