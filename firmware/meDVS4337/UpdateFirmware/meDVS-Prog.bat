
set COM=6

::set FILENAME=iniLabs-meDVS-Rev1.0.hex
set FILENAME=NST-meDVS-rev06.hex

mode com%COM%: rts=off octs=off dtr=off baud=115200 parity=e data=8 stop=1 > NUL

STMFlashLoader\STMFlashLoader.exe -c --pn %COM% --br 115200 -i STM32F7_4x_5x_1024K -e --all -d --fn %FILENAME% --v -r --a 0x8000000
