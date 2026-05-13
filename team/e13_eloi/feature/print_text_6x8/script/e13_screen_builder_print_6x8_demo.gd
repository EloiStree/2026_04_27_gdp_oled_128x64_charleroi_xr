extends Node

@export var use_at_ready: bool = true
@export var screen:SSD1306NodeFacadeLite
@export_multiline() var text_to_print:String = "Objectifs :\n- Afficher du texte\n- Utiliser print_text_6x8\n- Utiliser sans background\n- Tester les positions\n- Valider l'affichage\n- Optimiser le code"
@export var offset_x_left_right: int = 1
@export var offset_y_top_down: int = 1
@export var value_text_color: bool = true
@export var use_background: bool = false
@export var dot_random_on_percentage: float = 0.1

var array:Array[bool] = []

func _ready():
	if use_at_ready:
		array.resize(8192) # 128*64
		await get_tree().create_timer(0.1).timeout
		array.fill(false)
		for i in range(8192):
			array[i] = randf() < dot_random_on_percentage
		E13ScreenBuilderPrint6x8.print_text_6x8_at_lrtd(array, Vector2i(offset_x_left_right, offset_y_top_down), text_to_print, value_text_color,use_background)
		screen.set_value_with_1d_array_and_draw(array)
