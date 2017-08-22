
**************************************************************************************************************
  First steps
**************************************************************************************************************
  -) open jAER (sourceforge), select eDVS as device, select COM port, select 12mbps (12.000.000 baud)
  -) enjoy output


**************************************************************************************************************
  Direct user connection
**************************************************************************************************************
  -) run teraterm, select COM port, select 12mbps (8N1), connect
  -) press <return> (to clear possibly left over characters form previous connections)
  -) enter ??<return> to display help menu
  -) enter e+<return> to enable data streaming in human-readable (ASCII) data format
  -) enter e-<return> to stop data streaming
  -) enter r<return> to reset sensor
  -) enjoy

--- same interface (UART ASCII command based protocol) can get used to connect microcontroller/miniPC to DVS



**************************************************************************************************************
  Updating Firmware
**************************************************************************************************************
  -) copy new firmware file into folder "UpdateFirmware"
  -) edit "meDVS-Prog.bat" to point to COM port and to new firmware file (lines #2 and #3), save and close file
  -) run teraterm, select COM port, select 12mbps (8N1), connect
  -) press <return> (to clear possibly left over characters form previous connections)
  -) enter r<return> to reset sensor, wait for reset to finish (1 sec is plenty enough)
  -) enter pRog<return> to enter programming mode (note the capital "R")
  -) disconnect, close teraterm (do NOT press additional keys after enter)
  -) launch batch-script "meDVS-Prog.bat"
  -) firmware reprogramming starts, needs about 30 seconds including verification
  -) enjoy new firmware
--- if anything went wrong, powercycle the sensor (disconnect, wait 10sec, re-connect); start from beginning
