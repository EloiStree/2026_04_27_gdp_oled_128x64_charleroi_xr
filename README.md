

None git project   
```
git clone https://github.com/EloiStree/2026_04_27_gdp_oled_128x64_charleroi_xr.git addons/2026_04_27_gdp_oled_128x64_charleroi_xr
git clone https://github.com/EloiStree/2026_04_27_gdp_oled_128x64.git addons/2026_04_27_gdp_oled_128x64
```

As git submodules.  
```
git submodule add https://github.com/EloiStree/2026_04_27_gdp_oled_128x64_charleroi_xr.git addons/2026_04_27_gdp_oled_128x64_charleroi_xr
git submodule add https://github.com/EloiStree/2026_04_27_gdp_oled_128x64.git addons/2026_04_27_gdp_oled_128x64
```


<img width="1152" height="719" alt="image" src="https://github.com/user-attachments/assets/e992ae8d-e0aa-4dc5-8eb2-05a6eb3abcc8" />
``` gdscript
extends Node

func append_layer(array:Array[bool]):
	for i in range(8192):
		array[i]= i%7==0
	for i in range(128*5):
		array[i]=true
	for i in range(128*10,128*12):
		array[i]=true
	
	E13ScreenBuilderPrint6x8.print_text_6x8_at_lrtd(array,Vector2i(0,2), " Hello   World                         ",true,true)
```
