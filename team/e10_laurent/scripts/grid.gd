extends Node

@export var screen:SSD1306NodeFacadeLite
@export var array:Array[bool]

func _ready() -> void:
	array.resize(128 * 64)
	
	for i in range(128):
		array[i] = true
		screen.set_value_with_1d_array_and_draw(array)
		await get_tree().create_timer(0.01).timeout

	for i in range(64):
		array[i] = true
		screen.set_value_with_1d_array_and_draw(array)
		await get_tree().create_timer(0.01).timeout
