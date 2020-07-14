EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "24 GHz Radar for Movement Detection"
Date "2020-05-13"
Rev "V1.0"
Comp "Communication Major H-da"
Comment1 "Chaithra Mahadeva 766481"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:VCC #PWR02
U 1 1 5EA835D4
P 3600 800
F 0 "#PWR02" H 3600 650 50  0001 C CNN
F 1 "VCC" H 3617 973 50  0000 C CNN
F 2 "" H 3600 800 50  0001 C CNN
F 3 "" H 3600 800 50  0001 C CNN
	1    3600 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EA839B1
P 3600 1200
F 0 "R1" H 3670 1246 50  0000 L CNN
F 1 "1k" H 3670 1155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3530 1200 50  0001 C CNN
F 3 "~" H 3600 1200 50  0001 C CNN
	1    3600 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5EA83D09
P 3600 1800
F 0 "R2" H 3670 1846 50  0000 L CNN
F 1 "1k" H 3670 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3530 1800 50  0001 C CNN
F 3 "~" H 3600 1800 50  0001 C CNN
	1    3600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 800  3600 1050
Wire Wire Line
	3600 1950 3600 2200
$Comp
L Device:C C4
U 1 1 5EA853A2
P 5300 1850
F 0 "C4" H 5415 1896 50  0000 L CNN
F 1 "100n" H 5415 1805 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W2.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 5338 1700 50  0001 C CNN
F 3 "~" H 5300 1850 50  0001 C CNN
	1    5300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2200 5300 2000
Wire Wire Line
	5300 1700 5300 1500
Wire Wire Line
	3600 1350 3600 1500
Wire Wire Line
	2950 1500 3600 1500
Connection ~ 3600 1500
Wire Wire Line
	3600 1500 3600 1650
$Comp
L Device:CP C2
U 1 1 5EA8B7E2
P 3350 3100
F 0 "C2" V 3095 3100 50  0000 C CNN
F 1 "4.7u" V 3186 3100 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 3388 2950 50  0001 C CNN
F 3 "~" H 3350 3100 50  0001 C CNN
	1    3350 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5EA8BD8A
P 3950 3100
F 0 "R3" V 3743 3100 50  0000 C CNN
F 1 "2.2k" V 3834 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3880 3100 50  0001 C CNN
F 3 "~" H 3950 3100 50  0001 C CNN
	1    3950 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 3100 3800 3100
Wire Wire Line
	4100 3100 4250 3100
$Comp
L Device:CP C5
U 1 1 5EA8CB50
P 5900 3000
F 0 "C5" V 6155 3000 50  0000 C CNN
F 1 "4.7u" V 6064 3000 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5938 2850 50  0001 C CNN
F 3 "~" H 5900 3000 50  0001 C CNN
	1    5900 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5EA8D597
P 6550 3000
F 0 "R5" V 6343 3000 50  0000 C CNN
F 1 "2.2k" V 6434 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6480 3000 50  0001 C CNN
F 3 "~" H 6550 3000 50  0001 C CNN
	1    6550 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3000 5300 3000
Wire Wire Line
	6050 3000 6400 3000
Wire Wire Line
	5300 1500 6850 1500
Wire Wire Line
	6850 1500 6850 2800
Wire Wire Line
	6850 2800 7150 2800
Connection ~ 5300 1500
Wire Wire Line
	6700 3000 6900 3000
$Comp
L Device:R R4
U 1 1 5EA913C9
P 4800 3550
F 0 "R4" V 4593 3550 50  0000 C CNN
F 1 "220k" V 4684 3550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4730 3550 50  0001 C CNN
F 3 "~" H 4800 3550 50  0001 C CNN
	1    4800 3550
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5EA91723
P 4800 3900
F 0 "C3" V 4600 3900 50  0000 C CNN
F 1 "1.5n" V 4500 3900 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 4838 3750 50  0001 C CNN
F 3 "~" H 4800 3900 50  0001 C CNN
	1    4800 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 3000 5450 3550
Wire Wire Line
	5450 3900 4950 3900
Connection ~ 5450 3000
Wire Wire Line
	5450 3000 5750 3000
Wire Wire Line
	4250 3100 4250 3550
Wire Wire Line
	4250 3900 4650 3900
Connection ~ 4250 3100
Wire Wire Line
	4250 3100 4550 3100
Wire Wire Line
	4250 3550 4650 3550
Connection ~ 4250 3550
Wire Wire Line
	4250 3550 4250 3900
Wire Wire Line
	4950 3550 5450 3550
Connection ~ 5450 3550
Wire Wire Line
	5450 3550 5450 3900
$Comp
L Device:R R6
U 1 1 5EA9375E
P 7450 3500
F 0 "R6" V 7243 3500 50  0000 C CNN
F 1 "100k" V 7334 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7380 3500 50  0001 C CNN
F 3 "~" H 7450 3500 50  0001 C CNN
	1    7450 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 5EA93C2C
P 7450 3850
F 0 "C6" V 7650 3850 50  0000 C CNN
F 1 "3.3n" V 7750 3850 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.2mm_W4.5mm_P5.00mm_FKS2_FKP2_MKS2_MKP2" H 7488 3700 50  0001 C CNN
F 3 "~" H 7450 3850 50  0001 C CNN
	1    7450 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5EA940DD
P 8400 2900
F 0 "R7" V 8193 2900 50  0000 C CNN
F 1 "100" V 8284 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8330 2900 50  0001 C CNN
F 3 "~" H 8400 2900 50  0001 C CNN
	1    8400 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 2900 8050 3500
Wire Wire Line
	8050 3850 7600 3850
Connection ~ 8050 2900
Wire Wire Line
	8050 2900 8250 2900
Wire Wire Line
	7300 3850 6900 3850
Wire Wire Line
	6900 3850 6900 3500
Connection ~ 6900 3000
Wire Wire Line
	6900 3000 7150 3000
Wire Wire Line
	6900 3500 7300 3500
Connection ~ 6900 3500
Wire Wire Line
	6900 3500 6900 3000
Wire Wire Line
	7600 3500 8050 3500
Connection ~ 8050 3500
Wire Wire Line
	8050 3500 8050 3850
Text Notes 5500 1450 0    50   ~ 0
V_cm\n
Wire Wire Line
	8550 2900 8650 2900
Text Notes 5100 3100 0    50   ~ 0
OP1_out\n
Text Notes 7700 3000 0    50   ~ 0
OP2_out
$Comp
L power:VCC #PWR014
U 1 1 5EBBA4CB
P 10150 3000
F 0 "#PWR014" H 10150 2850 50  0001 C CNN
F 1 "VCC" H 10167 3173 50  0000 C CNN
F 2 "" H 10150 3000 50  0001 C CNN
F 3 "" H 10150 3000 50  0001 C CNN
	1    10150 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5EBBAAFA
P 10150 3450
F 0 "R12" H 10220 3496 50  0000 L CNN
F 1 "470" H 10220 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10080 3450 50  0001 C CNN
F 3 "~" H 10150 3450 50  0001 C CNN
	1    10150 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5EBBB2A9
P 10150 4000
F 0 "D4" V 10189 3883 50  0000 R CNN
F 1 "Blue LED" V 10098 3883 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10150 4000 50  0001 C CNN
F 3 "~" H 10150 4000 50  0001 C CNN
	1    10150 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 3000 10150 3300
Wire Wire Line
	10150 3600 10150 3850
Wire Wire Line
	10150 4150 10150 4400
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5EBCE251
P 1250 1400
F 0 "J1" H 900 1600 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1000 1500 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1250 1400 50  0001 C CNN
F 3 "~" H 1250 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5EBCEBA6
P 2050 1100
F 0 "#PWR07" H 2050 950 50  0001 C CNN
F 1 "VCC" V 2067 1228 50  0000 L CNN
F 2 "" H 2050 1100 50  0001 C CNN
F 3 "" H 2050 1100 50  0001 C CNN
	1    2050 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 1400 1450 1100
Wire Wire Line
	1450 1100 2050 1100
$Comp
L Connector:TestPoint TP3
U 1 1 5EBDBBEA
P 4150 1400
F 0 "TP3" H 4208 1518 50  0000 L CNN
F 1 "OPVCC" H 4208 1427 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 4350 1400 50  0001 C CNN
F 3 "~" H 4350 1400 50  0001 C CNN
	1    4150 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5EBDC0AF
P 5300 2900
F 0 "TP4" H 5358 3018 50  0000 L CNN
F 1 "VOUT1" H 5358 2927 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5500 2900 50  0001 C CNN
F 3 "~" H 5500 2900 50  0001 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 5EBDC5E3
P 8650 2750
F 0 "TP10" H 8708 2868 50  0000 L CNN
F 1 "VOUT2" H 8708 2777 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 8850 2750 50  0001 C CNN
F 3 "~" H 8850 2750 50  0001 C CNN
	1    8650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2900 5300 3000
Connection ~ 5300 3000
Wire Wire Line
	5300 3000 5450 3000
Wire Wire Line
	7750 2900 8050 2900
Wire Wire Line
	8650 2750 8650 2900
Connection ~ 8650 2900
Wire Wire Line
	8650 2900 8850 2900
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 5EBF6DC4
P 9600 1550
F 0 "J2" H 9650 1600 50  0000 L CNN
F 1 "Conn_01x03_Female" H 9050 1800 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Horizontal" H 9600 1550 50  0001 C CNN
F 3 "~" H 9600 1550 50  0001 C CNN
	1    9600 1550
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 5EBF7943
P 10400 1050
F 0 "#PWR016" H 10400 900 50  0001 C CNN
F 1 "VCC" V 10417 1178 50  0000 L CNN
F 2 "" H 10400 1050 50  0001 C CNN
F 3 "" H 10400 1050 50  0001 C CNN
	1    10400 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 1450 10000 1450
Wire Wire Line
	10000 1450 10000 1050
Wire Wire Line
	10000 1050 10400 1050
Wire Wire Line
	10250 1650 10250 1950
Wire Wire Line
	10250 1950 10450 1950
Wire Wire Line
	10500 1550 10500 1500
$Comp
L Arduino_uno:Arduino_Uno_Shield XA1
U 1 1 5EC0013A
P 3350 5850
F 0 "XA1" H 3350 7237 60  0000 C CNN
F 1 "Arduino_Uno_Shield" H 3350 7131 60  0000 C CNN
F 2 "Arduino_uno:Arduino_Uno_Shield" H 5150 9600 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-uno-rev3" H 5150 9600 60  0001 C CNN
	1    3350 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1500 4150 1500
$Comp
L Amplifier_Operational:LM358 U1
U 1 1 5EC03A80
P 4850 3000
F 0 "U1" H 4850 3367 50  0000 C CNN
F 1 "LM358" H 4850 3276 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 4850 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 4850 3000 50  0001 C CNN
	1    4850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1400 4150 1500
Connection ~ 4150 1500
Wire Wire Line
	4150 1500 4400 1500
Wire Wire Line
	4400 1500 4400 2900
Wire Wire Line
	4400 2900 4550 2900
Connection ~ 4400 1500
Wire Wire Line
	4400 1500 5300 1500
$Comp
L Device:R R8
U 1 1 5EC0A455
P 5600 5500
F 0 "R8" H 5670 5546 50  0000 L CNN
F 1 "470" H 5670 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5530 5500 50  0001 C CNN
F 3 "~" H 5600 5500 50  0001 C CNN
	1    5600 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5200 5300 5200
Wire Wire Line
	5600 5200 5600 5350
$Comp
L Device:R R9
U 1 1 5EC0C578
P 5950 5500
F 0 "R9" H 6020 5546 50  0000 L CNN
F 1 "470" H 6020 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5880 5500 50  0001 C CNN
F 3 "~" H 5950 5500 50  0001 C CNN
	1    5950 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5100 5750 5100
Wire Wire Line
	5950 5100 5950 5350
$Comp
L Device:R R10
U 1 1 5EC0EA40
P 6300 5350
F 0 "R10" H 6370 5396 50  0000 L CNN
F 1 "470" H 6370 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6230 5350 50  0001 C CNN
F 3 "~" H 6300 5350 50  0001 C CNN
	1    6300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5000 6300 5000
Wire Wire Line
	6300 5000 6300 5200
$Comp
L Device:LED D1
U 1 1 5EC1121D
P 5600 6050
F 0 "D1" V 5650 6250 50  0000 R CNN
F 1 "Yellow" V 5550 6350 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5600 6050 50  0001 C CNN
F 3 "~" H 5600 6050 50  0001 C CNN
	1    5600 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5EC119DA
P 5950 6050
F 0 "D2" V 6050 5950 50  0000 R CNN
F 1 "Green" V 5950 6000 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5950 6050 50  0001 C CNN
F 3 "~" H 5950 6050 50  0001 C CNN
	1    5950 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5EC120F8
P 6300 6050
F 0 "D3" V 6339 5933 50  0000 R CNN
F 1 "Red" V 6248 5933 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6300 6050 50  0001 C CNN
F 3 "~" H 6300 6050 50  0001 C CNN
	1    6300 6050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 5650 5600 5900
Wire Wire Line
	5950 5650 5950 5900
Wire Wire Line
	6300 5500 6300 5900
Wire Wire Line
	5600 6200 5600 6400
Wire Wire Line
	5950 6200 5950 6400
Wire Wire Line
	6300 6200 6300 6400
$Comp
L Connector:TestPoint TP5
U 1 1 5EC1F0F5
P 5300 5250
F 0 "TP5" H 5242 5276 50  0000 R CNN
F 1 "AUC1" H 5242 5367 50  0000 R CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5500 5250 50  0001 C CNN
F 3 "~" H 5500 5250 50  0001 C CNN
	1    5300 5250
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5EC1F8DE
P 5750 5150
F 0 "TP6" H 5692 5176 50  0000 R CNN
F 1 "AUS2" H 5692 5267 50  0000 R CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 5950 5150 50  0001 C CNN
F 3 "~" H 5950 5150 50  0001 C CNN
	1    5750 5150
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 5EC1FF6E
P 6300 5000
F 0 "TP7" H 6358 5118 50  0000 L CNN
F 1 "AUS3" H 6358 5027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 6500 5000 50  0001 C CNN
F 3 "~" H 6500 5000 50  0001 C CNN
	1    6300 5000
	1    0    0    -1  
$EndComp
Connection ~ 6300 5000
Wire Wire Line
	5300 5250 5300 5200
Connection ~ 5300 5200
Wire Wire Line
	5300 5200 5600 5200
Wire Wire Line
	5750 5150 5750 5100
Connection ~ 5750 5100
Wire Wire Line
	5750 5100 5950 5100
NoConn ~ 4650 4800
NoConn ~ 4650 4900
NoConn ~ 4650 5400
NoConn ~ 4650 5500
NoConn ~ 4650 5600
NoConn ~ 4650 5700
NoConn ~ 4650 5800
NoConn ~ 4650 5900
NoConn ~ 4650 6100
NoConn ~ 4650 6200
NoConn ~ 4650 6300
NoConn ~ 4650 6400
NoConn ~ 4650 6500
NoConn ~ 4650 6600
NoConn ~ 4650 6800
NoConn ~ 4650 6900
NoConn ~ 2050 4800
NoConn ~ 2050 4900
NoConn ~ 2050 5100
NoConn ~ 2050 5200
NoConn ~ 2050 5500
NoConn ~ 2050 5600
NoConn ~ 2050 5700
NoConn ~ 2050 5800
NoConn ~ 2050 5900
NoConn ~ 2050 6100
NoConn ~ 2050 6700
NoConn ~ 2050 6900
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5EC6B6AA
P 2050 7100
F 0 "#FLG01" H 2050 7175 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 7273 50  0000 C CNN
F 2 "" H 2050 7100 50  0001 C CNN
F 3 "~" H 2050 7100 50  0001 C CNN
	1    2050 7100
	0    1    1    0   
$EndComp
Wire Notes Line
	2500 800  650  800 
Wire Notes Line
	2600 550  9250 550 
Wire Notes Line
	9250 550  9250 4350
Wire Notes Line
	9250 4350 2600 4350
Wire Notes Line
	9350 750  9350 2350
Wire Notes Line
	9350 2350 10950 2350
Wire Notes Line
	10950 2350 10950 750 
Wire Notes Line
	10950 750  9350 750 
Wire Notes Line
	9550 2750 10900 2750
Wire Notes Line
	6750 7500 1100 7500
Wire Notes Line
	1100 7500 1100 4400
Text Notes 1250 4600 0    50   ~ 0
FreeSOC2
Text Notes 7500 700  0    50   ~ 0
Amplifier / Band pass Filter Circuit\n
Text Notes 9450 900  0    50   ~ 0
Radar Input
Text Notes 750  950  0    50   ~ 0
Power
Text Notes 9600 2900 0    50   ~ 0
Power LED
Wire Wire Line
	2050 6000 1800 6000
Text Label 1900 6000 0    50   ~ 0
Vout
Text Label 8800 2900 0    50   ~ 0
Vout
Text Label 2850 3100 0    50   ~ 0
Vin
Text Label 10350 1550 0    50   ~ 0
Vin
$Comp
L power:GNDD #PWR021
U 1 1 5EBBFD30
P 10150 4400
F 0 "#PWR021" H 10150 4150 50  0001 C CNN
F 1 "GNDD" H 10154 4245 50  0000 C CNN
F 2 "" H 10150 4400 50  0001 C CNN
F 3 "" H 10150 4400 50  0001 C CNN
	1    10150 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR010
U 1 1 5EBC2E23
P 5600 6400
F 0 "#PWR010" H 5600 6150 50  0001 C CNN
F 1 "GNDD" H 5604 6245 50  0000 C CNN
F 2 "" H 5600 6400 50  0001 C CNN
F 3 "" H 5600 6400 50  0001 C CNN
	1    5600 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR011
U 1 1 5EBC361A
P 5950 6400
F 0 "#PWR011" H 5950 6150 50  0001 C CNN
F 1 "GNDD" H 5954 6245 50  0000 C CNN
F 2 "" H 5950 6400 50  0001 C CNN
F 3 "" H 5950 6400 50  0001 C CNN
	1    5950 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR015
U 1 1 5EBC3C8B
P 6300 6400
F 0 "#PWR015" H 6300 6150 50  0001 C CNN
F 1 "GNDD" H 6304 6245 50  0000 C CNN
F 2 "" H 6300 6400 50  0001 C CNN
F 3 "" H 6300 6400 50  0001 C CNN
	1    6300 6400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5EC684B9
P 1950 7150
F 0 "#PWR05" H 1950 7000 50  0001 C CNN
F 1 "VCC" V 1968 7277 50  0000 L CNN
F 2 "" H 1950 7150 50  0001 C CNN
F 3 "" H 1950 7150 50  0001 C CNN
	1    1950 7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 6800 1950 6800
Wire Wire Line
	1950 6800 1950 7100
Wire Wire Line
	2050 7100 1950 7100
Connection ~ 1950 7100
Wire Wire Line
	1950 7100 1950 7150
$Comp
L power:GNDA #PWR06
U 1 1 5EBE6490
P 3600 2200
F 0 "#PWR06" H 3600 1950 50  0001 C CNN
F 1 "GNDA" H 3605 2027 50  0000 C CNN
F 2 "" H 3600 2200 50  0001 C CNN
F 3 "" H 3600 2200 50  0001 C CNN
	1    3600 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR09
U 1 1 5EBE6ADF
P 5300 2200
F 0 "#PWR09" H 5300 1950 50  0001 C CNN
F 1 "GNDA" H 5305 2027 50  0000 C CNN
F 2 "" H 5300 2200 50  0001 C CNN
F 3 "" H 5300 2200 50  0001 C CNN
	1    5300 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR023
U 1 1 5EBE70FF
P 10450 1950
F 0 "#PWR023" H 10450 1700 50  0001 C CNN
F 1 "GNDA" V 10455 1822 50  0000 R CNN
F 2 "" H 10450 1950 50  0001 C CNN
F 3 "" H 10450 1950 50  0001 C CNN
	1    10450 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR017
U 1 1 5EBE8131
P 8350 1050
F 0 "#PWR017" H 8350 900 50  0001 C CNN
F 1 "VCC" H 8367 1223 50  0000 C CNN
F 2 "" H 8350 1050 50  0001 C CNN
F 3 "" H 8350 1050 50  0001 C CNN
	1    8350 1050
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 3 1 5EBE8945
P 8450 1500
F 0 "U1" H 8408 1546 50  0000 L CNN
F 1 "LM358" H 8408 1455 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 8450 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 8450 1500 50  0001 C CNN
	3    8450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1050 8350 1200
$Comp
L power:GNDA #PWR018
U 1 1 5EBEE2E7
P 8350 1950
F 0 "#PWR018" H 8350 1700 50  0001 C CNN
F 1 "GNDA" H 8355 1777 50  0000 C CNN
F 2 "" H 8350 1950 50  0001 C CNN
F 3 "" H 8350 1950 50  0001 C CNN
	1    8350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1950 8350 1800
Wire Wire Line
	1600 6600 1700 6600
$Comp
L power:GND #PWR01
U 1 1 5EBC8E6D
P 1600 6600
F 0 "#PWR01" H 1600 6350 50  0001 C CNN
F 1 "GND" V 1605 6472 50  0000 R CNN
F 2 "" H 1600 6600 50  0001 C CNN
F 3 "" H 1600 6600 50  0001 C CNN
	1    1600 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 5300 5000 5300
Wire Wire Line
	5000 5300 5000 6500
Wire Wire Line
	5000 6600 5000 6500
Connection ~ 5000 6500
Text Notes 6950 5350 0    50   ~ 0
Star_GND Point\n
Wire Wire Line
	8650 5850 8650 5800
Connection ~ 8650 5850
Wire Wire Line
	7300 5850 7300 5800
Connection ~ 7300 5850
Wire Wire Line
	8650 5900 8650 5850
Wire Wire Line
	7300 5900 7300 5850
$Comp
L power:PWR_FLAG #FLG06
U 1 1 5EBF36E3
P 8650 5800
F 0 "#FLG06" H 8650 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 5950 50  0000 C CNN
F 2 "" H 8650 5800 50  0001 C CNN
F 3 "~" H 8650 5800 50  0001 C CNN
	1    8650 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR022
U 1 1 5EBF2CDD
P 8650 5900
F 0 "#PWR022" H 8650 5650 50  0001 C CNN
F 1 "GNDD" H 8654 5745 50  0000 C CNN
F 2 "" H 8650 5900 50  0001 C CNN
F 3 "" H 8650 5900 50  0001 C CNN
	1    8650 5900
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5EBF2411
P 7300 5800
F 0 "#FLG04" H 7300 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 7150 5950 50  0000 C CNN
F 2 "" H 7300 5800 50  0001 C CNN
F 3 "~" H 7300 5800 50  0001 C CNN
	1    7300 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR019
U 1 1 5EBF1B9E
P 7300 5900
F 0 "#PWR019" H 7300 5650 50  0001 C CNN
F 1 "GNDA" H 7305 5727 50  0000 C CNN
F 2 "" H 7300 5900 50  0001 C CNN
F 3 "" H 7300 5900 50  0001 C CNN
	1    7300 5900
	1    0    0    -1  
$EndComp
Wire Notes Line
	9550 5000 9550 2750
Wire Notes Line
	10900 5000 9550 5000
Wire Notes Line
	10900 2750 10900 5000
Wire Notes Line
	6750 4400 1100 4400
Wire Notes Line
	6750 4400 6750 7500
Wire Wire Line
	2050 6400 1700 6400
Wire Wire Line
	1700 6400 1700 6600
Connection ~ 1700 6600
Wire Wire Line
	1700 6600 1850 6600
Wire Wire Line
	2050 6500 1850 6500
Wire Wire Line
	1850 6500 1850 6600
Connection ~ 1850 6600
Wire Wire Line
	1850 6600 2050 6600
$Comp
L power:GND #PWR020
U 1 1 5EC08466
P 7950 6050
F 0 "#PWR020" H 7950 5800 50  0001 C CNN
F 1 "GND" H 8100 6000 50  0000 C CNN
F 2 "" H 7950 6050 50  0001 C CNN
F 3 "" H 7950 6050 50  0001 C CNN
	1    7950 6050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG05
U 1 1 5EC08C68
P 7800 6050
F 0 "#FLG05" H 7800 6125 50  0001 C CNN
F 1 "PWR_FLAG" V 7700 6200 50  0000 C CNN
F 2 "" H 7800 6050 50  0001 C CNN
F 3 "~" H 7800 6050 50  0001 C CNN
	1    7800 6050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 6000 7950 6050
Wire Wire Line
	7300 5850 7400 5850
Wire Wire Line
	7800 6050 7950 6050
Connection ~ 7950 6050
Wire Wire Line
	5300 6900 5350 6900
Wire Wire Line
	5850 6900 5950 6900
$Comp
L Device:C C7
U 1 1 5EC3B19A
P 5650 7100
F 0 "C7" V 5750 7250 50  0000 C CNN
F 1 "100n" V 5800 7100 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5688 6950 50  0001 C CNN
F 3 "~" H 5650 7100 50  0001 C CNN
	1    5650 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 7100 5350 7100
Wire Wire Line
	5350 7100 5350 6900
Connection ~ 5350 6900
Wire Wire Line
	5350 6900 5450 6900
Wire Wire Line
	5800 7100 5950 7100
Wire Wire Line
	5950 7100 5950 6900
Connection ~ 5950 6900
Wire Wire Line
	5000 6500 5300 6500
Wire Wire Line
	5300 6500 5300 6900
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 5EC507FA
P 7950 5850
F 0 "JP1" H 7950 6055 50  0000 C CNN
F 1 "JMP" H 7950 5964 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 7950 5850 50  0001 C CNN
F 3 "~" H 7950 5850 50  0001 C CNN
	1    7950 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 7000 5000 6900
$Comp
L power:GNDD #PWR013
U 1 1 5EC217E6
P 6100 6900
F 0 "#PWR013" H 6100 6650 50  0001 C CNN
F 1 "GNDD" V 6100 6700 50  0000 C CNN
F 2 "" H 6100 6900 50  0001 C CNN
F 3 "" H 6100 6900 50  0001 C CNN
	1    6100 6900
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5EC72B60
P 5650 6900
F 0 "SW1" H 5400 7000 50  0000 L CNN
F 1 "SW_Push" H 5800 7000 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 5650 7100 50  0001 C CNN
F 3 "~" H 5650 7100 50  0001 C CNN
	1    5650 6900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 5EC722DB
P 5000 7000
F 0 "#PWR012" H 5000 6850 50  0001 C CNN
F 1 "VCC" H 5000 7150 50  0000 C CNN
F 2 "" H 5000 7000 50  0001 C CNN
F 3 "" H 5000 7000 50  0001 C CNN
	1    5000 7000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5EC78F4F
P 5000 6750
F 0 "R11" V 4793 6750 50  0000 C CNN
F 1 "1k" V 4884 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4930 6750 50  0001 C CNN
F 3 "~" H 5000 6750 50  0001 C CNN
	1    5000 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6900 6100 6900
$Comp
L Amplifier_Operational:LM358 U1
U 2 1 5EBD6839
P 7450 2900
F 0 "U1" H 7450 3267 50  0000 C CNN
F 1 "LM358" H 7450 3176 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 7450 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 7450 2900 50  0001 C CNN
	2    7450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1650 10250 1650
Wire Wire Line
	9800 1550 10500 1550
Wire Wire Line
	3000 3100 3200 3100
Connection ~ 3000 3100
Wire Wire Line
	2850 3100 3000 3100
$Comp
L power:GNDA #PWR04
U 1 1 5EBE5D4A
P 2950 2200
F 0 "#PWR04" H 2950 1950 50  0001 C CNN
F 1 "GNDA" H 2955 2027 50  0000 C CNN
F 2 "" H 2950 2200 50  0001 C CNN
F 3 "" H 2950 2200 50  0001 C CNN
	1    2950 2200
	1    0    0    -1  
$EndComp
Wire Notes Line
	2600 4350 2600 550 
Wire Notes Line
	2500 2600 2500 800 
Wire Notes Line
	650  2600 2500 2600
Wire Notes Line
	650  800  650  2600
Wire Wire Line
	3000 2950 3000 3100
$Comp
L Connector:TestPoint TP2
U 1 1 5EBDAE7A
P 3000 2950
F 0 "TP2" H 3058 3068 50  0000 L CNN
F 1 "VIN" H 3058 2977 50  0000 L CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 3200 2950 50  0001 C CNN
F 3 "~" H 3200 2950 50  0001 C CNN
	1    3000 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5EBD35B7
P 7400 5750
F 0 "TP8" H 7650 5850 50  0000 R CNN
F 1 "GNDA" H 7650 5750 50  0000 R CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 7600 5750 50  0001 C CNN
F 3 "~" H 7600 5750 50  0001 C CNN
	1    7400 5750
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 5EBD2CAA
P 8450 5750
F 0 "TP9" H 8400 5850 50  0000 R CNN
F 1 "GNDD" H 8400 5750 50  0000 R CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 8650 5750 50  0001 C CNN
F 3 "~" H 8650 5750 50  0001 C CNN
	1    8450 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1500 1450 1950
$Comp
L power:GND #PWR08
U 1 1 5EBCF14D
P 2050 1950
F 0 "#PWR08" H 2050 1700 50  0001 C CNN
F 1 "GND" V 2055 1822 50  0000 R CNN
F 2 "" H 2050 1950 50  0001 C CNN
F 3 "" H 2050 1950 50  0001 C CNN
	1    2050 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 1650 2950 1500
Wire Wire Line
	2950 2200 2950 1950
$Comp
L Device:CP C1
U 1 1 5EA840FF
P 2950 1800
F 0 "C1" H 3068 1846 50  0000 L CNN
F 1 "22u" H 3068 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2988 1650 50  0001 C CNN
F 3 "~" H 2950 1800 50  0001 C CNN
	1    2950 1800
	1    0    0    -1  
$EndComp
Connection ~ 7400 5850
Wire Wire Line
	7400 5850 7750 5850
Wire Wire Line
	1450 1950 1600 1950
$Comp
L Connector:TestPoint TP1
U 1 1 5EC02CAD
P 1600 2100
F 0 "TP1" H 1542 2126 50  0000 R CNN
F 1 "GND" H 1542 2217 50  0000 R CNN
F 2 "TestPoint:TestPoint_Plated_Hole_D2.0mm" H 1800 2100 50  0001 C CNN
F 3 "~" H 1800 2100 50  0001 C CNN
	1    1600 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 2100 1600 1950
Connection ~ 1600 1950
Wire Wire Line
	1600 1950 2050 1950
Wire Wire Line
	7400 5750 7400 5850
Wire Wire Line
	8150 5850 8450 5850
Wire Wire Line
	8450 5750 8450 5850
Connection ~ 8450 5850
Wire Wire Line
	8450 5850 8650 5850
Wire Notes Line
	9100 5200 9100 6350
Wire Notes Line
	9100 6350 6850 6350
Wire Notes Line
	6850 6350 6850 5200
Wire Notes Line
	6850 5200 9100 5200
$EndSCHEMATC
