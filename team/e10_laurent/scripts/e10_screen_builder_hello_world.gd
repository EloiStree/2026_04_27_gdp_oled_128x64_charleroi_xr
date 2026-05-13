class_name E10ScreenBuilderHelloWorld
extends Node

@export var screen: SSD1306NodeFacadeLite

var array : Array[bool]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	array.resize(128 * 64)
	#await get_tree().create_timer(1).timeout
	var position: Vector2i = Vector2i(20, 20)
	E13ScreenBuilderPrint6x8.print_text_6x8_at_lrtd(array, position, "Hello World", true, true)
	
	screen.set_value_with_1d_array_and_draw(array)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
