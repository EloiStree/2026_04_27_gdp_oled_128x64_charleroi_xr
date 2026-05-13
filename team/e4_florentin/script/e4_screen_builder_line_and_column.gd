class_name E4ScreenBuilderLineAndColumn

extends Node

static func draw_line(array:Array[bool],line_number:int):
	if line_number<0 or line_number>=64:
		return
	for x in range(128):
		array[line_number*128+x]=true
	
static func draw_column(array:Array[bool],column_number:int):
	if column_number<0 or column_number>=128:
		return
	for y in range(64):
		array[y*128+column_number]=true
