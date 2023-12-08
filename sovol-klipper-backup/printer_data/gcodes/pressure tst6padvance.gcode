; ### Klipper Pressure Advance Calibration Pattern ###
; -------------------------------------------
;
; Printer: sovol
; Filament: esun
; Created: Wed Oct 04 2023 10:34:29 GMT+0300 (Arabian Standard Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.6 mm
; Start G-code = ; M190 S60 ; <-- SET BED TEMPERATURE HERE - Wait to heat bed
; M109 S216 ; <-- SET NOZZLE TEMPERATURE HERE - Wait to heat extruder for homing 
; 
; G28 ; home all
; BED_MESH_PROFILE LOAD=default;
; 
; G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
; G1 X0.1 Y5 Z0.28 F5000.0 ; Move to start position
; 
; 
; G92 E0 ; Reset Extruder
; G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
; G1 X0.1 Y10 Z0.28 F5000.0 ; Move to start position
; 
; G1 X0.1 Y200 Z0.28 F1500.0 E15 ; Draw the first line
; G1 X0.4 Y200 Z0.28 F5000.0 ; Move to side a little
; G1 X0.4 Y10 Z0.28 F1500.0 E30 ; Draw the second line
; 
; 
; G92 E0 ; Reset Extruder
; G1 Z0.5 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
; M117 Godmode is enabled
; 
; End G-code = ; END_PRINT
; 
; Retraction Distance = 1.1 mm
; Layer Height = 0.23 mm
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Size X = 300 mm
; Bed Size Y = 250 mm
;
; Settings Speed:
; Slow Printing Speed = 900 mm/min
; Fast Printing Speed = 3000 mm/min
; Movement Speed = 30000 mm/min
; Retract Speed = 2400 mm/min
; Unretract Speed = 2400 mm/min
; Printing Acceleration = 3000 mm/s^2
;
; Settings Pattern:
; Starting Value Factor = 0.07
; Ending Value Factor = 0.15
; Factor Stepping = 0.005
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 88 mm
; Print Size Y = 104.99999999999999 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.05
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = false
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 2400
; Dwell Time = 0 s
;
; prepare printing
;
M190 S60 ; <-- SET BED TEMPERATURE HERE - Wait to heat bed
M109 S216 ; <-- SET NOZZLE TEMPERATURE HERE - Wait to heat extruder for homing 

G28 ; home all
BED_MESH_PROFILE LOAD=default;

G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y5 Z0.28 F5000.0 ; Move to start position


G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y10 Z0.28 F5000.0 ; Move to start position

G1 X0.1 Y200 Z0.28 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200 Z0.28 F5000.0 ; Move to side a little
G1 X0.4 Y10 Z0.28 F1500.0 E30 ; Draw the second line


G92 E0 ; Reset Extruder
G1 Z0.5 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
M117 Godmode is enabled

G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
SET_VELOCITY_LIMIT ACCEL=3000 ACCEL_TO_DECEL=1500 ; Acceleration
G92 E0 ; Reset extruder distance
M106 S0
G1 X150 Y125 F30000 ; move to start
G1 Z0.23 F900 ; Move to layer height
;
; print anchor frame
G1 X106 Y69.5 F30000 ; move to start
G1 X106 Y155.5 E5.69893 F900 ; print line
G1 X106.63 Y155.5 F30000 ; move to start
G1 X106.63 Y69.5 E5.69893 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X186 Y69.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X186 Y155.5 E5.69893 F900 ; print line
G1 X185.37 Y155.5 F30000 ; move to start
G1 X185.37 Y69.5 E5.69893 F900 ; print line
G1 E-1.1 F2400 ; retract
;
; start the Test pattern
;
G1 X106 Y72.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.07 ; set Pressure Advance
M117 K0.07 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y72.5 E1.20485 F900 ; print line
G1 X166 Y72.5 E2.4097 F3000 ; print line
G1 X186 Y72.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y77.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; set Pressure Advance
M117 K0.075 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y77.5 E1.20485 F900 ; print line
G1 X166 Y77.5 E2.4097 F3000 ; print line
G1 X186 Y77.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y82.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.08 ; set Pressure Advance
M117 K0.08 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y82.5 E1.20485 F900 ; print line
G1 X166 Y82.5 E2.4097 F3000 ; print line
G1 X186 Y82.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y87.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.085 ; set Pressure Advance
M117 K0.085 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y87.5 E1.20485 F900 ; print line
G1 X166 Y87.5 E2.4097 F3000 ; print line
G1 X186 Y87.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y92.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.09 ; set Pressure Advance
M117 K0.09 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y92.5 E1.20485 F900 ; print line
G1 X166 Y92.5 E2.4097 F3000 ; print line
G1 X186 Y92.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y97.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.095 ; set Pressure Advance
M117 K0.095 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y97.5 E1.20485 F900 ; print line
G1 X166 Y97.5 E2.4097 F3000 ; print line
G1 X186 Y97.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y102.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.1 ; set Pressure Advance
M117 K0.1 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y102.5 E1.20485 F900 ; print line
G1 X166 Y102.5 E2.4097 F3000 ; print line
G1 X186 Y102.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y107.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.105 ; set Pressure Advance
M117 K0.105 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y107.5 E1.20485 F900 ; print line
G1 X166 Y107.5 E2.4097 F3000 ; print line
G1 X186 Y107.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y112.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.11 ; set Pressure Advance
M117 K0.11 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y112.5 E1.20485 F900 ; print line
G1 X166 Y112.5 E2.4097 F3000 ; print line
G1 X186 Y112.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y117.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.115 ; set Pressure Advance
M117 K0.115 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y117.5 E1.20485 F900 ; print line
G1 X166 Y117.5 E2.4097 F3000 ; print line
G1 X186 Y117.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y122.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.12 ; set Pressure Advance
M117 K0.12 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y122.5 E1.20485 F900 ; print line
G1 X166 Y122.5 E2.4097 F3000 ; print line
G1 X186 Y122.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y127.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.125 ; set Pressure Advance
M117 K0.125 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y127.5 E1.20485 F900 ; print line
G1 X166 Y127.5 E2.4097 F3000 ; print line
G1 X186 Y127.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y132.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.13 ; set Pressure Advance
M117 K0.13 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y132.5 E1.20485 F900 ; print line
G1 X166 Y132.5 E2.4097 F3000 ; print line
G1 X186 Y132.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y137.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.135 ; set Pressure Advance
M117 K0.135 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y137.5 E1.20485 F900 ; print line
G1 X166 Y137.5 E2.4097 F3000 ; print line
G1 X186 Y137.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y142.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.14 ; set Pressure Advance
M117 K0.14 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y142.5 E1.20485 F900 ; print line
G1 X166 Y142.5 E2.4097 F3000 ; print line
G1 X186 Y142.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y147.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.145 ; set Pressure Advance
M117 K0.145 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y147.5 E1.20485 F900 ; print line
G1 X166 Y147.5 E2.4097 F3000 ; print line
G1 X186 Y147.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y152.5 F30000 ; move to start
;
; Mark the test area for reference
M117 K0
SET_PRESSURE_ADVANCE ADVANCE=0 ; Set Pressure Advance 0
G1 X126 Y157.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X126 Y177.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X166 Y157.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X166 Y177.5 E1.20485 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 Z0.33 F900 ; zHop
;
; print K-values
;
G1 X188 Y70.5 F30000 ; move to start
G1 Z0.23 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y70.5 E0.12048 F900 ; 0
G1 X190 Y72.5 E0.12048 F900 ; 0
G1 X190 Y74.5 E0.12048 F900 ; 0
G1 X188 Y74.5 E0.12048 F900 ; 0
G1 X188 Y72.5 E0.12048 F900 ; 0
G1 X188 Y70.5 E0.12048 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y70.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y70.9 E0.0241 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y70.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X194 Y70.5 E0.12048 F900 ; 0
G1 X194 Y72.5 E0.12048 F900 ; 0
G1 X194 Y74.5 E0.12048 F900 ; 0
G1 X192 Y74.5 E0.12048 F900 ; 0
G1 X192 Y72.5 E0.12048 F900 ; 0
G1 X192 Y70.5 E0.12048 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X195 Y70.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X195 Y72.5 F30000 ; move to start
G1 X195 Y74.5 F30000 ; move to start
G1 X197 Y74.5 E0.12048 F900 ; 7
G1 X197 Y72.5 E0.12048 F900 ; 7
G1 X197 Y70.5 E0.12048 F900 ; 7
G1 E-1.1 F2400 ; retract
G1 Z0.33 F900 ; zHop
G1 X188 Y80.5 F30000 ; move to start
G1 Z0.23 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y80.5 E0.12048 F900 ; 0
G1 X190 Y82.5 E0.12048 F900 ; 0
G1 X190 Y84.5 E0.12048 F900 ; 0
G1 X188 Y84.5 E0.12048 F900 ; 0
G1 X188 Y82.5 E0.12048 F900 ; 0
G1 X188 Y80.5 E0.12048 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y80.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y80.9 E0.0241 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y80.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X194 Y80.5 E0.12048 F900 ; 0
G1 X194 Y82.5 E0.12048 F900 ; 0
G1 X194 Y84.5 E0.12048 F900 ; 0
G1 X192 Y84.5 E0.12048 F900 ; 0
G1 X192 Y82.5 E0.12048 F900 ; 0
G1 X192 Y80.5 E0.12048 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X195 Y80.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X195 Y82.5 F30000 ; move to start
G1 X197 Y82.5 E0.12048 F900 ; 8
G1 X197 Y80.5 E0.12048 F900 ; 8
G1 X195 Y80.5 E0.12048 F900 ; 8
G1 X195 Y82.5 E0.12048 F900 ; 8
G1 X195 Y84.5 E0.12048 F900 ; 8
G1 X197 Y84.5 E0.12048 F900 ; 8
G1 X197 Y82.5 E0.12048 F900 ; 8
G1 E-1.1 F2400 ; retract
G1 Z0.33 F900 ; zHop
G1 X188 Y90.5 F30000 ; move to start
G1 Z0.23 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y90.5 E0.12048 F900 ; 0
G1 X190 Y92.5 E0.12048 F900 ; 0
G1 X190 Y94.5 E0.12048 F900 ; 0
G1 X188 Y94.5 E0.12048 F900 ; 0
G1 X188 Y92.5 E0.12048 F900 ; 0
G1 X188 Y90.5 E0.12048 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y90.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y90.9 E0.0241 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y90.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X194 Y90.5 E0.12048 F900 ; 0
G1 X194 Y92.5 E0.12048 F900 ; 0
G1 X194 Y94.5 E0.12048 F900 ; 0
G1 X192 Y94.5 E0.12048 F900 ; 0
G1 X192 Y92.5 E0.12048 F900 ; 0
G1 X192 Y90.5 E0.12048 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X195 Y90.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X197 Y90.5 E0.12048 F900 ; 9
G1 X197 Y92.5 E0.12048 F900 ; 9
G1 X195 Y92.5 E0.12048 F900 ; 9
G1 X195 Y94.5 E0.12048 F900 ; 9
G1 X197 Y94.5 E0.12048 F900 ; 9
G1 X197 Y92.5 E0.12048 F900 ; 9
G1 E-1.1 F2400 ; retract
G1 Z0.33 F900 ; zHop
G1 X188 Y100.5 F30000 ; move to start
G1 Z0.23 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y100.5 E0.12048 F900 ; 0
G1 X190 Y102.5 E0.12048 F900 ; 0
G1 X190 Y104.5 E0.12048 F900 ; 0
G1 X188 Y104.5 E0.12048 F900 ; 0
G1 X188 Y102.5 E0.12048 F900 ; 0
G1 X188 Y100.5 E0.12048 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y100.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y100.9 E0.0241 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y100.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X192 Y102.5 E0.12048 F900 ; 1
G1 X192 Y104.5 E0.12048 F900 ; 1
G1 E-1.1 F2400 ; retract
G1 Z0.33 F900 ; zHop
G1 X188 Y110.5 F30000 ; move to start
G1 Z0.23 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y110.5 E0.12048 F900 ; 0
G1 X190 Y112.5 E0.12048 F900 ; 0
G1 X190 Y114.5 E0.12048 F900 ; 0
G1 X188 Y114.5 E0.12048 F900 ; 0
G1 X188 Y112.5 E0.12048 F900 ; 0
G1 X188 Y110.5 E0.12048 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y110.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y110.9 E0.0241 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y110.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X192 Y112.5 E0.12048 F900 ; 1
G1 X192 Y114.5 E0.12048 F900 ; 1
G1 E-1.1 F2400 ; retract
G1 X193 Y110.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X193 Y112.5 E0.12048 F900 ; 1
G1 X193 Y114.5 E0.12048 F900 ; 1
G1 E-1.1 F2400 ; retract
G1 Z0.33 F900 ; zHop
G1 X188 Y120.5 F30000 ; move to start
G1 Z0.23 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y120.5 E0.12048 F900 ; 0
G1 X190 Y122.5 E0.12048 F900 ; 0
G1 X190 Y124.5 E0.12048 F900 ; 0
G1 X188 Y124.5 E0.12048 F900 ; 0
G1 X188 Y122.5 E0.12048 F900 ; 0
G1 X188 Y120.5 E0.12048 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y120.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y120.9 E0.0241 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y120.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X192 Y122.5 E0.12048 F900 ; 1
G1 X192 Y124.5 E0.12048 F900 ; 1
G1 E-1.1 F2400 ; retract
G1 X193 Y120.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X193 Y122.5 F30000 ; move to start
G1 X193 Y124.5 F30000 ; move to start
G1 X195 Y124.5 E0.12048 F900 ; 2
G1 X195 Y122.5 E0.12048 F900 ; 2
G1 X193 Y122.5 E0.12048 F900 ; 2
G1 X193 Y120.5 E0.12048 F900 ; 2
G1 X195 Y120.5 E0.12048 F900 ; 2
G1 E-1.1 F2400 ; retract
G1 Z0.33 F900 ; zHop
G1 X188 Y130.5 F30000 ; move to start
G1 Z0.23 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y130.5 E0.12048 F900 ; 0
G1 X190 Y132.5 E0.12048 F900 ; 0
G1 X190 Y134.5 E0.12048 F900 ; 0
G1 X188 Y134.5 E0.12048 F900 ; 0
G1 X188 Y132.5 E0.12048 F900 ; 0
G1 X188 Y130.5 E0.12048 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y130.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y130.9 E0.0241 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y130.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X192 Y132.5 E0.12048 F900 ; 1
G1 X192 Y134.5 E0.12048 F900 ; 1
G1 E-1.1 F2400 ; retract
G1 X193 Y130.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X193 Y132.5 F30000 ; move to start
G1 X193 Y134.5 F30000 ; move to start
G1 X195 Y134.5 E0.12048 F900 ; 3
G1 X195 Y132.5 E0.12048 F900 ; 3
G1 X195 Y130.5 E0.12048 F900 ; 3
G1 X193 Y130.5 E0.12048 F900 ; 3
G1 X193 Y132.5 F30000 ; move to start
G1 X195 Y132.5 E0.12048 F900 ; 3
G1 E-1.1 F2400 ; retract
G1 Z0.33 F900 ; zHop
G1 X188 Y140.5 F30000 ; move to start
G1 Z0.23 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y140.5 E0.12048 F900 ; 0
G1 X190 Y142.5 E0.12048 F900 ; 0
G1 X190 Y144.5 E0.12048 F900 ; 0
G1 X188 Y144.5 E0.12048 F900 ; 0
G1 X188 Y142.5 E0.12048 F900 ; 0
G1 X188 Y140.5 E0.12048 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y140.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y140.9 E0.0241 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y140.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X192 Y142.5 E0.12048 F900 ; 1
G1 X192 Y144.5 E0.12048 F900 ; 1
G1 E-1.1 F2400 ; retract
G1 X193 Y140.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X193 Y142.5 F30000 ; move to start
G1 X193 Y144.5 F30000 ; move to start
G1 X193 Y142.5 E0.12048 F900 ; 4
G1 X195 Y142.5 E0.12048 F900 ; 4
G1 X195 Y144.5 F30000 ; move to start
G1 X195 Y142.5 E0.12048 F900 ; 4
G1 X195 Y140.5 E0.12048 F900 ; 4
G1 E-1.1 F2400 ; retract
G1 Z0.33 F900 ; zHop
;
; FINISH
;
END_PRINT

;