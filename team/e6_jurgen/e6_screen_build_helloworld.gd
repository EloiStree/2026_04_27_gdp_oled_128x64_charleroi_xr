class_name E06ScreenBuilderCheckerboard
extends Node

@export var screen: SSD1306NodeFacadeLite

var taille_damier: int = 5
const LONGUEUR_ECRAN = 128
const SCREEN_WIDE = 64
var array : Array[bool]

func _ready() -> void:
	array.resize(LONGUEUR_ECRAN * SCREEN_WIDE)
	array.fill(false)
	draw_grid(array, taille_damier)
	screen.set_value_with_1d_array_and_draw(array)
static func draw_grid(array:Array[bool],taille_damier:int):
	for y in range(SCREEN_WIDE):
		for x in range(LONGUEUR_ECRAN):
			var tile_x = x / taille_damier
			var tile_y = y / taille_damier
			
			if (tile_x + tile_y) % 2 == 0:
				array[y * LONGUEUR_ECRAN + x] = true
