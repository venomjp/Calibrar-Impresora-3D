; **************************************************************************
; ZIG ZAG - permite calibrar el Z-OFFSET
; para ARTILLERY GENIUS JP con Temperaturas de PETG
; Juan Pedro Perianes
; 09/02/2026
; **************************************************************************

; external perimeters extrusion width = 0.42mm
; perimeters extrusion width = 0.45mm
; infill extrusion width = 0.45mm
; solid infill extrusion width = 0.42mm
; top infill extrusion width = 0.42mm
; support material extrusion width = 0.42mm
; first layer extrusion width = 0.45mm

; EXECUTABLE_BLOCK_START
M201 X2000 Y2000 Z100 E8000
M203 X300 Y300 Z50 E50
M204 P1300 R3000 T2000 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z0.30 E5.00 ; sets the jerk limits, mm/sec
M205 J0.030
;TYPE:Custom
;JP GENIUS Gcode Inicio

;Configuracion inicial --------------------------
G90 ;            coordenadas absolutas
M83;             extrusor en modo relativo
M220 S100   ;    reset factor de velocidad
M221 S100   ;    reset extrusor rate

;Temperaturas de calentamiento ---------------
M104 S240 ;     calienta NOZZLE sin esperar
M140 S70 ;       calienta BED sin esperar

;HOME + G34 + G29 ---------------------------
G28 ;            Home All
M190 S70 ;       espera temperatura BED
G34 ;            Z-Aling
G0 X0 Y0 F2000;  desplazamiento a X=0, Y=0 minimiza curva hilbert
G29 P1 ;         calcula malla UBL de 25 puntos
G29 A ;          activa UBL
M109 S240 ;      espera temperatura NOZZLE

; Linea de limpieza - En X ida y vuelta ------------------------------
G92 E0      ;    Reset Extrusor
G0 Z3 F3000 ;    Mover z cerca de la superficie de la cama
G0 X10 Y-1.5 Z0.25 F5000.0 ;      Mover a la poscion inicial
G0 X150 Y-1.5 Z0.25 F1500.0 E15 ; Dibuja la primera parte de la linea
G0 X150 Y-1.2 Z0.25 F5000.0 ;     Desplaza un poco hacia afuera
G0 X10 Y-1.2 Z0.25 F1500.0 E30 ;  Dibuja la segunda parte de la linea
G92 E0 ;                          Reset Extrusor
M75 ;                             Inicia el contador de extrusion

; JP CODIGO PARA HACER EL ZIGZAG ****************************************

; LINEA HORIZONTAL 1 
G1 X25 Y150 F2100
G1 Z0.2
G92 E0.0
G1 E1.0 F1000.0 ; desretraer 1mm
G1 X170 E10.5 F1000
G1 Y140 E11.2 F1000

; LINEA HORIZONTAL 2
G92 E0.0
G1 X25 E10.5 F1000
G1 Y130 E11.2 F1000

; LINEA HORIZONTAL 3
G92 E0.0
G1 X170 E10.5 F1000
G1 Y120 E11.2 F1000

; LINEA HORIZONTAL 4
G92 E0.0
G1 X25 E10.5 F1000
G1 Y110 E11.2 F1000

; LINEA HORIZONTAL 5
G92 E0.0
G1 X170 E10.5 F1000
G1 Y100 E11.2 F1000

; LINEA HORIZONTAL 6
G92 E0.0
G1 X25 E10.5 F1000
G1 Y90 E11.2 F1000

; LINEA HORIZONTAL 7
G92 E0.0
G1 X170 E10.5 F1000
G1 Y80 E11.2 F1000

; LINEA HORIZONTAL 8
G92 E0.0
G1 X25 E10.5 F1000
G1 Y70 E11.2 F1000

; LINEA HORIZONTAL 9
G92 E0.0
G1 X170 E10.5 F1000
G1 Y60 E11.2 F1000

; LINEA HORIZONTAL 10
G92 E0.0
G1 X25 E10.5 F1000

; CUADRADO --------------------------------
G92 E0.0
G1 Y59.6  F1000
G1 X45 E1.2 F1000
G1 Y59.2  F1000
G1 X25 E2.4 F1000
G1 Y58.8  F1000
G1 X45 E3.6 F1000
G1 Y58.4  F1000
G1 X25 E4.8 F1000

G1 Y58  F1000
G1 X45 E6 F1000
G1 Y57.6  F1000
G1 X25 E7.2 F1000
G1 Y57.2  F1000
G1 X45 E8.4 F1000
G1 Y56.8  F1000
G1 X25 E9.6 F1000
G1 Y56.4  F1000
G1 X45 E10.8 F1000


G92 E0.0
G1 Y56  F1000
G1 X25 E1.2 F1000
G1 Y55.6  F1000
G1 X45 E2.4 F1000
G1 Y55.2  F1000
G1 X25 E3.6 F1000
G1 Y54.8  F1000
G1 X45 E4.8 F1000
G1 Y54.4  F1000
G1 X25 E6 F1000

G1 Y54  F1000
G1 X45 E7.2 F1000
G1 Y53.6  F1000
G1 X25 E8.4 F1000
G1 Y53.2  F1000
G1 X45 E9.6 F1000
G1 Y52.8  F1000
G1 X25 E10.8 F1000
G1 Y52.4  F1000
G1 X45 E15 F1000

G92 E0.0
G1 Y52  F1000
G1 X25 E1.2 F1000
G1 Y51.6  F1000
G1 X45 E2.4 F1000
G1 Y51.2  F1000
G1 X25 E3.6 F1000
G1 Y50.8  F1000
G1 X45 E4.8 F1000
G1 Y50.4  F1000
G1 X25 E6 F1000
G1 Y50 F1000
G1 X45 E7.2 F1000
G1 Z50 F150; levantar nozzle a 50

; FIN CODIGO ZIGZAG *****************************************************

; JP GENIUS Gcode Fin ***************************************************

;Configuracion final ---------------------------
G4 ;                      espera que acabe la última instrucción
G92 E0;                   prepara para la retracción
G1 E-1 F3000;             retrae para evitar hilillos

;Presentar cama y elevar boquilla
G91 ;                     coordenas relativas
G1 X5 Y220 F1200 ;        presenta la cama
G1 Z100;                  eleva la boquilla a 100mm
G90 ;                     coordenadas absolutas

;Reset configuraciones -------------------------
M220 S100   ;             reset factor de velocidad
M221 S100   ;             reset extrusor rate

;Apagados varios -------------------------------
M106 S0;                  Apagar ventilador (fan)
M104 S0;                  Apagar Hotend
M140 S0;                  Apagar Bed
M150 P0;                  Apagar LED
M85 s0 ;                  Desactiva todo
M84;                      Apaga todos los motores