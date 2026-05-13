class_name E3ScreenBuilderHelloWorld
extends Node

@export var screen : SSD1306NodeFacadeLite

var array_bool : Array[bool]

func _ready() -> void:
	array_bool.resize(128*64)
	array_bool.fill(false)
	E13ScreenBuilderPrint6x8.print_text_6x8_at_lrtd(array_bool,Vector2i(10,10),"Nicolas",true,true)
	screen.set_value_with_1d_array_and_draw(array_bool)
