class_name E4ScreenBuilderHelloWorld
extends Node

@export var screen:SSD1306NodeFacadeLite
@export var array:Array[bool]
@export var col:int = 0
@export var line:int = 0


func _ready() -> void:
	array.resize(128*64)
	
func _process(delta:float):
	E4ScreenBuilderLineAndColumn.draw_column(array, col)
	E4ScreenBuilderLineAndColumn.draw_line(array, line)
	screen.set_value_with_1d_array_and_draw(array)
