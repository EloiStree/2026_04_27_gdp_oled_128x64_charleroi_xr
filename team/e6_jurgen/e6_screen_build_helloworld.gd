class_name E06ScreenBuilderHelloWorld
extends Node

@export var screen: SSD1306NodeFacadeLite
var array : Array[bool]

func _ready() -> void:
	array.resize(128*64)
	var position:Vector2i = Vector2i(10,10)
	E13ScreenBuilderPrint6x8.print_text_6x8_at_lrtd(array,position,"Hello World",true,true)
	screen.set_value_with_1d_array_and_draw(array)
	
