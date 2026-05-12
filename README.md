# Screen 128x64 Toolbox

[<img width="642" height="577" alt="image" src="https://github.com/user-attachments/assets/47bc83f7-bf79-4c16-9252-f3d299aed395" />](https://github.com/EloiStree/2026_04_27_gdp_oled_128x64)
Package: [https://github.com/EloiStree/2026_04_27_gdp_oled_128x64](https://github.com/EloiStree/2026_04_27_gdp_oled_128x64)

[<img width="1920" height="932" alt="image" src="https://github.com/user-attachments/assets/182c8acb-9f7c-41e0-8cdc-e1476129756b" />](https://github.com/EloiStree/2026_04_27_gdp_oled_128x64_art_style_and_menu/issues/18)
[https://github.com/EloiStree/2026_04_27_gdp_oled_128x64_art_style_and_menu/issues/18](https://github.com/EloiStree/2026_04_27_gdp_oled_128x64_art_style_and_menu/issues/18)

> Challenge: Travailler en groupe pour créer une boîte à outils à utiliser durant les 3 semaines de formation.

On peut pratiquer l'exercice tout seul dans notre coin...
Ou on peut tous pratiquer un sujet différent dans notre coin pour un objectif commun.

**Selon votre niveau, ajoutez votre pierre à l’édifice.**

-----------------------------

Comme il n’y a pas de namespace dans Godot, je propose d’annoter les scripts ainsi :

Par ordre de feuille de présence :
- E0: Fait en groupe au tableau
- E1: Bunyamin
- E2: Jean-Charles
- E3: Nicolas
- E4: Florentin
- E5: Gaetan
- E6: Jurgen
- E7: Richard
- E8: Emile
- E9: Daniele
- E10: Laurent
- E11: Cedric
- E12: Thomas
- E13: Eloi

Par exemple :

`e13_screen_builder_print.gd`

```gdscript
class_name E13ScreenBuilderPrint
extends Node

## Ce code prend un texte et une position et l'affiche sur l'écran
static func print_text_6x8_at_lrtd(array:Array[bool], top_left_text_corner:Vector2i, text:String, letter_color:bool, background_color:bool):

## Ce code prend un texte et une position et l'affiche sur l'écran sans arrière-plan
static func print_text_6x8_at_lrtd_without_background(array:Array[bool], top_left_text_corner:Vector2i, text:String, letter_color:bool, background_color:bool):
```

----------

# Idées d’exercices à se partager

*On n’aura jamais le temps et beaucoup sont trop difficiles ou pas utiles à la formation.*
*Réfléchissez à un debug log que vous voudriez voir en VR.*

N’oubliez pas que la suite de l’exercice est de refaire le KS4036 en XR :
* Debug des manettes du Quest ?
* Debug des manettes de la NES ?
* Debug du gamepad ?
* Debug des touches du clavier pressées ?
* Debug des deux Line Renderers ?
* Debug de la vitesse des roues ?
* Debug de sa position et de sa rotation ?
* Debug de la distance de l’obstacle ?
* Debug des couleurs affichées ?
* Debug de l'intensitee de lumiere ?
* Debug de IPV4 du casque ?
* Debug la batterie du Quest ?
* Debug d'un angle entre deux points ?
* Debug des bytes envoyers sur un jeu en reseaux ?
* ...



## Inspiration

* Flipper Zero: [https://github.com/EloiStree/2026_04_27_gdp_oled_128x64_art_style_and_menu/issues/18](https://github.com/EloiStree/2026_04_27_gdp_oled_128x64_art_style_and_menu/issues/18)
* Game Boy Games: [https://www.youtube.com/results?search_query=gameboy+games](https://www.youtube.com/results?search_query=gameboy+games)

## Liste non exhaustive d’outils à faire

* ScreenBuilderSetGet: SetPixelAt, GetPixelAt, TogglePixelAt, SetPixelsAt, GetPixelsAt
* ScreenBuilderBinaryOperation: AND OR NOT NAND NOR XOR NXOR
  * ScreenBuilderBooleanOperation: Append, Remove
* ScreenBuilderDrawLineDirection: Draw Up, Left, Right, Up a line of x pixels from a point
* ScreenBuilderLine: Line From To, Line With Radius From To
* ScreenBuilderBitshift: Left, Right, Up, Down, UpLeft, UpRight, DownLeft, DownRight
* ScreenBuilderFlip: Mirror Vertical, Horizontal
* ScreenBuilderRotateCenter: Allow rotation around center 90° Left/Right (flip horizontal vertical)
* ScreenBuilderRectangle: Rect Fill, Rect Border, Square Fill, Square Border
* ScreenBuilderRoundRectangle: Rect Fill, Rect Border, Square Fill, Square Border
* ScreenBuilderCircle: Circle Fill/Border At, Circle Fill/Border From To
* ScreenBuilderEllipse: Ellipse Fill/Border At, Ellipse Fill/Border From To
* ScreenBuilderImage: Image at LRTD corner, Image at point
* ScreenBuilderTriangle: Triangle Border, Triangle Fill
* ScreenBuilderGrid: FullGrid NxN (1x1, 2x2, 4x4...), Rectangle Grid From To NxN
* ScreenBuilderTextImage: Voir MicroBit Text Image
* ScreenBuilderBlink: Blink Screen (count, speed of blink), Blink Rectangle Border/Fill
* ScreenBuilderPaging: Voir SSD1306 Eight Paging System
* ScreenBuilderShadow: Voir shadow with point
* ScreenBuilderSpectrogram: Voir audio spectrogram
* ScreenBuilderIcoFile: Use an icon to display in game
* ScreenBuilderPieChart: Percent as pie icon
* ScreenBuilderClock: Display some clock icon
* ScreenBuilderKeyValueSixLabels: Display six labeled values
* ScreenBuilderFlipInbetween: [https://youtu.be/sEVpPYD306k?t=139](https://youtu.be/sEVpPYD306k?t=139)

### Save

* ScreenBuilderLabelSaveAndRestore: Allow saving an array with a label name
* ScreenBuilderFrameSaveAndRestore: Allow saving an array with a frame index
* ScreenBuilderDigit8Segment: 88:88
  * ScreenBuilderDigit16Segment
* ScreenBuilderBezierLine: Give points, draw curve
* ScreenBuilderLinePath: Draw line from several points
* ScreenBuilderCurve: Use Godot inspector curves to draw a curve
* ScreenBuilderMorseCode: Display the character and the Morse code to use
* ScreenBuilderScrollBar: A line and a square

## Primitive

* ScreenBuilderInt
* ScreenBuilderFloat
* ScreenBuilderEuler
* ScreenBuilderVector2
* ScreenBuilderVector2i
* ScreenBuilderVector3
* ScreenBuilderVector3i
* ScreenBuilderQuaternion
* ScreenBuilderColor
* ScreenBuilderMatrix4x4
  * ScreenBuilderMatrix3x3
  * ScreenBuilderMatrix2x2

## Animation

* ScreenBuilderTextScroll

## DrawCall

* ScreenBuilderDrawCall: Take several arrays and print one after another

  * Example: [https://youtu.be/MVqfQ7WK6Gk?t=348](https://youtu.be/MVqfQ7WK6Gk?t=348)

## Aviation

* ScreenBuilderCompass: An arrow pointing in an angle direction
* ScreenBuilderTime: Current time
* ScreenBuilderDate: Current day of the year
* ScreenBuilderMeteo: Weather of the day

## Game

* ScreenBuilderTetrisShape: Permettre de dessiner des formes Tetris
* ScreenBuilderSnakeShape: Faire un outil pour dessiner un snake
* ScreenBuilderTypingGame: Afficher une lettre à taper et changer une fois validée

## Hard

* ScreenBuilderGif: Utiliser le path d’un GIF
* ScreenBuilderSpriteGrid: Utiliser une sprite grid pour afficher une image
* ScreenBuilderCameraRendering: Utiliser la caméra Godot avec un threshold
* ScreenBuilderQrCode: Dessiner un QR Code
* ScreenBuilderSvg: Utiliser un SVG pour dessiner sur l’écran
* ScreenBuilderCanvasLayout: Use Godot Canvas to draw screen
* ScreenBuilderTextFromFont: Use a font file to draw text
* ScreenBuilderMaterialThreshold: Use artist material to draw from threshold
* ScreenBuilderFromToBitmap: Use 0x00 bitmap

## Movement Detection

* [https://www.shadertoy.com/view/lXj3Wc](https://www.shadertoy.com/view/lXj3Wc)

## Sobel Detection

* [https://www.shadertoy.com/results?query=Sobel](https://www.shadertoy.com/results?query=Sobel)

## Game Of Life

* [https://www.shadertoy.com/results?query=game+of+life](https://www.shadertoy.com/results?query=game+of+life)

## Green Cross in Europe

* ScreenBuilderGreenCross:

  * [https://www.youtube.com/watch?v=ghh-28ln-z4&t=19s](https://www.youtube.com/watch?v=ghh-28ln-z4&t=19s)
  * [https://www.youtube.com/shorts/6jEFpLNLrYo?t=4&feature=share](https://www.youtube.com/shorts/6jEFpLNLrYo?t=4&feature=share)

---

## Un jeu facile pour s’entraîner

<img width="800" height="600" alt="image" src="https://github.com/user-attachments/assets/242412d5-308b-4ec2-bdca-f91a6a7b4714" />

```gdscript
@export var screen: FacadeLite
@export var cursor: Vector2i

func move_left()
func move_up()
func move_right()
func move_down()
```
