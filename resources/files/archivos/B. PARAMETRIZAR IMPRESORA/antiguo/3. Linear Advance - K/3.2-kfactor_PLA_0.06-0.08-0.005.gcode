; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Genius JP
; Filament: PLA
; Created: Fri Jan 16 2026 02:14:07 GMT+0100 (hora estándar de Europa central)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 205 °C
; Bed Temperature = 60 °C
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
; Starting Value Factor = 0.04
; Ending Value Factor = 0.08
; Factor Stepping = 0.005
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = false
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 65 mm
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
M104 S205 ; Set nozzle temperature (no wait)
M190 S60 ; Set bed temperature (wait)
M109 S205 ; Wait for nozzle temp
G29 ; Level bed; Activate bed leveling compensation
M204 P500 ; Acceleration




G92 E0 ; Reset extruder distance
M106 P0 S0

G1 X110 Y110 F7200 ; move to start

G1 Z0.2 F1200 ; Move to layer height
;
; prime nozzle
;
G1 X61 Y77.5 F7200 ; move to start
G1 X61 Y142.5 E6.4857 F1800 ; print line
G1 X61.72 Y142.5 F7200 ; move to start
G1 X61.72 Y77.5 E6.4857 F1800 ; print line
G1 E-1 F1800 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X71 Y77.5 F7200 ; move to start
M900 K0.04 ; set K-factor
M117 K0.04 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y77.5 E0.7982 F1200 ; print line
G1 X131 Y77.5 E1.5965 F4200 ; print line
G1 X151 Y77.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y82.5 F7200 ; move to start
M900 K0.045 ; set K-factor
M117 K0.045 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y82.5 E0.7982 F1200 ; print line
G1 X131 Y82.5 E1.5965 F4200 ; print line
G1 X151 Y82.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y87.5 F7200 ; move to start
M900 K0.05 ; set K-factor
M117 K0.05 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y87.5 E0.7982 F1200 ; print line
G1 X131 Y87.5 E1.5965 F4200 ; print line
G1 X151 Y87.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y92.5 F7200 ; move to start
M900 K0.055 ; set K-factor
M117 K0.055 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y92.5 E0.7982 F1200 ; print line
G1 X131 Y92.5 E1.5965 F4200 ; print line
G1 X151 Y92.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y97.5 F7200 ; move to start
M900 K0.06 ; set K-factor
M117 K0.06 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y97.5 E0.7982 F1200 ; print line
G1 X131 Y97.5 E1.5965 F4200 ; print line
G1 X151 Y97.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y102.5 F7200 ; move to start
M900 K0.065 ; set K-factor
M117 K0.065 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y102.5 E0.7982 F1200 ; print line
G1 X131 Y102.5 E1.5965 F4200 ; print line
G1 X151 Y102.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y107.5 F7200 ; move to start
M900 K0.07 ; set K-factor
M117 K0.07 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y107.5 E0.7982 F1200 ; print line
G1 X131 Y107.5 E1.5965 F4200 ; print line
G1 X151 Y107.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y112.5 F7200 ; move to start
M900 K0.075 ; set K-factor
M117 K0.075 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y112.5 E0.7982 F1200 ; print line
G1 X131 Y112.5 E1.5965 F4200 ; print line
G1 X151 Y112.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X71 Y117.5 F7200 ; move to start
M900 K0.08 ; set K-factor
M117 K0.08 ; 
G1 E1 F1800 ; un-retract
G1 X91 Y117.5 E0.7982 F1200 ; print line
G1 X131 Y117.5 E1.5965 F4200 ; print line
G1 X151 Y117.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X91 Y122.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X91 Y142.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 X131 Y122.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X131 Y142.5 E0.7982 F1200 ; print line
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
;
; print K-values
;
G1 X153 Y75.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X155 Y75.5 E0.0798 F1200 ; 0
G1 X155 Y77.5 E0.0798 F1200 ; 0
G1 X155 Y79.5 E0.0798 F1200 ; 0
G1 X153 Y79.5 E0.0798 F1200 ; 0
G1 X153 Y77.5 E0.0798 F1200 ; 0
G1 X153 Y75.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X156 Y75.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X156 Y75.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X157 Y75.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X159 Y75.5 E0.0798 F1200 ; 0
G1 X159 Y77.5 E0.0798 F1200 ; 0
G1 X159 Y79.5 E0.0798 F1200 ; 0
G1 X157 Y79.5 E0.0798 F1200 ; 0
G1 X157 Y77.5 E0.0798 F1200 ; 0
G1 X157 Y75.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X160 Y75.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X160 Y77.5 F7200 ; move to start
G1 X160 Y79.5 F7200 ; move to start
G1 X160 Y77.5 E0.0798 F1200 ; 4
G1 X162 Y77.5 E0.0798 F1200 ; 4
G1 X162 Y79.5 F7200 ; move to start
G1 X162 Y77.5 E0.0798 F1200 ; 4
G1 X162 Y75.5 E0.0798 F1200 ; 4
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y85.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X155 Y85.5 E0.0798 F1200 ; 0
G1 X155 Y87.5 E0.0798 F1200 ; 0
G1 X155 Y89.5 E0.0798 F1200 ; 0
G1 X153 Y89.5 E0.0798 F1200 ; 0
G1 X153 Y87.5 E0.0798 F1200 ; 0
G1 X153 Y85.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X156 Y85.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X156 Y85.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X157 Y85.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X159 Y85.5 E0.0798 F1200 ; 0
G1 X159 Y87.5 E0.0798 F1200 ; 0
G1 X159 Y89.5 E0.0798 F1200 ; 0
G1 X157 Y89.5 E0.0798 F1200 ; 0
G1 X157 Y87.5 E0.0798 F1200 ; 0
G1 X157 Y85.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X160 Y85.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X162 Y85.5 E0.0798 F1200 ; 5
G1 X162 Y87.5 E0.0798 F1200 ; 5
G1 X160 Y87.5 E0.0798 F1200 ; 5
G1 X160 Y89.5 E0.0798 F1200 ; 5
G1 X162 Y89.5 E0.0798 F1200 ; 5
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y95.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X155 Y95.5 E0.0798 F1200 ; 0
G1 X155 Y97.5 E0.0798 F1200 ; 0
G1 X155 Y99.5 E0.0798 F1200 ; 0
G1 X153 Y99.5 E0.0798 F1200 ; 0
G1 X153 Y97.5 E0.0798 F1200 ; 0
G1 X153 Y95.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X156 Y95.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X156 Y95.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X157 Y95.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X159 Y95.5 E0.0798 F1200 ; 0
G1 X159 Y97.5 E0.0798 F1200 ; 0
G1 X159 Y99.5 E0.0798 F1200 ; 0
G1 X157 Y99.5 E0.0798 F1200 ; 0
G1 X157 Y97.5 E0.0798 F1200 ; 0
G1 X157 Y95.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X160 Y95.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X160 Y97.5 F7200 ; move to start
G1 X162 Y97.5 E0.0798 F1200 ; 6
G1 X162 Y95.5 E0.0798 F1200 ; 6
G1 X160 Y95.5 E0.0798 F1200 ; 6
G1 X160 Y97.5 E0.0798 F1200 ; 6
G1 X160 Y99.5 E0.0798 F1200 ; 6
G1 X162 Y99.5 E0.0798 F1200 ; 6
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y105.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X155 Y105.5 E0.0798 F1200 ; 0
G1 X155 Y107.5 E0.0798 F1200 ; 0
G1 X155 Y109.5 E0.0798 F1200 ; 0
G1 X153 Y109.5 E0.0798 F1200 ; 0
G1 X153 Y107.5 E0.0798 F1200 ; 0
G1 X153 Y105.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X156 Y105.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X156 Y105.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X157 Y105.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X159 Y105.5 E0.0798 F1200 ; 0
G1 X159 Y107.5 E0.0798 F1200 ; 0
G1 X159 Y109.5 E0.0798 F1200 ; 0
G1 X157 Y109.5 E0.0798 F1200 ; 0
G1 X157 Y107.5 E0.0798 F1200 ; 0
G1 X157 Y105.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X160 Y105.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X160 Y107.5 F7200 ; move to start
G1 X160 Y109.5 F7200 ; move to start
G1 X162 Y109.5 E0.0798 F1200 ; 7
G1 X162 Y107.5 E0.0798 F1200 ; 7
G1 X162 Y105.5 E0.0798 F1200 ; 7
G1 E-1 F1800 ; retract
G1 Z0.3 F1200 ; zHop
G1 X153 Y115.5 F7200 ; move to start
G1 Z0.2 F1200 ; zHop
G1 E1 F1800 ; un-retract
G1 X155 Y115.5 E0.0798 F1200 ; 0
G1 X155 Y117.5 E0.0798 F1200 ; 0
G1 X155 Y119.5 E0.0798 F1200 ; 0
G1 X153 Y119.5 E0.0798 F1200 ; 0
G1 X153 Y117.5 E0.0798 F1200 ; 0
G1 X153 Y115.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X156 Y115.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X156 Y115.9 E0.016 F1200 ; dot
G1 E-1 F1800 ; retract
G1 X157 Y115.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X159 Y115.5 E0.0798 F1200 ; 0
G1 X159 Y117.5 E0.0798 F1200 ; 0
G1 X159 Y119.5 E0.0798 F1200 ; 0
G1 X157 Y119.5 E0.0798 F1200 ; 0
G1 X157 Y117.5 E0.0798 F1200 ; 0
G1 X157 Y115.5 E0.0798 F1200 ; 0
G1 E-1 F1800 ; retract
G1 X160 Y115.5 F7200 ; move to start
G1 E1 F1800 ; un-retract
G1 X160 Y117.5 F7200 ; move to start
G1 X162 Y117.5 E0.0798 F1200 ; 8
G1 X162 Y115.5 E0.0798 F1200 ; 8
G1 X160 Y115.5 E0.0798 F1200 ; 8
G1 X160 Y117.5 E0.0798 F1200 ; 8
G1 X160 Y119.5 E0.0798 F1200 ; 8
G1 X162 Y119.5 E0.0798 F1200 ; 8
G1 X162 Y117.5 E0.0798 F1200 ; 8
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