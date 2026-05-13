class_name E5ScreenBuilderHelloWorld

extends Node

@export var screen:SSD1306NodeFacadeLite

var array : Array[bool]

func _ready() -> void:
	array.resize(128*64)
	var position_start : Vector2i=Vector2i(20,20)
	
	E13ScreenBuilderPrint6x8.print_text_6x8_at_lrtd(array,position_start,"Hello World", true,true)
	screen.set_value_with_1d_array_and_draw(array)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
