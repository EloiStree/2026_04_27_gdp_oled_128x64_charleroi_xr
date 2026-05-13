class_name E11ScreenBuilderCardinalLine
extends Node

@export var screen:SSD1306NodeFacadeLite
@export var array:Array[bool]

@export var le_point = Vector2(64,32)
@export var lenght = 20

@export var Right : bool = true
@export var Left : bool = true

func draw():
	screen.set_value_with_1d_array_and_draw(array)

func _ready() -> void:
	# Préparation de la taille du tableau : 128 colonnes * 64 lignes = 8192 emplacements
	array.resize(128*64)
	draw()
	
func _process(delta: float) -> void:
	if Right == true:
		E11ScreenBuilderCardinalLine.draw_line_right(array, le_point, lenght)
		
	if Left == true:
		E11ScreenBuilderCardinalLine.draw_line_left(array, le_point, lenght)
	draw()
	
static func parse_1d_to_2d(index:int)->Vector2i:
	var v2 :Vector2i= Vector2i()
	v2.x = index%128
	v2.y = index/128
	return v2
	
## dessine une ligne du point vers la droite s'arrete au bord
static func draw_line_right(array:Array[bool],point:Vector2i,pixel_count:int):
	for i in range(pixel_count):
		var index_1d :int = point.y*128+point.x+i
		if index_1d<0:
			return 
		if index_1d>=128*64:
			return 
		var xy = parse_1d_to_2d(index_1d)
		if xy.x >= 127:
			print(xy.x)
			array[index_1d]=true
			return
		print(xy)
		array[index_1d]=true
		
static func draw_line_left(array:Array[bool],point:Vector2i,pixel_count:int):
	for i in range(pixel_count):
		var index_1d :int = point.y*128-pixel_count+point.x+i
		if index_1d<0:
			return 
		if index_1d>=128*64:
			return 
		var xy = parse_1d_to_2d(index_1d)
		if xy.x <= 0:
			print(xy.x)
			array[index_1d]=true
			return
		print(xy)
		array[index_1d]=true
