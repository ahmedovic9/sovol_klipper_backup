; ### Klipper Pressure Advance Calibration Pattern ###
; -------------------------------------------
;
; Printer: sovol
; Filament: esun
; Created: Thu Sep 28 2023 17:19:30 GMT+0300 (Arabian Standard Time)
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
; Layer Height = 0.22 mm
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Size X = 300 mm
; Bed Size Y = 250 mm
;
; Settings Speed:
; Slow Printing Speed = 900 mm/min
; Fast Printing Speed = 2400 mm/min
; Movement Speed = 30000 mm/min
; Retract Speed = 2400 mm/min
; Unretract Speed = 2400 mm/min
; Printing Acceleration = 3000 mm/s^2
;
; Settings Pattern:
; Starting Value Factor = 0.05
; Ending Value Factor = 0.12
; Factor Stepping = 0.005
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 88 mm
; Print Size Y = 94.99999999999999 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.15
; Use FWRETRACT = false
; Extrusion Multiplier = 1.05
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
G1 Z0.22 F900 ; Move to layer height
;
; print anchor frame
G1 X106 Y74.5 F30000 ; move to start
G1 X106 Y150.5 E5.53989 F900 ; print line
G1 X106.69 Y150.5 F30000 ; move to start
G1 X106.69 Y74.5 E5.53989 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X186 Y74.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X186 Y150.5 E5.53989 F900 ; print line
G1 X185.31 Y150.5 F30000 ; move to start
G1 X185.31 Y74.5 E5.53989 F900 ; print line
G1 E-1.1 F2400 ; retract
;
; start the Test pattern
;
G1 X106 Y77.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.05 ; set Pressure Advance
M117 K0.05 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y77.5 E1.32533 F900 ; print line
G1 X166 Y77.5 E2.65067 F2400 ; print line
G1 X186 Y77.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y82.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.055 ; set Pressure Advance
M117 K0.055 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y82.5 E1.32533 F900 ; print line
G1 X166 Y82.5 E2.65067 F2400 ; print line
G1 X186 Y82.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y87.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.06 ; set Pressure Advance
M117 K0.06 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y87.5 E1.32533 F900 ; print line
G1 X166 Y87.5 E2.65067 F2400 ; print line
G1 X186 Y87.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y92.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.065 ; set Pressure Advance
M117 K0.065 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y92.5 E1.32533 F900 ; print line
G1 X166 Y92.5 E2.65067 F2400 ; print line
G1 X186 Y92.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y97.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.07 ; set Pressure Advance
M117 K0.07 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y97.5 E1.32533 F900 ; print line
G1 X166 Y97.5 E2.65067 F2400 ; print line
G1 X186 Y97.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y102.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.075 ; set Pressure Advance
M117 K0.075 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y102.5 E1.32533 F900 ; print line
G1 X166 Y102.5 E2.65067 F2400 ; print line
G1 X186 Y102.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y107.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.08 ; set Pressure Advance
M117 K0.08 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y107.5 E1.32533 F900 ; print line
G1 X166 Y107.5 E2.65067 F2400 ; print line
G1 X186 Y107.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y112.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.085 ; set Pressure Advance
M117 K0.085 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y112.5 E1.32533 F900 ; print line
G1 X166 Y112.5 E2.65067 F2400 ; print line
G1 X186 Y112.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y117.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.09 ; set Pressure Advance
M117 K0.09 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y117.5 E1.32533 F900 ; print line
G1 X166 Y117.5 E2.65067 F2400 ; print line
G1 X186 Y117.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y122.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.095 ; set Pressure Advance
M117 K0.095 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y122.5 E1.32533 F900 ; print line
G1 X166 Y122.5 E2.65067 F2400 ; print line
G1 X186 Y122.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y127.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.1 ; set Pressure Advance
M117 K0.1 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y127.5 E1.32533 F900 ; print line
G1 X166 Y127.5 E2.65067 F2400 ; print line
G1 X186 Y127.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y132.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.105 ; set Pressure Advance
M117 K0.105 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y132.5 E1.32533 F900 ; print line
G1 X166 Y132.5 E2.65067 F2400 ; print line
G1 X186 Y132.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y137.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.11 ; set Pressure Advance
M117 K0.11 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y137.5 E1.32533 F900 ; print line
G1 X166 Y137.5 E2.65067 F2400 ; print line
G1 X186 Y137.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y142.5 F30000 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.115 ; set Pressure Advance
M117 K0.115 ; 
G1 E1.1 F2400 ; un-retract
G1 X126 Y142.5 E1.32533 F900 ; print line
G1 X166 Y142.5 E2.65067 F2400 ; print line
G1 X186 Y142.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X106 Y147.5 F30000 ; move to start
;
; Mark the test area for reference
M117 K0
SET_PRESSURE_ADVANCE ADVANCE=0 ; Set Pressure Advance 0
G1 X126 Y152.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X126 Y172.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 X166 Y152.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X166 Y172.5 E1.32533 F900 ; print line
G1 E-1.1 F2400 ; retract
G1 Z0.32 F900 ; zHop
;
; print K-values
;
G1 X188 Y75.5 F30000 ; move to start
G1 Z0.22 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y75.5 E0.13253 F900 ; 0
G1 X190 Y77.5 E0.13253 F900 ; 0
G1 X190 Y79.5 E0.13253 F900 ; 0
G1 X188 Y79.5 E0.13253 F900 ; 0
G1 X188 Y77.5 E0.13253 F900 ; 0
G1 X188 Y75.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y75.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y75.9 E0.02651 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y75.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X194 Y75.5 E0.13253 F900 ; 0
G1 X194 Y77.5 E0.13253 F900 ; 0
G1 X194 Y79.5 E0.13253 F900 ; 0
G1 X192 Y79.5 E0.13253 F900 ; 0
G1 X192 Y77.5 E0.13253 F900 ; 0
G1 X192 Y75.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X195 Y75.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X197 Y75.5 E0.13253 F900 ; 5
G1 X197 Y77.5 E0.13253 F900 ; 5
G1 X195 Y77.5 E0.13253 F900 ; 5
G1 X195 Y79.5 E0.13253 F900 ; 5
G1 X197 Y79.5 E0.13253 F900 ; 5
G1 E-1.1 F2400 ; retract
G1 Z0.32 F900 ; zHop
G1 X188 Y85.5 F30000 ; move to start
G1 Z0.22 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y85.5 E0.13253 F900 ; 0
G1 X190 Y87.5 E0.13253 F900 ; 0
G1 X190 Y89.5 E0.13253 F900 ; 0
G1 X188 Y89.5 E0.13253 F900 ; 0
G1 X188 Y87.5 E0.13253 F900 ; 0
G1 X188 Y85.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y85.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y85.9 E0.02651 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y85.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X194 Y85.5 E0.13253 F900 ; 0
G1 X194 Y87.5 E0.13253 F900 ; 0
G1 X194 Y89.5 E0.13253 F900 ; 0
G1 X192 Y89.5 E0.13253 F900 ; 0
G1 X192 Y87.5 E0.13253 F900 ; 0
G1 X192 Y85.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X195 Y85.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X195 Y87.5 F30000 ; move to start
G1 X197 Y87.5 E0.13253 F900 ; 6
G1 X197 Y85.5 E0.13253 F900 ; 6
G1 X195 Y85.5 E0.13253 F900 ; 6
G1 X195 Y87.5 E0.13253 F900 ; 6
G1 X195 Y89.5 E0.13253 F900 ; 6
G1 X197 Y89.5 E0.13253 F900 ; 6
G1 E-1.1 F2400 ; retract
G1 Z0.32 F900 ; zHop
G1 X188 Y95.5 F30000 ; move to start
G1 Z0.22 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y95.5 E0.13253 F900 ; 0
G1 X190 Y97.5 E0.13253 F900 ; 0
G1 X190 Y99.5 E0.13253 F900 ; 0
G1 X188 Y99.5 E0.13253 F900 ; 0
G1 X188 Y97.5 E0.13253 F900 ; 0
G1 X188 Y95.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y95.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y95.9 E0.02651 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y95.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X194 Y95.5 E0.13253 F900 ; 0
G1 X194 Y97.5 E0.13253 F900 ; 0
G1 X194 Y99.5 E0.13253 F900 ; 0
G1 X192 Y99.5 E0.13253 F900 ; 0
G1 X192 Y97.5 E0.13253 F900 ; 0
G1 X192 Y95.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X195 Y95.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X195 Y97.5 F30000 ; move to start
G1 X195 Y99.5 F30000 ; move to start
G1 X197 Y99.5 E0.13253 F900 ; 7
G1 X197 Y97.5 E0.13253 F900 ; 7
G1 X197 Y95.5 E0.13253 F900 ; 7
G1 E-1.1 F2400 ; retract
G1 Z0.32 F900 ; zHop
G1 X188 Y105.5 F30000 ; move to start
G1 Z0.22 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y105.5 E0.13253 F900 ; 0
G1 X190 Y107.5 E0.13253 F900 ; 0
G1 X190 Y109.5 E0.13253 F900 ; 0
G1 X188 Y109.5 E0.13253 F900 ; 0
G1 X188 Y107.5 E0.13253 F900 ; 0
G1 X188 Y105.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y105.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y105.9 E0.02651 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y105.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X194 Y105.5 E0.13253 F900 ; 0
G1 X194 Y107.5 E0.13253 F900 ; 0
G1 X194 Y109.5 E0.13253 F900 ; 0
G1 X192 Y109.5 E0.13253 F900 ; 0
G1 X192 Y107.5 E0.13253 F900 ; 0
G1 X192 Y105.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X195 Y105.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X195 Y107.5 F30000 ; move to start
G1 X197 Y107.5 E0.13253 F900 ; 8
G1 X197 Y105.5 E0.13253 F900 ; 8
G1 X195 Y105.5 E0.13253 F900 ; 8
G1 X195 Y107.5 E0.13253 F900 ; 8
G1 X195 Y109.5 E0.13253 F900 ; 8
G1 X197 Y109.5 E0.13253 F900 ; 8
G1 X197 Y107.5 E0.13253 F900 ; 8
G1 E-1.1 F2400 ; retract
G1 Z0.32 F900 ; zHop
G1 X188 Y115.5 F30000 ; move to start
G1 Z0.22 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y115.5 E0.13253 F900 ; 0
G1 X190 Y117.5 E0.13253 F900 ; 0
G1 X190 Y119.5 E0.13253 F900 ; 0
G1 X188 Y119.5 E0.13253 F900 ; 0
G1 X188 Y117.5 E0.13253 F900 ; 0
G1 X188 Y115.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y115.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y115.9 E0.02651 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y115.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X194 Y115.5 E0.13253 F900 ; 0
G1 X194 Y117.5 E0.13253 F900 ; 0
G1 X194 Y119.5 E0.13253 F900 ; 0
G1 X192 Y119.5 E0.13253 F900 ; 0
G1 X192 Y117.5 E0.13253 F900 ; 0
G1 X192 Y115.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X195 Y115.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X197 Y115.5 E0.13253 F900 ; 9
G1 X197 Y117.5 E0.13253 F900 ; 9
G1 X195 Y117.5 E0.13253 F900 ; 9
G1 X195 Y119.5 E0.13253 F900 ; 9
G1 X197 Y119.5 E0.13253 F900 ; 9
G1 X197 Y117.5 E0.13253 F900 ; 9
G1 E-1.1 F2400 ; retract
G1 Z0.32 F900 ; zHop
G1 X188 Y125.5 F30000 ; move to start
G1 Z0.22 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y125.5 E0.13253 F900 ; 0
G1 X190 Y127.5 E0.13253 F900 ; 0
G1 X190 Y129.5 E0.13253 F900 ; 0
G1 X188 Y129.5 E0.13253 F900 ; 0
G1 X188 Y127.5 E0.13253 F900 ; 0
G1 X188 Y125.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y125.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y125.9 E0.02651 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y125.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X192 Y127.5 E0.13253 F900 ; 1
G1 X192 Y129.5 E0.13253 F900 ; 1
G1 E-1.1 F2400 ; retract
G1 Z0.32 F900 ; zHop
G1 X188 Y135.5 F30000 ; move to start
G1 Z0.22 F900 ; zHop
G1 E1.1 F2400 ; un-retract
G1 X190 Y135.5 E0.13253 F900 ; 0
G1 X190 Y137.5 E0.13253 F900 ; 0
G1 X190 Y139.5 E0.13253 F900 ; 0
G1 X188 Y139.5 E0.13253 F900 ; 0
G1 X188 Y137.5 E0.13253 F900 ; 0
G1 X188 Y135.5 E0.13253 F900 ; 0
G1 E-1.1 F2400 ; retract
G1 X191 Y135.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X191 Y135.9 E0.02651 F900 ; dot
G1 E-1.1 F2400 ; retract
G1 X192 Y135.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X192 Y137.5 E0.13253 F900 ; 1
G1 X192 Y139.5 E0.13253 F900 ; 1
G1 E-1.1 F2400 ; retract
G1 X193 Y135.5 F30000 ; move to start
G1 E1.1 F2400 ; un-retract
G1 X193 Y137.5 E0.13253 F900 ; 1
G1 X193 Y139.5 E0.13253 F900 ; 1
G1 E-1.1 F2400 ; retract
G1 Z0.32 F900 ; zHop
;
; FINISH
;
END_PRINT

;