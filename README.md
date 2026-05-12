# Screen 128x64 Toolbox

[<img width="642" height="577" alt="image" src="https://github.com/user-attachments/assets/47bc83f7-bf79-4c16-9252-f3d299aed395" />](https://github.com/EloiStree/2026_04_27_gdp_oled_128x64)     
Package: https://github.com/EloiStree/2026_04_27_gdp_oled_128x64      

> Challenge: Travailler en groupe pour se faire une boite a outils a utiliser durant les 3 semaines de formation.


On peut pratiquer l'execice tout seul dans notre coin...
Ou on peut pratiquer tous un sujet different dans notre coin pour un goal commun.

Selon votre niveau ajouter votre pierre a l edifice.

Comme il n y a pas de namespace en Godot, je propose d annoter les script ainsi

Par odre de feuille de presence:
E0: Fait en groupe au tableau
E1: Bunyamin
E2: Jean-Charles
E3: Nicolas
E4: Florentin
E5: Gaetan
E6: Jurgen
E7: Richard
E8: Emile
E9: Daniele
E10: Laurent
E11: Cedric
E12: Thomas
E13: Eloi

Par example:


e13_screen_builder_print.gd
```gdscript
class_name E13ScreenBuilderPrint
extends Node

## Ce code prendre un text et une position et l afficher sur l ecran
static func print_text_6x8_at_lrtd(array:Array[bool], top_left_text_corner:Vector2i, text:String, letter_color:bool, background_color:bool):

## Ce code prendre un text et une position et l afficher sur l ecran sans un background
static func print_text_6x8_at_lrtd_without_background(array:Array[bool], top_left_text_corner:Vector2i, text:String, letter_color:bool, background_color:bool):



```

Inspiration:
- Flipper Zero: https://github.com/EloiStree/2026_04_27_gdp_oled_128x64_art_style_and_menu/issues/18
- Gameboy Games: https://www.youtube.com/results?search_query=gameboy+games

List non exhaustive de tool a faire:
- ScreenBuilderSetGet: SetPixelAt , GetPixelAt, TogglePixelAt, SetPixelsAt, GetPixelsAt
- ScreenBuilderBinaryOperation: AND OR NOT NAND NOR XOR NXOR
  - ScreenBuilderBooleanOperation: Append, Remove,  
- ScreenBuilderDrawLineDirection: Draw Up Left Righ Up a line of x pixels from a point   
- ScreenBuilderLine: Line From To, Line With Radius From To
- ScreenBuilderBitshift: Left,Right, Up, Down, UpLeft, Up Right , DownLeft, DownRight
- ScreenBuilderFlip: Mirror Vertical, Horizontal
- ScreenBuilderRotateCenter: Allow to rotate Center 90 Left/Right (flip horizontal vertical0 
- ScreenbuilderRectangle: Rect Fill, Rect Border, Square Fill, Square Border 
- ScreenbuilderRoundRectangle: Rect Fill, Rect Border, Square Fill, Square Border
- ScreenBuilderCircle: Circle Fill/Border At , Circle Fill/Border From To
- ScreenBuilderEllipse: Ellipse Fill/Border At , Ellipse Fill/Border From To
- ScreenBuilderImage: Image at lrtd corner , Image at point
- ScreenBuilderTriangle: Triangle Border, Triangle Fill
- ScreenBuilderGrid: FullGrid nxn (1x1,2x2,4x4...), Rectangle Grid From To NxN
- ScreenGuilderTextImage: Voir MicroBit Text Image
- ScreenBuilderBlink: Blink Screen (count, Speed of blick) , Blink Rectangle Border/Fill
- ScreenBuilderPaging: Voir SSD1306 Eight Paging system
- ScreenBuilderShadow: Voir Shadow with point
- ScreenBuilderSpectrogram: Voir Audio Spectre
- ScreenBuilderIcoFile: Use an Icon to diplay in game
- ScreenBuilderPieChart: Percent as pie icon
- ScreenBuilderClock: Display some clock icon
- ScreenBuilderSaveAndRestore: Allow to save an array with a label name
- ScreenBuilderKeyValueSixLabels: Display Six labeled value

Aviation:
- ScreenBuilderCompass: An arrow pointing in a angle direction
- ScreenBuilderTime: Current Time
- ScreenBuilderDate: Current day of the year
- ScreenBuilderMeteo: Meteo du jour

Game:
- ScreenBuilderTetrisShape:
- ScreenBuilderSnakeShape:

Hard:
- ScreenBuilderGif: Utilise le path d un gif
- ScreenBuilderSpriteGrid: Utiliser un sprite grid pour afficher une image
- ScreenbuilderCameraRendering: Utiliser la camera Godot avec un Threshold
- ScreenbuilderQrCode: Dessinez un QR Code
- ScreenBuilderSvg: Utiliser un svg pour dessiner sur l ecran
- ScreenBuilderCanvasLayout: Use Godot Canvas to draw screen
- ScreenBuilderTextFromFont: Use a font file to draw text.


- Movement Detection:
  - https://www.shadertoy.com/view/lXj3Wc
- Sobel Detection:
  - https://www.shadertoy.com/results?query=Sobel   






