
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1885.4182default:default2
0.0002default:defaultZ17-268h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: ad3c37bf
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.012 . Memory (MB): peak = 1885.418 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1885.4182default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?	
?IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
82default:default2
02default:default2?
?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 0 sites available on device, but needs 8 sites.
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin1_i<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin2_i<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin3_i<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin4_i<MSGMETA::END>

"?
btn_tri_i[0]2?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 0 sites available on device, but needs 8 sites.
	Term: :
	Term: "
btn_tri_i[1]:
	Term: "
btn_tri_i[2]:
	Term: "
btn_tri_i[3]:
	Term: "
	ja_pin1_i:
	Term: "
	ja_pin2_i:
	Term: "
	ja_pin3_i:
	Term: "
	ja_pin4_i:

2default:default8Z30-58h px? 
?
?IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
202default:default2
02default:default2?
?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 0 sites available on device, but needs 8 sites.
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin1_i<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin2_i<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin3_i<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin4_i<MSGMETA::END>


 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 20 sites.
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_o[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_o[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_o[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_o[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_t[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_t[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_t[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_t[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin10_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin10_t<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin1_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin2_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin3_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin4_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin7_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin7_t<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin8_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin8_t<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin9_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin9_t<MSGMETA::END>

"?
btn_tri_i[0]2?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 0 sites available on device, but needs 8 sites.
	Term: :
	Term: "
btn_tri_i[1]:
	Term: "
btn_tri_i[2]:
	Term: "
btn_tri_i[3]:
	Term: "
	ja_pin1_i:
	Term: "
	ja_pin2_i:
	Term: "
	ja_pin3_i:
	Term: "?
	ja_pin4_i:?


 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 20 sites.
	Term: "
btn_tri_o[0]:
	Term: "
btn_tri_o[1]:
	Term: "
btn_tri_o[2]:
	Term: "
btn_tri_o[3]:
	Term: "
btn_tri_t[0]:
	Term: "
btn_tri_t[1]:
	Term: "
btn_tri_t[2]:
	Term: "
btn_tri_t[3]:
	Term: "

ja_pin10_o:
	Term: "

ja_pin10_t:
	Term: "
	ja_pin1_o:
	Term: "
	ja_pin2_o:
	Term: "
	ja_pin3_o:
	Term: "
	ja_pin4_o:
	Term: "
	ja_pin7_o:
	Term: "
	ja_pin7_t:
	Term: "
	ja_pin8_o:
	Term: "
	ja_pin8_t:
	Term: "
	ja_pin9_o:
	Term: "
	ja_pin9_t:

2default:default8Z30-58h px? 
?
?IO placement is infeasible. Number of unplaced terminals (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
282default:default2
02default:default2?
?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 0 sites available on device, but needs 8 sites.
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_i[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin1_i<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin2_i<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin3_i<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin4_i<MSGMETA::END>


 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 20 sites.
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_o[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_o[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_o[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_o[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_t[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_t[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_t[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>btn_tri_t[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin10_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin10_t<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin1_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin2_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin3_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin4_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin7_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin7_t<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin8_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin8_t<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin9_o<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>ja_pin9_t<MSGMETA::END>

"?
btn_tri_i[0]2?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  In   RangeId: 1  has only 0 sites available on device, but needs 8 sites.
	Term: :
	Term: "
btn_tri_i[1]:
	Term: "
btn_tri_i[2]:
	Term: "
btn_tri_i[3]:
	Term: "
	ja_pin1_i:
	Term: "
	ja_pin2_i:
	Term: "
	ja_pin3_i:
	Term: "?
	ja_pin4_i:?


 IO Group: 1 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 0 sites available on device, but needs 20 sites.
	Term: "
btn_tri_o[0]:
	Term: "
btn_tri_o[1]:
	Term: "
btn_tri_o[2]:
	Term: "
btn_tri_o[3]:
	Term: "
btn_tri_t[0]:
	Term: "
btn_tri_t[1]:
	Term: "
btn_tri_t[2]:
	Term: "
btn_tri_t[3]:
	Term: "

ja_pin10_o:
	Term: "

ja_pin10_t:
	Term: "
	ja_pin1_o:
	Term: "
	ja_pin2_o:
	Term: "
	ja_pin3_o:
	Term: "
	ja_pin4_o:
	Term: "
	ja_pin7_o:
	Term: "
	ja_pin7_t:
	Term: "
	ja_pin8_o:
	Term: "
	ja_pin8_t:
	Term: "
	ja_pin9_o:
	Term: "
	ja_pin9_t:

2default:default8Z30-58h px? 
?0
'IO placer failed to find a solution
%s
374*place2?0
?0Below is the partial placement that can be analyzed to see if any constraint modifications will make the IO placement problem easier to solve.

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                     IO Placement : Bank Stats                                                                           |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
| Id | Pins  | Terms |                               Standards                                |                IDelayCtrls               |  VREF  |  VCCO  |   VR   | DCI |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|  0 |     0 |     0 |                                                                        |                                          |        |        |        |     |
| 14 |    50 |    10 | LVCMOS33(10)                                                           |                                          |        |  +3.30 |    YES |     |
| 16 |    12 |     2 | LVCMOS33(2)                                                            |                                          |        |  +3.30 |    YES |     |
| 34 |    24 |     4 | LVCMOS33(4)                                                            |                                          |        |  +3.30 |    YES |     |
| 35 |    20 |     8 | LVCMOS33(8)                                                            |                                          |        |  +3.30 |    YES |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|    |   106 |    24 |                                                                        |                                          |        |        |        |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+

IO Placement:
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| BankId |             Terminal | Standard        | Site                 | Pin                  | Attributes           |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 14     | led_16bits_tri_o[0]  | LVCMOS33        | IOB_X0Y3             | U16                  |                      |
|        | led_16bits_tri_o[1]  | LVCMOS33        | IOB_X0Y43            | E19                  |                      |
|        | led_16bits_tri_o[2]  | LVCMOS33        | IOB_X0Y20            | U19                  |                      |
|        | led_16bits_tri_o[3]  | LVCMOS33        | IOB_X0Y19            | V19                  |                      |
|        | led_16bits_tri_o[4]  | LVCMOS33        | IOB_X0Y18            | W18                  |                      |
|        | led_16bits_tri_o[5]  | LVCMOS33        | IOB_X0Y4             | U15                  |                      |
|        | led_16bits_tri_o[6]  | LVCMOS33        | IOB_X0Y0             | U14                  |                      |
|        | led_16bits_tri_o[7]  | LVCMOS33        | IOB_X0Y1             | V14                  |                      |
|        | led_16bits_tri_o[8]  | LVCMOS33        | IOB_X0Y2             | V13                  |                      |
|        | reset                | LVCMOS33        | IOB_X0Y13            | U18                  |                      |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 16     | usb_uart_rxd         | LVCMOS33        | IOB_X0Y112           | B18                  |                      |
|        | usb_uart_txd         | LVCMOS33        | IOB_X0Y111           | A18                  | *                    |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 34     | led_16bits_tri_o[10] | LVCMOS33        | IOB_X1Y37            | W3                   | *                    |
|        | led_16bits_tri_o[11] | LVCMOS33        | IOB_X1Y32            | U3                   |                      |
|        | led_16bits_tri_o[9]  | LVCMOS33        | IOB_X1Y38            | V3                   |                      |
|        | sys_clock            | LVCMOS33        | IOB_X1Y26            | W5                   |                      |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| 35     | ja_pin1_t            | LVCMOS33        | IOB_X1Y93            | J1                   |                      |
|        | ja_pin2_t            | LVCMOS33        | IOB_X1Y89            | L2                   |                      |
|        | ja_pin3_t            | LVCMOS33        | IOB_X1Y95            | J2                   |                      |
|        | ja_pin4_t            | LVCMOS33        | IOB_X1Y97            | G2                   |                      |
|        | led_16bits_tri_o[12] | LVCMOS33        | IOB_X1Y75            | P3                   |                      |
|        | led_16bits_tri_o[13] | LVCMOS33        | IOB_X1Y76            | N3                   |                      |
|        | led_16bits_tri_o[14] | LVCMOS33        | IOB_X1Y61            | P1                   | *                    |
|        | led_16bits_tri_o[15] | LVCMOS33        | IOB_X1Y87            | L1                   | *                    |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
2default:defaultZ30-374h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1ad2bbdb0
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.323 . Memory (MB): peak = 1885.418 ; gain = 0.0002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 1ad2bbdb0
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.324 . Memory (MB): peak = 1885.418 ; gain = 0.0002default:defaulth px? 
?
?Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2*
IO Clock Placer failed2default:defaultZ30-99h px? 
>
)Ending Placer Task | Checksum: 1166dac0a
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.325 . Memory (MB): peak = 1885.418 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
712default:default2
302default:default2
342default:default2
62default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px? 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Oct 27 18:31:56 20212default:defaultZ17-206h px? 


End Record