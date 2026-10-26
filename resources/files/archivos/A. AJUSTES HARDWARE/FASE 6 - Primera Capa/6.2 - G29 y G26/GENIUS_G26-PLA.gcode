; Juan Pedro Perianes
; Artillery Genius Modificada con BLTouchç
; 03/01/2026
; G26-PLA.gcode

G90; coordenadas absolutas
M220 S100   ;reset factor de velocidad
M221 S100   ;reset extrusor rate

; Establecer temperaturas para ir calentando
M140 S60    ;bed
M109 S200   ;extrusor PLA

; HOME y G29
G28         ;Home All
M190 S60    ;Espera hasta que la cama tenga 60  ºC
G34         ;Z-aling
G29 P1      ;Medir malla UBL - 25 puntos
G29 A       ;Activar UBL
M109 S200   ;Espera hasta que la cama tenga 200ºC

; Linea de limpieza - En X ida y vuelta 
G92 E0      ; Reset Extrusor
G0 Z3 F3000 ; Mover z cerca de la superficie de la cama
G0 X10 Y-1.5 Z0.25 F5000.0 ; Mover a la poscion inicial
G0 X150 Y-1.5 Z0.25 F1500.0 E15 ; Dibuja la primera parte de la linea
G0 X150 Y-1.2 Z0.25 F5000.0 ; Desplaza un poco hacia afuera
G0 X10 Y-1.2 Z0.25 F1500.0 E30 ; Dibuja la segunda parte de la linea
G92 E0 ; Reset Extrusor

; G26 PARA PLA                                          
G1 Z3 F3000 ; Mover z cerca de la superficie de la cama
G26 R25; Verificar malla UBL de 25 puntos para PLA
G1 X0 Y220 Z50 F3000.0 ; Mover a la posicion FINAL
