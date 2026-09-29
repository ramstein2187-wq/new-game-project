class_name DamageDice
extends Resource

@export var dice_count := 1
@export var dice_size := 4


static func create(count: int, size: int) -> DamageDice:
	var dice := DamageDice.new()
	dice.dice_count = count
	dice.dice_size = size
	return dice


func is_valid() -> bool:
	return dice_count > 0 and dice_size > 0


func roll(rng: RandomNumberGenerator) -> Array[int]:
	var rolls: Array[int] = []
	if rng == null or not is_valid():
		return rolls
	for index in range(dice_count):
		rolls.append(rng.randi_range(1, dice_size))
	return rolls


func notation() -> String:
	return "%dd%d" % [dice_count, dice_size]
