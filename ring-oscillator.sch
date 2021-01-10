EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1100 800  1100 1300
$Comp
L pspice:VSOURCE Vpwr1
U 1 1 5FE79D13
P 1100 1600
F 0 "Vpwr1" H 1328 1646 50  0000 L CNN
F 1 "1.8" H 1328 1555 50  0000 L CNN
F 2 "" H 1100 1600 50  0001 C CNN
F 3 "~" H 1100 1600 50  0001 C CNN
	1    1100 1600
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND0103
U 1 1 5FE7E80C
P 1100 2300
F 0 "#GND0103" H 1100 2200 50  0001 C CNN
F 1 "0" H 1100 2389 50  0000 C CNN
F 2 "" H 1100 2300 50  0001 C CNN
F 3 "~" H 1100 2300 50  0001 C CNN
	1    1100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1900 1100 2300
Text GLabel 1100 800  0    50   BiDi ~ 0
Vdd
Text Notes 750  600  0    50   ~ 0
.tran 1p 100n
Wire Wire Line
	2400 2150 2300 2150
Wire Wire Line
	2300 2150 2300 2400
Wire Wire Line
	2450 950  2400 950 
Connection ~ 2400 950 
Wire Wire Line
	2400 950  2300 950 
Wire Wire Line
	2300 800  2300 950 
Connection ~ 2300 950 
$Comp
L pspice:0 #GND?
U 1 1 5FE8EB37
P 2300 2400
F 0 "#GND?" H 2300 2300 50  0001 C CNN
F 1 "0" H 2300 2489 50  0000 C CNN
F 2 "" H 2300 2400 50  0001 C CNN
F 3 "~" H 2300 2400 50  0001 C CNN
	1    2300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1150 2000 1550
Wire Wire Line
	2000 1550 1900 1550
Connection ~ 2000 1550
Wire Wire Line
	2000 1550 2000 1950
Text GLabel 1750 1550 0    50   BiDi ~ 0
X
Text GLabel 2300 800  0    50   BiDi ~ 0
Vdd
Connection ~ 2300 2150
$Comp
L kicad-sky130:sky130_fd_pr__nfet_01v8 M1
U 1 1 5FE86432
P 2200 1950
F 0 "M1" H 2500 2000 50  0000 L CNN
F 1 "sky130_fd_pr__nfet_01v8" H 2488 2087 50  0001 L CNN
F 2 "" H 2175 1950 50  0001 C CNN
F 3 "~" H 2175 1950 50  0001 C CNN
F 4 "X" H 2488 1996 50  0001 L CNN "Spice_Primitive"
F 5 "sky130_fd_pr__nfet_01v8 l=1 w=1" H 2488 1905 39  0000 L CNN "Spice_Model"
F 6 "Y" H 2488 1814 50  0001 L CNN "Spice_Netlist_Enabled"
F 7 "/home/andrew/pdks/sky130A/libs.tech/ngspice/corners/tt.spice" H 2488 1723 50  0001 L CNN "Spice_Lib_File"
	1    2200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1350 2300 1550
$Comp
L kicad-sky130:sky130_fd_pr__pfet_01v8 M2
U 1 1 5FE8C1A6
P 2200 1150
F 0 "M2" H 2488 1196 50  0000 L CNN
F 1 "sky130_fd_pr__pfet_01v8" H 2488 1287 50  0001 L CNN
F 2 "" H 2200 1150 50  0001 C CNN
F 3 "~" H 2200 1150 50  0001 C CNN
F 4 "X" H 2488 1196 50  0001 L CNN "Spice_Primitive"
F 5 "sky130_fd_pr__pfet_01v8 l=1 w=1" H 2488 1105 39  0000 L CNN "Spice_Model"
F 6 "Y" H 2488 1014 50  0001 L CNN "Spice_Netlist_Enabled"
F 7 "/home/andrew/pdks/sky130A/libs.tech/ngspice/corners/tt.spice" H 2488 923 50  0001 L CNN "Spice_Lib_File"
	1    2200 1150
	1    0    0    -1  
$EndComp
$Comp
L kicad-sky130:sky130_fd_pr__nfet_01v8 M3
U 1 1 5FE80965
P 4250 2000
F 0 "M3" H 4550 2050 50  0000 L CNN
F 1 "sky130_fd_pr__nfet_01v8" H 4538 2137 50  0001 L CNN
F 2 "" H 4225 2000 50  0001 C CNN
F 3 "~" H 4225 2000 50  0001 C CNN
F 4 "X" H 4538 2046 50  0001 L CNN "Spice_Primitive"
F 5 "sky130_fd_pr__nfet_01v8 l=1 w=1" H 4538 1955 39  0000 L CNN "Spice_Model"
F 6 "Y" H 4538 1864 50  0001 L CNN "Spice_Netlist_Enabled"
F 7 "/home/andrew/pdks/sky130A/libs.tech/ngspice/corners/tt.spice" H 4538 1773 50  0001 L CNN "Spice_Lib_File"
	1    4250 2000
	1    0    0    -1  
$EndComp
$Comp
L kicad-sky130:sky130_fd_pr__pfet_01v8 M4
U 1 1 5FE8118F
P 4250 1150
F 0 "M4" H 4538 1196 50  0000 L CNN
F 1 "sky130_fd_pr__pfet_01v8" H 4538 1287 50  0001 L CNN
F 2 "" H 4250 1150 50  0001 C CNN
F 3 "~" H 4250 1150 50  0001 C CNN
F 4 "X" H 4538 1196 50  0001 L CNN "Spice_Primitive"
F 5 "sky130_fd_pr__pfet_01v8 l=1 w=1" H 4538 1105 39  0000 L CNN "Spice_Model"
F 6 "Y" H 4538 1014 50  0001 L CNN "Spice_Netlist_Enabled"
F 7 "/home/andrew/pdks/sky130A/libs.tech/ngspice/corners/tt.spice" H 4538 923 50  0001 L CNN "Spice_Lib_File"
	1    4250 1150
	1    0    0    -1  
$EndComp
$Comp
L kicad-sky130:sky130_fd_pr__pfet_01v8 M6
U 1 1 5FE81B5E
P 6300 1200
F 0 "M6" H 6588 1246 50  0000 L CNN
F 1 "sky130_fd_pr__pfet_01v8" H 6588 1337 50  0001 L CNN
F 2 "" H 6300 1200 50  0001 C CNN
F 3 "~" H 6300 1200 50  0001 C CNN
F 4 "X" H 6588 1246 50  0001 L CNN "Spice_Primitive"
F 5 "sky130_fd_pr__pfet_01v8 l=1 w=1" H 6588 1155 39  0000 L CNN "Spice_Model"
F 6 "Y" H 6588 1064 50  0001 L CNN "Spice_Netlist_Enabled"
F 7 "/home/andrew/pdks/sky130A/libs.tech/ngspice/corners/tt.spice" H 6588 973 50  0001 L CNN "Spice_Lib_File"
	1    6300 1200
	1    0    0    -1  
$EndComp
$Comp
L kicad-sky130:sky130_fd_pr__nfet_01v8 M5
U 1 1 5FE82541
P 6300 2050
F 0 "M5" H 6600 2100 50  0000 L CNN
F 1 "sky130_fd_pr__nfet_01v8" H 6588 2187 50  0001 L CNN
F 2 "" H 6275 2050 50  0001 C CNN
F 3 "~" H 6275 2050 50  0001 C CNN
F 4 "X" H 6588 2096 50  0001 L CNN "Spice_Primitive"
F 5 "sky130_fd_pr__nfet_01v8 l=1 w=1" H 6588 2005 39  0000 L CNN "Spice_Model"
F 6 "Y" H 6588 1914 50  0001 L CNN "Spice_Netlist_Enabled"
F 7 "/home/andrew/pdks/sky130A/libs.tech/ngspice/corners/tt.spice" H 6588 1823 50  0001 L CNN "Spice_Lib_File"
	1    6300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1550 3800 1550
Wire Wire Line
	3800 1550 3800 1150
Wire Wire Line
	3800 1150 4050 1150
Connection ~ 2300 1550
Wire Wire Line
	2300 1550 2300 1750
Wire Wire Line
	3800 1550 3800 2000
Wire Wire Line
	3800 2000 4050 2000
Connection ~ 3800 1550
Wire Wire Line
	4350 1350 4350 1550
Wire Wire Line
	4450 2200 4350 2200
Wire Wire Line
	4350 2400 4350 2200
Connection ~ 4350 2200
Wire Wire Line
	4450 950  4350 950 
Wire Wire Line
	4350 950  4350 800 
Wire Wire Line
	4350 1550 6000 1550
Wire Wire Line
	6000 1550 6000 1200
Wire Wire Line
	6000 1200 6100 1200
Connection ~ 4350 1550
Wire Wire Line
	4350 1550 4350 1800
Wire Wire Line
	6000 1550 6000 2050
Wire Wire Line
	6000 2050 6100 2050
Connection ~ 6000 1550
Wire Wire Line
	6500 2250 6400 2250
Wire Wire Line
	6400 2250 6400 2450
Connection ~ 6400 2250
Wire Wire Line
	6500 1000 6400 1000
Wire Wire Line
	6400 1000 6400 800 
Connection ~ 6400 1000
Wire Wire Line
	1900 1550 1900 2700
Connection ~ 1900 1550
Wire Wire Line
	1900 1550 1750 1550
Connection ~ 4350 950 
$Comp
L pspice:0 #GND?
U 1 1 5FE91B0E
P 4350 2400
F 0 "#GND?" H 4350 2300 50  0001 C CNN
F 1 "0" H 4350 2489 50  0000 C CNN
F 2 "" H 4350 2400 50  0001 C CNN
F 3 "~" H 4350 2400 50  0001 C CNN
	1    4350 2400
	1    0    0    -1  
$EndComp
$Comp
L pspice:0 #GND?
U 1 1 5FE91FF5
P 6400 2450
F 0 "#GND?" H 6400 2350 50  0001 C CNN
F 1 "0" H 6400 2539 50  0000 C CNN
F 2 "" H 6400 2450 50  0001 C CNN
F 3 "~" H 6400 2450 50  0001 C CNN
	1    6400 2450
	1    0    0    -1  
$EndComp
Text GLabel 4350 800  0    50   BiDi ~ 0
Vdd
Text GLabel 6400 800  0    50   BiDi ~ 0
Vdd
$Comp
L kicad-sky130:sky130_fd_pr__pfet_01v8 M8
U 1 1 5FEA96B1
P 8000 1200
F 0 "M8" H 8288 1246 50  0000 L CNN
F 1 "sky130_fd_pr__pfet_01v8" H 8288 1337 50  0001 L CNN
F 2 "" H 8000 1200 50  0001 C CNN
F 3 "~" H 8000 1200 50  0001 C CNN
F 4 "X" H 8288 1246 50  0001 L CNN "Spice_Primitive"
F 5 "sky130_fd_pr__pfet_01v8 l=1 w=1" H 8288 1155 39  0000 L CNN "Spice_Model"
F 6 "Y" H 8288 1064 50  0001 L CNN "Spice_Netlist_Enabled"
F 7 "/home/andrew/pdks/sky130A/libs.tech/ngspice/corners/tt.spice" H 8288 973 50  0001 L CNN "Spice_Lib_File"
	1    8000 1200
	1    0    0    -1  
$EndComp
$Comp
L kicad-sky130:sky130_fd_pr__nfet_01v8 M7
U 1 1 5FEA96BF
P 8000 2050
F 0 "M7" H 8300 2100 50  0000 L CNN
F 1 "sky130_fd_pr__nfet_01v8" H 8288 2187 50  0001 L CNN
F 2 "" H 7975 2050 50  0001 C CNN
F 3 "~" H 7975 2050 50  0001 C CNN
F 4 "X" H 8288 2096 50  0001 L CNN "Spice_Primitive"
F 5 "sky130_fd_pr__nfet_01v8 l=1 w=1" H 8288 2005 39  0000 L CNN "Spice_Model"
F 6 "Y" H 8288 1914 50  0001 L CNN "Spice_Netlist_Enabled"
F 7 "/home/andrew/pdks/sky130A/libs.tech/ngspice/corners/tt.spice" H 8288 1823 50  0001 L CNN "Spice_Lib_File"
	1    8000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1200 7800 1200
Wire Wire Line
	7700 2050 7800 2050
Wire Wire Line
	8200 2250 8100 2250
Wire Wire Line
	8100 2250 8100 2450
Connection ~ 8100 2250
Wire Wire Line
	8200 1000 8100 1000
Wire Wire Line
	8100 1000 8100 800 
Connection ~ 8100 1000
$Comp
L pspice:0 #GND?
U 1 1 5FEA96D5
P 8100 2450
F 0 "#GND?" H 8100 2350 50  0001 C CNN
F 1 "0" H 8100 2539 50  0000 C CNN
F 2 "" H 8100 2450 50  0001 C CNN
F 3 "~" H 8100 2450 50  0001 C CNN
	1    8100 2450
	1    0    0    -1  
$EndComp
Text GLabel 8100 800  0    50   BiDi ~ 0
Vdd
Wire Wire Line
	8100 1400 8100 1600
Wire Wire Line
	7700 1200 7700 1600
$Comp
L kicad-sky130:sky130_fd_pr__pfet_01v8 M10
U 1 1 5FEC0AFA
P 9750 1200
F 0 "M10" H 10038 1246 50  0000 L CNN
F 1 "sky130_fd_pr__pfet_01v8" H 10038 1337 50  0001 L CNN
F 2 "" H 9750 1200 50  0001 C CNN
F 3 "~" H 9750 1200 50  0001 C CNN
F 4 "X" H 10038 1246 50  0001 L CNN "Spice_Primitive"
F 5 "sky130_fd_pr__pfet_01v8 l=1 w=1" H 10038 1155 39  0000 L CNN "Spice_Model"
F 6 "Y" H 10038 1064 50  0001 L CNN "Spice_Netlist_Enabled"
F 7 "/home/andrew/pdks/sky130A/libs.tech/ngspice/corners/tt.spice" H 10038 973 50  0001 L CNN "Spice_Lib_File"
	1    9750 1200
	1    0    0    -1  
$EndComp
$Comp
L kicad-sky130:sky130_fd_pr__nfet_01v8 M9
U 1 1 5FEC0B08
P 9750 2050
F 0 "M9" H 10050 2100 50  0000 L CNN
F 1 "sky130_fd_pr__nfet_01v8" H 10038 2187 50  0001 L CNN
F 2 "" H 9725 2050 50  0001 C CNN
F 3 "~" H 9725 2050 50  0001 C CNN
F 4 "X" H 10038 2096 50  0001 L CNN "Spice_Primitive"
F 5 "sky130_fd_pr__nfet_01v8 l=1 w=1" H 10038 2005 39  0000 L CNN "Spice_Model"
F 6 "Y" H 10038 1914 50  0001 L CNN "Spice_Netlist_Enabled"
F 7 "/home/andrew/pdks/sky130A/libs.tech/ngspice/corners/tt.spice" H 10038 1823 50  0001 L CNN "Spice_Lib_File"
	1    9750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1200 9550 1200
Wire Wire Line
	9450 2050 9550 2050
Wire Wire Line
	9950 2250 9850 2250
Wire Wire Line
	9850 2250 9850 2450
Connection ~ 9850 2250
Wire Wire Line
	9950 1000 9850 1000
Wire Wire Line
	9850 1000 9850 800 
Connection ~ 9850 1000
$Comp
L pspice:0 #GND?
U 1 1 5FEC0B1A
P 9850 2450
F 0 "#GND?" H 9850 2350 50  0001 C CNN
F 1 "0" H 9850 2539 50  0000 C CNN
F 2 "" H 9850 2450 50  0001 C CNN
F 3 "~" H 9850 2450 50  0001 C CNN
	1    9850 2450
	1    0    0    -1  
$EndComp
Text GLabel 9850 800  0    50   BiDi ~ 0
Vdd
Wire Wire Line
	9850 1400 9850 1600
Wire Wire Line
	9450 1200 9450 1600
Wire Wire Line
	6400 1400 6400 1600
Wire Wire Line
	7700 1600 6400 1600
Connection ~ 7700 1600
Wire Wire Line
	7700 1600 7700 2050
Connection ~ 6400 1600
Wire Wire Line
	6400 1600 6400 1850
Wire Wire Line
	8100 1600 9450 1600
Connection ~ 8100 1600
Wire Wire Line
	8100 1600 8100 1850
Connection ~ 9450 1600
Wire Wire Line
	9450 1600 9450 2050
Wire Wire Line
	9850 1600 10350 1600
Wire Wire Line
	10350 1600 10350 2700
Wire Wire Line
	10350 2700 1900 2700
Connection ~ 9850 1600
Wire Wire Line
	9850 1600 9850 1850
$EndSCHEMATC
