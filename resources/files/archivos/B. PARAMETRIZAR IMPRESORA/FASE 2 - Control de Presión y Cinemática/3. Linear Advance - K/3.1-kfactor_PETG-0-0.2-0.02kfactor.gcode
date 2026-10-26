; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Genius JP
; Filament: PETG
; Created: Sun Jan 18 2026 22:14:40 GMT+0100 (hora estándar de Europa central)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 250 °C
; Bed Temperature = 80 °C
; Retraction Distance = 1 mm
; Layer Height = 0.2 mm
; Extruder = 0
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 220 mm
; Bed Size Y = 220 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1200 mm/min
; Fast Printing Speed = 4200 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 1800 mm/min
; Unretract Speed = 1800 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 0.2
; Factor Stepping = 0.02
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 75 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = G29 ; Level bed
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
G28 ; Home all axes
G34 ; Align Z
T0 ; Switch to tool 0
G1 Z10 F100 ; Z raise
M104 S250 ; Set nozzle temperature (no wait)
M190 S80 ; Set bed temperature (wait)
M109 S250 ; Wait for nozzle temp
G29 ; Level bed; Activate bed leveling compensation
M204 P500 ; Acceleration




G92 E0 ; Reset extruder distance
M106 P0 S0

G1 X110 Y110 F7200 ; move to start

G1 Z0.2 F1200 ; Move to layer height
;
; prime nozzle
;
G1 X61 Y72.5 F7200 ; move to start
G1 X61 Y147.5 E7.4835 F1800 ; print line
G1 X61.72 Y147.5 F7200 ; move to start
G1 X61.72 Y72.5 E7.4835 F1800 ; print line
G1 E-1 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X71 Y72.5 F7200 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y72.5 E0.7982 F1200 ; print line
G1 X131 Y72.5 E1.5965 F4200 ; print line
G1 X151 Y72.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y77.5 F7200 ; move to start
M900 K0.02 ; set K-factor
M117 K0.02 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y77.5 E0.7982 F1200 ; print line
G1 X131 Y77.5 E1.5965 F4200 ; print line
G1 X151 Y77.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y82.5 F7200 ; move to start
M900 K0.04 ; set K-factor
M117 K0.04 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y82.5 E0.7982 F1200 ; print line
G1 X131 Y82.5 E1.5965 F4200 ; print line
G1 X151 Y82.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y87.5 F7200 ; move to start
M900 K0.06 ; set K-factor
M117 K0.06 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y87.5 E0.7982 F1200 ; print line
G1 X131 Y87.5 E1.5965 F4200 ; print line
G1 X151 Y87.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y92.5 F7200 ; move to start
M900 K0.08 ; set K-factor
M117 K0.08 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y92.5 E0.7982 F1200 ; print line
G1 X131 Y92.5 E1.5965 F4200 ; print line
G1 X151 Y92.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y97.5 F7200 ; move to start
M900 K0.1 ; set K-factor
M117 K0.1 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y97.5 E0.7982 F1200 ; print line
G1 X131 Y97.5 E1.5965 F4200 ; print line
G1 X151 Y97.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y102.5 F7200 ; move to start
M900 K0.12 ; set K-factor
M117 K0.12 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y102.5 E0.7982 F1200 ; print line
G1 X131 Y102.5 E1.5965 F4200 ; print line
G1 X151 Y102.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y107.5 F7200 ; move to start
M900 K0.14 ; set K-factor
M117 K0.14 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y107.5 E0.7982 F1200 ; print line
G1 X131 Y107.5 E1.5965 F4200 ; print line
G1 X151 Y107.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y112.5 F7200 ; move to start
M900 K0.16 ; set K-factor
M117 K0.16 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y112.5 E0.7982 F1200 ; print line
G1 X131 Y112.5 E1.5965 F4200 ; print line
G1 X151 Y112.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y117.5 F7200 ; move to start
M900 K0.18 ; set K-factor
M117 K0.18 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y117.5 E0.7982 F1200 ; print line
G1 X131 Y117.5 E1.5965 F4200 ; print line
G1 X151 Y117.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y122.5 F7200 ; move to start
M900 K0.2 ; set K-factor
M117 K0.2 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y122.5 E0.7982 F1200 ; print line
G1 X131 Y122.5 E1.5965 F4200 ; print line
G1 X151 Y122.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y127.5 F7200 ; move to start
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X91 Y127.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X91 Y147.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X131 Y127.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X131 Y147.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X153 Y70.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X155 Y70.5 E0.0798 F1200 ; 0
G1 X155 Y72.5 E0.0798 F1200 ; 0
G1 X155 Y74.5 E0.0798 F1200 ; 0
G1 X153 Y74.5 E0.0798 F1200 ; 0
G1 X153 Y72.5 E0.0798 F1200 ; 0
G1 X153 Y70.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y80.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X155 Y80.5 E0.0798 F1200 ; 0
G1 X155 Y82.5 E0.0798 F1200 ; 0
G1 X155 Y84.5 E0.0798 F1200 ; 0
G1 X153 Y84.5 E0.0798 F1200 ; 0
G1 X153 Y82.5 E0.0798 F1200 ; 0
G1 X153 Y80.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X156 Y80.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X156 Y80.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X157 Y80.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X159 Y80.5 E0.0798 F1200 ; 0
G1 X159 Y82.5 E0.0798 F1200 ; 0
G1 X159 Y84.5 E0.0798 F1200 ; 0
G1 X157 Y84.5 E0.0798 F1200 ; 0
G1 X157 Y82.5 E0.0798 F1200 ; 0
G1 X157 Y80.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X160 Y80.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X160 Y82.5 F7200 ; move to start
G1 X160 Y84.5 F7200 ; move to start
G1 X160 Y82.5 E0.0798 F1200 ; 4
G1 X162 Y82.5 E0.0798 F1200 ; 4
G1 X162 Y84.5 F7200 ; move to start
G1 X162 Y82.5 E0.0798 F1200 ; 4
G1 X162 Y80.5 E0.0798 F1200 ; 4
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y90.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X155 Y90.5 E0.0798 F1200 ; 0
G1 X155 Y92.5 E0.0798 F1200 ; 0
G1 X155 Y94.5 E0.0798 F1200 ; 0
G1 X153 Y94.5 E0.0798 F1200 ; 0
G1 X153 Y92.5 E0.0798 F1200 ; 0
G1 X153 Y90.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X156 Y90.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X156 Y90.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X157 Y90.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X159 Y90.5 E0.0798 F1200 ; 0
G1 X159 Y92.5 E0.0798 F1200 ; 0
G1 X159 Y94.5 E0.0798 F1200 ; 0
G1 X157 Y94.5 E0.0798 F1200 ; 0
G1 X157 Y92.5 E0.0798 F1200 ; 0
G1 X157 Y90.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X160 Y90.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X160 Y92.5 F7200 ; move to start
G1 X162 Y92.5 E0.0798 F1200 ; 8
G1 X162 Y90.5 E0.0798 F1200 ; 8
G1 X160 Y90.5 E0.0798 F1200 ; 8
G1 X160 Y92.5 E0.0798 F1200 ; 8
G1 X160 Y94.5 E0.0798 F1200 ; 8
G1 X162 Y94.5 E0.0798 F1200 ; 8
G1 X162 Y92.5 E0.0798 F1200 ; 8
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y100.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X155 Y100.5 E0.0798 F1200 ; 0
G1 X155 Y102.5 E0.0798 F1200 ; 0
G1 X155 Y104.5 E0.0798 F1200 ; 0
G1 X153 Y104.5 E0.0798 F1200 ; 0
G1 X153 Y102.5 E0.0798 F1200 ; 0
G1 X153 Y100.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X156 Y100.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X156 Y100.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X157 Y100.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X157 Y102.5 E0.0798 F1200 ; 1
G1 X157 Y104.5 E0.0798 F1200 ; 1
G1 E-1 F1800 ; retract
G1 X158 Y100.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X158 Y102.5 F7200 ; move to start
G1 X158 Y104.5 F7200 ; move to start
G1 X160 Y104.5 E0.0798 F1200 ; 2
G1 X160 Y102.5 E0.0798 F1200 ; 2
G1 X158 Y102.5 E0.0798 F1200 ; 2
G1 X158 Y100.5 E0.0798 F1200 ; 2
G1 X160 Y100.5 E0.0798 F1200 ; 2
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y110.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X155 Y110.5 E0.0798 F1200 ; 0
G1 X155 Y112.5 E0.0798 F1200 ; 0
G1 X155 Y114.5 E0.0798 F1200 ; 0
G1 X153 Y114.5 E0.0798 F1200 ; 0
G1 X153 Y112.5 E0.0798 F1200 ; 0
G1 X153 Y110.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X156 Y110.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X156 Y110.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X157 Y110.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X157 Y112.5 E0.0798 F1200 ; 1
G1 X157 Y114.5 E0.0798 F1200 ; 1
G1 E-1 F1800 ; retract
G1 X158 Y110.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X158 Y112.5 F7200 ; move to start
G1 X160 Y112.5 E0.0798 F1200 ; 6
G1 X160 Y110.5 E0.0798 F1200 ; 6
G1 X158 Y110.5 E0.0798 F1200 ; 6
G1 X158 Y112.5 E0.0798 F1200 ; 6
G1 X158 Y114.5 E0.0798 F1200 ; 6
G1 X160 Y114.5 E0.0798 F1200 ; 6
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y120.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X155 Y120.5 E0.0798 F1200 ; 0
G1 X155 Y122.5 E0.0798 F1200 ; 0
G1 X155 Y124.5 E0.0798 F1200 ; 0
G1 X153 Y124.5 E0.0798 F1200 ; 0
G1 X153 Y122.5 E0.0798 F1200 ; 0
G1 X153 Y120.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X156 Y120.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X156 Y120.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X157 Y120.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X157 Y122.5 F7200 ; move to start
G1 X157 Y124.5 F7200 ; move to start
G1 X159 Y124.5 E0.0798 F1200 ; 2
G1 X159 Y122.5 E0.0798 F1200 ; 2
G1 X157 Y122.5 E0.0798 F1200 ; 2
G1 X157 Y120.5 E0.0798 F1200 ; 2
G1 X159 Y120.5 E0.0798 F1200 ; 2
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X220 Y220 F7200 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;