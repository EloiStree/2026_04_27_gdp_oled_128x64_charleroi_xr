class_name E5ScreenBuilderHelloWorld

extends Node

@export var screen:SSD1306NodeFacadeLite
@export var point: Node3D
var array : Array[bool]

func _ready() -> void:
	array.resize(128*64)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var position_start_main : Vector2i=Vector2i(10,6)
	var position_start_x : Vector2i=Vector2i(20,20)
	var position_start_y : Vector2i=Vector2i(20,34)
	var position_start_z : Vector2i=Vector2i(20,48)
	var euler_x :float = snapped(rad_to_deg(point.basis.get_euler().x),0.000001)
	var euler_y :float = snapped(rad_to_deg(point.basis.get_euler().y),0.000001)
	var euler_z :float = snapped(rad_to_deg(point.basis.get_euler().z),0.000001)
	
	E13ScreenBuilderPrint6x8.print_text_6x8_at_lrtd(array,position_start_main,"EULEUR IN DEGREES", true,true)
	screen.set_value_with_1d_array_and_draw(array)
	E13ScreenBuilderPrint6x8.print_text_6x8_at_lrtd(array,position_start_x,"X : " + str(euler_x), true,true)
	screen.set_value_with_1d_array_and_draw(array)
	E13ScreenBuilderPrint6x8.print_text_6x8_at_lrtd(array,position_start_y,"Y : " + str(euler_y), true,true)
	screen.set_value_with_1d_array_and_draw(array)
	E13ScreenBuilderPrint6x8.print_text_6x8_at_lrtd(array,position_start_z,"Z : " + str(euler_z), true,true)
	screen.set_value_with_1d_array_and_draw(array)
