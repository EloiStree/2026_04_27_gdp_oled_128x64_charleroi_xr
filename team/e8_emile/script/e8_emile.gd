class_name E8ScreenBuilderHelloWorld
extends Node3D

@export var screen:SSD1306NodeFacadeLite


var array : Array[bool]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	array.resize(128*64)
	var position: Vector2i = Vector2i(10,10)
	E13ScreenBuilderPrint6x8.print_text_6x8_at_lrtd(array, position, "Hello World", true, true)
	
	screen.set_value_with_1d_array_and_draw(array)
	await get_tree().create_timer(0.01).timeout

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
