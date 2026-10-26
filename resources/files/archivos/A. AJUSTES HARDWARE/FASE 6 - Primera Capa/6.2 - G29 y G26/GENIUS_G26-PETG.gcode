; Juan Pedro Perianes
; Artillery Genius Modificada con BLTouch
; 03/01/2026
; G26-PETG.gcode

G90; coordenadas absolutas
M220 S100   ;reset factor de velocidad
M221 S100   ;reset extrusor rate

; Establecer temperaturas para ir calentando
M140 S70    ;bed
M104 S240   ;extrusor PETG

; HOME y G29
G28         ;Home All
M190 S70    ;Espera hasta que la cama tenga 70ºC
G34         ;Z-aling
G29 P1      ;Medir malla UBL - 25 puntos
G29 A       ;Activar UBL
M109 S240   ;Espera hasta que la cama tenga 240ºC

; Linea de limpieza - En X ida y vuelta 
G92 E0      ; Reset Extrusor
G0 Z3 F3000 ; Mover z cerca de la superficie de la cama
G0 X10 Y-1.5 Z0.25 F5000.0 ; Mover a la poscion inicial
G0 X150 Y-1.5 Z0.25 F1500.0 E15 ; Dibuja la primera parte de la linea
G0 X150 Y-1.2 Z0.25 F5000.0 ; Desplaza un poco hacia afuera
G0 X10 Y-1.2 Z0.25 F1500.0 E30 ; Dibuja la segunda parte de la linea
G92 E0 ; Reset Extrusor

; G26 PARA PETG
G1 Z3 F3000 ; Mover z cerca de la superficie de la cama
G26 R25 B70 H240; Verificar malla UBL de 25 puntos para PETG a 240ºC y cama 70ºC
G1 X0 Y220 Z50 F3000.0 ; Mover a la posicion FINAL
