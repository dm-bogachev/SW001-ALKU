.AUXDATA
N_OX1    "release.grip"
N_OX2    "capture.grip"
N_OX3    "grip.unclamp"
N_OX4    "grip.clamp"
N_OX17    "do.work[1]"
N_OX18    "rs7.tare.chg"
N_OX19    "rs7.locked.zone"
N_OX20    "rs7.finish.ack"
N_OX21    "rs7.put.ack"
N_OX33    "rs7.etalon.stop"
N_OX40    "rs7.det.picked[0]"
N_OX41    "rs7.det.picked[1]"
N_OX42    "rs7.det.picked[2]"
N_OX43    "rs7.det.picked[3]"
N_OX44    "rs7.det.picked[4]"
N_OX45    "rs7.det.picked[5]"
N_OX46    "rs7.det.picked[6]"
N_OX47    "rs7.det.picked[7]"
N_OX48    "rs7.det.picked[8]"
N_OX49    "rs7.det.picked[9]"
N_OX50    "rs7.det.picked[10]"
N_OX51    "rs7.det.picked[11]"
N_OX52    "rs7.det.picked[12]"
N_OX53    "rs7.det.picked[13]"
N_OX54    "rs7.det.picked[14]"
N_OX55    "rs7.det.picked[15]"
N_WX1    "grip.unclamped"
N_WX2    "grip.clamped"
N_WX17    "rs13.work[1]"
N_WX18    "rs13.tare.ack"
N_WX19    "rs13.detail.put"
N_WX20    "rs13.finish"
N_WX22    "rs13.lock.zone"
N_WX25    "rs13.ot.number[0]"
N_WX26    "rs13.ot.number[1]"
N_WX27    "rs13.ot.number[2]"
N_WX28    "rs13.ot.number[3]"
N_WX29    "rs13.ot.number[4]"
N_WX30    "rs13.ot.number[5]"
N_WX31    "rs13.ot.number[6]"
N_WX32    "rs13.ot.number[7]"
N_WX33    "rs13.no.ot.stop"
N_WX40    "rs13.det.put[0]"
N_WX41    "rs13.det.put[1]"
N_WX42    "rs13.det.put[2]"
N_WX43    "rs13.det.put[3]"
N_WX44    "rs13.det.put[4]"
N_WX45    "rs13.det.put[5]"
N_WX46    "rs13.det.put[6]"
N_WX47    "rs13.det.put[7]"
N_WX48    "rs13.det.put[8]"
N_WX49    "rs13.det.put[9]"
N_WX50    "rs13.det.put[10]"
N_WX51    "rs13.det.put[11]"
N_WX52    "rs13.det.put[12]"
N_WX53    "rs13.det.put[13]"
N_WX54    "rs13.det.put[14]"
N_WX55    "rs13.det.put[15]"
N_INT1    "di.ifp.page[1]"
N_INT2    "di.ifp.page[2]"
N_INT3    "di.ifp.page[3]"
N_INT4    "di.ifp.page[4]"
N_INT5    "di.ifp.page[5]"
N_INT6    "di.ifp.page[6]"
N_INT7    "di.ifp.page[7]"
N_INT8    "di.ifp.page[8]"
N_INT9    "di.hold"
N_INT10    "do.home"
N_INT11    "do.bat.alm"
N_INT12    "do.automatic"
N_INT201    "s.tcp.send.ena"
N_INT202    "s.tcp.recv.ena"
N_INT203    "s.tcp.ena"
N_INT204    "s.tcp.log"
N_INT209    "s.zone.blocked"
N_INT212    "do.work[2]"
N_INT213    "do.work[3]"
N_INT214    "do.work[4]"
N_INT215    "do.work[5]"
N_INT216    "do.work[6]"
N_INT217    "do.work[7]"
N_INT218    "do.work[8]"
N_INT221    "s.force.in[1]"
N_INT222    "s.force.in[2]"
N_INT223    "s.defect.pal.ok"
N_INT224    "s.defect.pal.ng"
N_INT225    "s.measure.ok"
N_INT226    "s.measure.ng"
N_INT227    "s.force.defect"
N_INT231    "s.grip.full"
N_INT232    "s.cmd.start"
N_INT233    "s.cmd.pick"
N_INT234    "s.cmd.measured"
N_INT237    "s.cmd.chk.etal"
N_INT238    "s.cmd.finish"
N_INT239    "s.cmd.pause"
N_INT240    "s.cmd.resume"
N_INT241    "s.cmd.stop"
N_INT249    "s.pr.tst.ot"
N_INT250    "s.pr.home"
N_INT251    "s.pr.tch.ot"
N_INT252    "s.pr.tch.defect"
N_INT253    "s.pr.tch.meas"
N_INT254    "s.pr.tch.etal"
N_INT255    "s.pr.tch.pos"
N_INT256    "s.apply.obj"
N_INT260    "s.pr.tch.grip"
N_INT261    "s.hmi.res.state"
N_INT262    "s.hmi.res.act"
N_INT270    "s.ot.spacer"
N_INT271    "s.ot.flip"
N_INT272    "s.etalon.ok"
N_INT273    "s.etalon.ret"
N_INT274    "s.etalon.ng"
N_INT300    "s.debug.mode"
N_INT301    "s.enable.shift"
.END
.INTER_PANEL_D
0,9,1,6,15
6,10,"","PCEXECUTE","AUTOSTART","",10,4,6,1,"PCEXECUTE autostart.pc",0
7,9,2,6,15
13,2,""," DEBUG","--------->","",10,4,11,2003,0
14,9,3,6,15
20,2,""," GRIPPERS","--------->","",10,4,11,2002,0
21,9,8,6,15
27,2,""," TEACH","--------->","",10,4,11,2004,0
28,1,"  Gripper","","","  opened",10,15,4,10,1001,0
29,1,"  Gripper","","","  closed",10,15,4,10,1002,0
30,8,"current.gripper","  CURRENT","  GRIPPER ",10,2,2,1,0
31,8,"hmi.gripper","    HMI","  GRIPPER ",10,2,2,1,0
33,2,"","  Release ","  gripper","",10,4,6,1,-1
34,2,"","  Capture","  gripper","",10,4,6,2,0
35,2,"","   Open ","  gripper","",10,4,5,3,0
36,2,"","   Close","  gripper","",10,4,5,4,0
42,4,1,"OFF     ON","","","FORCE IN 1",10,4,4,0,2221,0
43,4,1,"OFF     ON","","","FORCE IN 2",10,4,4,0,2222,0
49,2,"","   MAIN","<---------","",10,4,11,2001,0
56,14,"tcp.ip","Server IP","",10,15,0
57,8,"tcp.port","Server","port",10,15,5,1,0
58,8,"tcp.sender.dly","Polling","delay, s",10,15,2,2,0
60,8,"object.id","Object ID","",10,15,2,1,0
61,8,"state","  CURRENT","   STATE",10,15,3,1,0
62,2,"","   RESET","   STATE","",10,4,15,2261,0
63,4,1,"OFF     ON","","","TCP COMMON",10,4,4,0,2203,0
64,4,1,"OFF     ON","",""," TCP SEND",10,4,4,0,2201,0
65,4,1,"OFF     ON","",""," TCP RECV",10,4,4,0,2202,0
66,4,1,"OFF     ON","",""," TCP LOG",10,4,4,0,2204,0
67,8,"wdog.tmr","  WATCHDOG"," TIMER, s",10,15,3,1,0
68,14,"action","  CURRENT","  ACTION",10,15,0
69,2,"","   RESET","   ACTION","",10,4,15,2262,0
70,1,"GRIP FULL","","","",10,15,4,10,2231,0
71,1," POS FULL","","","",10,15,4,10,2233,0
75,8,"current.ot","Current OT","  count",10,15,2,1,0
76,4,1,"OFF     ON","","","  DEBUG",10,4,4,0,2300,0
77,2,"","   MAIN","<---------","",10,4,11,2001,0
78,7,"  RS013N"," COUNT OT",10,15,2,0,0,1025,8,1
79,7,"  RS007L","COUNT PICK",10,15,4,0,0,40,16,1
80,7,"  RS013N","COUNT PUT",10,15,4,0,0,1040,16,1
81,8,"count.defect","Current","defect",10,15,2,1,0
82,8,"max.defect.cnt","Max defect","tare count",10,15,2,1,0
83,4,1,"OFF     ON","","","  OT SHIFT",10,4,4,0,2301,0
84,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
85,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
86,8,"hmi.tool.no","    HMI","  GRIPPER ",10,2,2,1,0
90,2,"","   Open ","  gripper","",10,4,5,3,0
91,2,"   PRIME","","   TEACH","POSITIONER",10,4,11,2255,0
97,2,"","   Close","  gripper","",10,4,5,4,0
105,2,"","   MAIN","<---------","",10,4,11,2001,0
108,2,"","   TEACH","  MACHINE","",10,4,11,2005,0
109,2,"","   TEACH","    OT","",10,4,11,2006,0
110,2,"","   TEACH","  DEFECT","",10,4,11,2007,0
111,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
112,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
113,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
114,8,"hmi.tool.no","    HMI","  GRIPPER ",10,2,2,1,0
118,2,"","   Open ","  gripper","",10,4,5,3,0
119,2,"   PRIME","","   TEACH","  MACHINE",10,4,11,2253,0
125,2,"","   Close","  gripper","",10,4,5,4,0
126,2,"   PRIME","","   TEACH","   ETALON",10,4,11,2254,0
127,8,"hmi.etalon.id","  ETALON","    ID",10,2,2,1,0
133,2,"","   MAIN","<---------","",10,4,11,2001,0
136,2,"","   TEACH","POSITIONER","",10,4,11,2004,0
137,2,"","   TEACH","    OT","",10,4,11,2006,0
138,2,"","   TEACH","  DEFECT","",10,4,11,2007,0
139,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
140,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
141,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
142,8,"hmi.tool.no","    HMI","  GRIPPER ",10,2,2,1,0
143,8,"hmi.gx","OBJECT N"," X SHIFT",10,3,4,2,0
144,8,"hmi.gy","OBJECT N"," Y SHIFT",10,3,4,2,0
145,8,"hmi.gz","OBJECT N"," Z SHIFT",10,3,4,2,0
146,2,"","   Open ","  gripper","",10,4,5,3,0
147,2,"   PRIME","","   TEACH","  MACHINE",10,4,11,2251,0
150,8,"hmi.g180x","OBJECT N","180X SHIFT",10,3,4,2,0
151,8,"hmi.g180y","OBJECT N","180Y SHIFT",10,3,4,2,0
152,2,""," APPLY FOR"," N OBJECT","",10,4,14,2256,0
153,2,"","   Close","  gripper","",10,4,5,4,0
154,2,"   PRIME","","    TEST","    OT",10,4,11,2249,0
155,8,"ot.x","    OT","X POSITION",10,3,2,1,0
156,8,"ot.y","    OT","Y POSITION",10,3,2,1,0
157,8,"hmi.ot.k","    OT","  PUT ID ",10,3,3,1,0
158,8,"layout","    OT","  LAYOUT",10,3,3,1,0
159,8,"max.tare.count","MAX TARE ","COUNT",10,3,3,1,0
160,8,"spc.tare.count","SPC TARE ","COUNT",10,3,3,1,0
161,2,"","   MAIN","<---------","",10,4,11,2001,0
164,2,"","   TEACH","POSITIONER","",10,4,11,2004,0
165,2,"","   TEACH","  MACHINE","",10,4,11,2005,0
166,2,"","   TEACH","  DEFECT","",10,4,11,2007,0
167,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
168,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
169,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
170,8,"hmi.defect.pos","  DEFECT","    ID",10,2,2,1,0
174,2,"","   Open ","  gripper","",10,4,5,3,0
175,2,"   PRIME","","   TEACH","  DEFECT",10,4,11,2252,0
177,8,"defect.x.cor","TARE X COR","",10,15,4,2,0
178,8,"defect.y.cor","TARE Y COR","",10,15,4,2,0
179,8,"defect.h.cor","TARE Z COR","",10,15,4,2,0
181,2,"","   Close","  gripper","",10,4,5,4,0
184,8,"defect.x.cor.r","ROUND DET.","  X COR.",10,15,4,2,0
185,8,"defect.y.cor.r","ROUND DET.","  Y COR.",10,15,4,2,0
189,2,"","   MAIN","<---------","",10,4,11,2001,0
192,2,"","   TEACH","POSITIONER","",10,4,11,2004,0
193,2,"","   TEACH","  MACHINE","",10,4,11,2005,0
194,2,"","   TEACH","    OT","",10,4,11,2006,0
195,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
196,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
199,8,"current.gripper","  CURRENT","  GRIPPER ",10,2,2,1,0
200,8,"hmi.gripper","    HMI","  GRIPPER ",10,2,2,1,0
202,2,"","  Capture","  gripper","",10,4,6,2,0
203,2,"   PRIME","","   TEACH","  GRIPPERS",10,4,11,2260,0
209,2,"","  Release ","  gripper","",10,4,6,1,-1
217,2,"","   MAIN","<---------","",10,4,11,2001,0
220,2,"","   TEACH","POSITIONER","",10,4,11,2004,0
221,2,"","   TEACH","  MACHINE","",10,4,11,2005,0
222,2,"","   TEACH","    OT","",10,4,11,2006,0
223,2,"","   TEACH","  DEFECT","",10,4,11,2007,0
.END
.INTER_PANEL_TITLE
"MAIN",1
"GRIPPERS",1
"DEBUG",1
"TEACH POSITIONER",1
"TEACH MEASURE MACHINE",1
"TEACH OT",1
"TEACH DEFECT TARE",1
"",0
"",0
"",0
"",0
"",0
"",0
"",0
"",0
"",0
.END
.INTER_PANEL_COLOR_D
182,3,224,244,28,159,252,255,251,255,0,31,2,241,52,255,
.END
.PROGRAM a.align()@26/06/25 16:05 #0
	;
	SPEED 250 MM/S ALWAYS
	ALIGN
	;
.END
.PROGRAM a.home()@26/06/25 16:05 #0
	;
	SPEED 250 MM/S ALWAYS
	JMOVE #homyak
	;
.END
.PROGRAM a.main()@26/06/25 16:05 #0
	;
	CALL log ("Main program executed")
	CALL safe.home
	;
	WHILE TRUE DO
		.$pg.string = "state" + $ENCODE (/L, state)
		IF EXISTPGM (.$pg.string) THEN
			SCALL .$pg.string
		ELSE
			CALL log ("Error! Program is in wrong state. Connect Robowizard")
			RETURN
		END
		;IF manual.mode THEN
		;  $action = "WaitNextStep"
		;  SWAIT
		;END
	END
	;
.END
.PROGRAM a.teach.defect()@26/07/03 09:07 #0
	IF FALSE THEN
		SPEED 250 MM/S ALWAYS
		ACCURACY 0 ALWAYS
		TOOL tool.pick[hmi.tool.no]
		;
		LMOVE #def.down.right; *** TEACH POINT *** Lower right
		LMOVE #def.up.right; *** TEACH POINT *** Upper right
		LMOVE #def.up.left; *** TEACH POINT *** Upper left
		;
		POINT .x = #def.up.right
		POINT .y = #def.up.left
		POINT .o = #def.down.right
		;
		BREAK
		POINT defect.frame = FRAME (.o, .x, .y, .o)
		;
		.k = 1
		FOR .i = 0 TO 9
			FOR .j = 0 TO 4
				POINT #defect.point[.k] = defect.frame + TRANS (.i * 27.8, .j * 55.6)
				.k = .k + 1
			END
		END
	END
	SPEED 250 MM/S ALWAYS
	ACCURACY 0.02 ALWAYS
	TOOL tool.pick[hmi.tool.no]
	BREAK
	;
	IF hmi.obj.id == round.no THEN
		.xc = defect.x.cor.r
		.yc = defect.y.cor.r
		.rz = 90
	ELSE
		.xc = defect.x.cor
		.yc = defect.y.cor
		.rz = 0
	END
	;
	POINT .defect.pos = #defect.point[hmi.defect.pos]
	POINT .defect.pos = SHIFT (.defect.pos BY .xc, .yc) + RZ (.rz)
	;
	LAPPRO .defect.pos, - (30 + defect.h.cor)
	LAPPRO .defect.pos, -defect.h.cor
	LAPPRO .defect.pos, - (30 + defect.h.cor)
.END
.PROGRAM a.teach.etalon()@26/08/01 01:35 #0
	;
	TOOL tool.pick[hmi.tool.no]
	;
	IF hmi.etalon.id == round.no THEN
		.eshift.x = 0
		.eshift.y = 0
	ELSE
		IF hmi.etalon.id == pawn.no THEN
			.eshift.x = 0
			.eshift.y = 0
		ELSE
			.eshift.x = 0
			.eshift.y = 5
		END
	END
	; Pick etalon
	POINT .et.pos.point = #et.pos.point[hmi.etalon.id]
	JMOVE .et.pos.point + TRANS (0, 0, 50)
	BREAK
	LMOVE #et.pos.point[hmi.etalon.id]; *** TEACH POINT ***
	POINT .et.pos.point = #et.pos.point[hmi.etalon.id]
	BREAK
	TWAIT 0.5
	LMOVE .et.pos.point + TRANS (.eshift.x, .eshift.y, 10)
	LMOVE .et.pos.point + TRANS (0, 0, 50)
	LMOVE #homyak
	BREAK
	TWAIT 0.5
	; Measure etalon
	IF FALSE THEN ; For round details
		TOOL tool.pick[hmi.tool.no]
		JMOVE #safe.machine
		JMOVE #before.machine[2]
		POINT .et.mac.poin = #et.mac.point[hmi.etalon.id]
		JMOVE .et.mac.poin + TRANS (0, 0, 10)
		BREAK
		LMOVE #et.mac.point[hmi.etalon.id]; *** TEACH POINT ***
		POINT .et.mac.poin = #et.mac.point[hmi.etalon.id]
		BREAK
		TWAIT 0.5
		LMOVE .et.mac.poin + TRANS (0, 0, 10)
		BREAK
		TWAIT 0.5
		LMOVE #before.machine[2]
	ELSE
		TOOL tool.pick[hmi.tool.no]
		JMOVE #safe.machine
		JMOVE #before.machine[1]
		POINT .et.mac.poin = #et.mac.point[hmi.etalon.id]
		JMOVE .et.mac.poin + TRANS (0, 10, 0)
		BREAK
		LMOVE #et.mac.point[hmi.etalon.id]; *** TEACH POINT ***
		POINT .et.mac.poin = #et.mac.point[hmi.etalon.id]
		BREAK
		TWAIT 0.5
		LMOVE .et.mac.poin + TRANS (0, 10, 0)
		BREAK
		TWAIT 0.5
		LMOVE #before.machine[1]
	END
	;
	LMOVE #safe.machine
	LMOVE #homyak
	LMOVE .et.pos.point + TRANS (0, 0, 50)
	;
	IF hmi.etalon.id == 5 THEN
		LMOVE .et.pos.point + TRANS (.eshift.x, .eshift.y + 3, 5)
		LMOVE .et.pos.point + TRANS (.eshift.x, .eshift.y, 5)
	ELSE
		LMOVE .et.pos.point + TRANS (.eshift.x, .eshift.y, 10)
	END
	;
	LMOVE #et.pos.point[hmi.etalon.id]
	LMOVE .et.pos.point + TRANS (0, 0, 50)
.END
.PROGRAM a.teach.gripper()@26/06/25 16:05 #0
	;
	TOOL tool.pick[hmi.gripper]
	;
	JMOVE #homyak
	;
	POINT .temp = #tool.point[hmi.gripper]
	JMOVE .temp + TRANS (0, 0, 50)
	BREAK
	;
	LMOVE #tool.point[hmi.gripper]; *** TEACH POINT ***
	BREAK
	PULSE capture.grip
	TWAIT 0.5
	current.gripper = hmi.gripper
	;
	LMOVE .temp + TRANS (0, 0, 200)
	BREAK
	JMOVE #homyak
	;
	LMOVE .temp + TRANS (0, 0, 200)
	LMOVE .temp + TRANS (0, 0, 50)
	BREAK
	LMOVE #tool.point[hmi.gripper]
	BREAK
	PULSE release.grip
	TWAIT 0.5
	current.gripper = 0
	;
	LMOVE .temp + TRANS (0, 0, 50)
	LMOVE .temp + TRANS (0, 0, 200)
	;
.END
.PROGRAM a.teach.machine()@26/08/01 01:14 #0
	IF FALSE THEN ; For round details
		TOOL tool.pick[hmi.tool.no]
		JMOVE #safe.machine
		JMOVE #before.machine[2]
		POINT .temp = #machine.pos[hmi.obj.id]
		JMOVE .temp + TRANS (0, 0, 10)
		BREAK
		LMOVE #machine.pos[hmi.obj.id]
		POINT .temp = #machine.pos[hmi.obj.id]
		BREAK
		TWAIT 0.5
		LMOVE .temp + TRANS (0, 0, 10)
		BREAK
		TWAIT 0.5
		LMOVE #before.machine[2]
	ELSE
		TOOL tool.pick[hmi.tool.no]
		JMOVE #safe.machine
		JMOVE #before.machine[1]
		POINT .temp = #machine.pos[hmi.obj.id]
		JMOVE .temp + TRANS (0, 10, 0)
		BREAK
		LMOVE #machine.pos[hmi.obj.id]
		POINT .temp = #machine.pos[hmi.obj.id]
		BREAK
		TWAIT 0.5
		LMOVE .temp + TRANS (0, 10, 0)
		BREAK
		TWAIT 0.5
		LMOVE #before.machine[1]
	END
.END
.PROGRAM a.teach.ot()@26/06/25 16:05 #0
	SPEED 250 MM/S ALWAYS
	ACCURACY 0 ALWAYS
	TOOL tool.pick[hmi.tool.no]
	;
	LMOVE #ot.down.left; *** TEACH POINT *** Left bottom
	LMOVE #ot.down.right; *** TEACH POINT *** Right bottom
	LMOVE #ot.up.right; *** TEACH POINT *** Right top
	LMOVE #ot.orig; *** TEACH POINT *** Zero point ~
	;
	POINT .ot.down.left = #ot.down.left
	POINT .ot.down.right = #ot.down.right
	POINT .ot.up.right = #ot.up.right
	POINT .ot.orig = #ot.orig
	;
	BREAK
	POINT ot.frame = FRAME (.ot.down.left, .ot.down.right, .ot.up.right, .ot.orig)
	POINT ot.frame = ot.frame + RZ (-180)
	;
	;JMOVE ot.frame + TRANS (grip.xsh[hmi.tool.no], grip.ysh[hmi.tool.no], grip.zsh[hmi.tool.no])
.END
.PROGRAM a.teach.pos()@26/08/01 00:25 #0
	;
	IF hmi.obj.id == round.no THEN
		.shift.x = 0
		.shift.y = 0
	ELSE
		IF hmi.obj.id == pawn.no THEN
			.shift.x = 0
			.shift.y = 0
		ELSE
			.shift.x = 0
			.shift.y = 5
		END
	END
	;
	TOOL tool.pick[hmi.tool.no]
	;
	POINT .temp = #pos.point[hmi.obj.id]
	JMOVE .temp + TRANS (0, 0, 50)
	BREAK
	LMOVE #pos.point[hmi.obj.id]
	POINT .temp = #pos.point[hmi.obj.id]
	BREAK
	TWAIT 0.5
	LMOVE .temp + TRANS (.shift.x, .shift.y, 10)
	LMOVE .temp + TRANS (0, 0, 50)
	BREAK
	TWAIT 0.5
	;
.END
.PROGRAM a.test.gripper()@26/06/25 16:05 #0
	;
	CALL gripper.pick (hmi.gripper)
	CALL gripper.put (hmi.gripper)
	; detail.type
.END
.PROGRAM a.test.ot()@26/06/25 16:05 #0
  IF hmi.ot.k <> -1 THEN
    .$pg = "id" + $ENCODE (/L, hmi.obj.id)
    SCALL .$pg
    CALL ot.calc(TRUE)
    CALL get.ot.point (hmi.ot.k)
  END
  .x = grip.xsh[hmi.obj.id]
  .y = grip.ysh[hmi.obj.id]
  .z = grip.zsh[hmi.obj.id]
  .rz = 0
  IF object.id <> round.no AND ot.y MOD 2 <> 0 AND SIG (s.ot.flip) THEN
    .x = grip.180xsh[hmi.obj.id]
    .y = grip.180ysh[hmi.obj.id]
    .rz = 180
  END
  ;
  POINT .put = ot.put[ot.x, ot.y] + TRANS (.x, .y, .z)
  POINT .putr = ot.put[ot.x, ot.y]+ RZ (.rz) + TRANS (.x, .y, .z)
  POINT .putr2 = ot.put[ot.x, ot.y]+ RZ (.rz / 2) + TRANS (.x, .y, .z)
  LAPPRO .put, -200
  BREAK
  HERE .#temp
  LAPPRO .putr2, -100
  LAPPRO .putr, -50
  LMOVE .putr
  LAPPRO .putr, -50
  LAPPRO .putr2, -100
  LMOVE .#temp
  ;
  
.END
.PROGRAM a.test.ot.pick()@26/06/25 16:05 #1
  ;
  IF hmi.obj.id == round.no THEN
    .shift.x = 0
    .shift.y = 0
  ELSE
    IF hmi.obj.id == pawn.no THEN
      .shift.x = 0
      .shift.y = 0
    ELSE
      .shift.x = 0
      .shift.y = 5
    END
  END
  ;
  TOOL tool.pick[hmi.tool.no]
  ;
  POINT .temp = #pos.point[hmi.obj.id]
  JMOVE .temp + TRANS (0, 0, 50)
  BREAK
  LMOVE #pos.point[hmi.obj.id]
  BREAK
  TWAIT 0.1
  PULSE grip.clamp
  TWAIT 0.3
  ;
  POINT .temp = #pos.point[hmi.obj.id]
  BREAK
  TWAIT 0.5
  LMOVE .temp + TRANS (.shift.x, .shift.y, 10)
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  TWAIT 0.5
  ;
  IF hmi.ot.k <> -1 THEN
    .$pg = "id" + $ENCODE (/L, hmi.obj.id)
    SCALL .$pg
    CALL ot.calc(TRUE)
    CALL get.ot.point (hmi.ot.k)
  END
  .x = grip.xsh[hmi.obj.id]
  .y = grip.ysh[hmi.obj.id]
  .z = grip.zsh[hmi.obj.id]
  .rz = 0
  IF object.id <> round.no AND ot.y MOD 2 <> 0 AND SIG (s.ot.flip) THEN
    .x = grip.180xsh[hmi.obj.id]
    .y = grip.180ysh[hmi.obj.id]
    .rz = 180
  END
  ;
  POINT .put = ot.put[ot.x, ot.y] + TRANS (.x, .y, .z)
  POINT .putr = ot.put[ot.x, ot.y]+ RZ (.rz) + TRANS (.x, .y, .z)
  POINT .putr2 = ot.put[ot.x, ot.y]+ RZ (.rz / 2) + TRANS (.x, .y, .z)
  LAPPRO .put, -200
  BREAK
  HERE .#temp
  LAPPRO .putr2, -100
  LAPPRO .putr, -50
  LMOVE .putr
  TWAIT 0.1
  PULSE grip.unclamp
  TWAIT 0.3
  LAPPRO .putr, -50
  LAPPRO .putr2, -100
  LMOVE .#temp
  ;
.END
.PROGRAM autostart.pc()@26/06/25 16:05 #0
	;
	; System switches
	CP ON
	PREFETCH.SIGINS OFF
	QTOOL OFF
	REP_ONCE ON
	HOLD.STEP ON
	DISP.EXESTEP ON
	PROG.DATE ON
	ABS.SPEED ON
	autostart.pc ON
	errstart.pc ON  ;
	;
	.$rob.name = $SYSDATA (ZROB.NAME)
	.cont.no = SYSDATA (CONT.NO)
	.robot.no = SYSDATA (ZROB.MGFNO)
	.$robot.str = "Robot: " + .$rob.name + " S/N: C" + $ENCODE (/L, .robot.no)
	.$cont.str = "Controller: F60 S/N: C" + $ENCODE (/L, .cont.no)
	IFPWPRINT 8, 1, 1, 5, 10 = .$robot.str, .$cont.str, " ", "Powered by Robowizard Co.Ltd."
	;
	CALL set.io.pc
	CALL set.vars.pc
	;
	MC PRIME a.main
	TWAIT 1
	;
	CALL watchdog.pc
	;
.END
.PROGRAM calc.grid (.teach)
  ; Constants
  line.width = 210; 210; mm
  lines.count = 21
  lines.shift = 16; mm
  obj.spacer = 1.5; mm
  ;
  .max = work.tare.count
  ;
  IF NOT SIG (s.ot.spacer) THEN
    .obj.len = object.length
    .obj.len.w.spc = object.length + obj.spacer
    obj.in.line = INT ((line.width - obj.spacer) / .obj.len.w.spc);
  ELSE
    obj.in.line = .max / 21
    .obj.len.w.spc = line.width / obj.in.line
    .$temp = "Detail 'length':" + $ENCODE (.obj.len.w.spc)
    CALL log (.$temp)
  END
  ;
  .current.ot = BITS(rs13.ot.number[0], 8)
  ;
  IF .teach THEN
    .current.ot = 1
  END
  ;
  IF .current.ot MOD 2 <> 0 OR NOT SIG (s.enable.shift) THEN
    chg.tare.count = .max
    lines.count = 21
    .extra.x = 0
  ELSE
    chg.tare.count = .max - obj.in.line
    ; in case of small values, we need at least one line!!!
    IF chg.tare.count <= 0 THEN
      chg.tare.count = .max
    END
    lines.count = 20
    .extra.x = lines.shift / 2
  END
  ;
  .$temp = "Calc grid for" + $ENCODE (.current.ot) + "," + $ENCODE (lines.count)
  CALL log (.$temp)
  ; If you need to put details by .max
  ;obj.in.line = INT(.max/21);
  ;
  FOR .i = 0 TO lines.count - 1
    FOR .j = 0 TO obj.in.line - 1
      POINT ot.put[.i, .j] = ot.frame + TRANS (-.i * lines.shift - .extra.x, -.j * .obj.len.w.spc)
    END
  END
  ;
.END
.PROGRAM calc.grid.rnd (.teach)
  ; Constants
  lines.count = 11
  obj.in.line = 7
  lines.shift = 27; mm
  ;
  .max = 77
  .obj.shift = 27 ; mm
  ;
  chg.tare.count = work.tare.count
  ;
  .current.ot = BITS(rs13.ot.number[0], 8)
  ;
  IF .teach THEN
    .current.ot = 1
  END
  ;
  .$temp = "Calc grid for" + $ENCODE (.current.ot) + "," + $ENCODE (lines.count)
  CALL log (.$temp)
  
  ;
  FOR .i = 0 TO lines.count - 1
    FOR .j = 0 TO obj.in.line - 1
      POINT ot.put[.i, .j] = ot.frame + TRANS (-.i * lines.shift, -.j * .obj.shift)
    END
  END
  ;
.END
.PROGRAM check.disp.pc()@26/06/25 16:05 #130311453
	;
	IF SIG (s.tcp.ena) AND tcp.ena == -1 THEN
		tcp.ena = tyterm
	END
	IF NOT SIG (s.tcp.ena) AND tcp.ena <> -1 THEN
		tcp.ena = -1
	END
	;
	IF SIG (s.tcp.send.ena) AND tcp.send.ena == -1 THEN
		tcp.send.ena = tyterm
	END
	IF NOT SIG (s.tcp.send.ena) AND tcp.send.ena <> -1 THEN
		tcp.send.ena = -1
	END
	;
	IF SIG (s.tcp.recv.ena) AND tcp.recv.ena == -1 THEN
		tcp.recv.ena = tyterm
	END
	IF NOT SIG (s.tcp.recv.ena) AND tcp.recv.ena <> -1 THEN
		tcp.recv.ena = -1
	END
	;
.END
.PROGRAM check.tasks.pc()@26/06/25 16:05 #130311465
	;
	IF TASK (1002) <> 1 THEN
		PCEXECUTE 2: tcp.client.pc
		TWAIT 3
	END
	IF TASK (1003) <> 1 THEN
		PCEXECUTE 3: tcp.sender.pc
		TWAIT 3
	END
	;
.END
.PROGRAM check.teach.pc()@26/06/25 16:05 #25933040
	;
	IF SIG (s.hmi.res.state) THEN
		state = 0
	END
	;
	IF SIG (s.hmi.res.act) THEN
		$action = " "
	END
	;
	IF SIG (s.pr.tch.pos) AND NOT SWITCH (REPEAT ) THEN
		MC PRIME a.teach.pos
	END
	;
	IF SIG (s.pr.home) AND NOT SWITCH (REPEAT ) THEN
		MC PRIME a.home
	END
	;
	IF SIG (s.pr.tch.defect) AND NOT SWITCH (REPEAT ) THEN
		MC PRIME a.teach.defect
	END
	;
	IF SIG (s.pr.tch.meas) AND NOT SWITCH (REPEAT ) THEN
		MC PRIME a.teach.machine
	END
	;
	IF SIG (s.pr.tch.ot) AND NOT SWITCH (REPEAT ) THEN
		MC PRIME a.teach.ot
	END
	;
	IF SIG (s.pr.tst.ot) AND NOT SWITCH (REPEAT ) THEN
		MC PRIME a.test.ot
	END
	;
	IF SIG (s.pr.tch.etal) AND NOT SWITCH (REPEAT ) THEN
		MC PRIME a.teach.etalon
	END
	;
	IF SIG (s.pr.tch.grip) AND NOT SWITCH (REPEAT ) THEN
		MC PRIME a.teach.gripper
	END
	;
	IF SIG (s.pr.tst.ot.p) AND NOT SWITCH (REPEAT ) THEN
		MC PRIME a.test.ot.pick
	END
	;
	; HMI PANEL OBJECT TEACH DATA
	IF keep.object <> hmi.obj.id AND hmi.obj.id > 0 AND hmi.obj.id <= 64 THEN
		hmi.gx = grip.xsh[hmi.obj.id]
		hmi.gy = grip.ysh[hmi.obj.id]
		hmi.gz = grip.zsh[hmi.obj.id]
		hmi.g180x = grip.180xsh[hmi.obj.id]
		hmi.g180y = grip.180ysh[hmi.obj.id]
		hmi.gmidy = grip.midysh[hmi.obj.id]
		;
		keep.object = hmi.obj.id
	END
	IF SIG (s.apply.obj) THEN
		grip.xsh[hmi.obj.id] = hmi.gx
		grip.ysh[hmi.obj.id] = hmi.gy
		grip.zsh[hmi.obj.id] = hmi.gz
		grip.180xsh[hmi.obj.id] = hmi.g180x
		grip.180ysh[hmi.obj.id] = hmi.g180y
		grip.midysh[hmi.obj.id] = hmi.gmidy
	END
	;
.END
.PROGRAM check.zone.pc()@26/06/25 16:05 #130311495
	;
	;do.work[1] = 17
	;rs13.work[1] = 1017
	;di.hold = 2009
	;s.zone.blocked = 2209
	; do.work[1]     rs13.work[1]             s.zone.blocked
	;----| |-------------| |----------------------( )
	;            |                |
	;            | s.zone.blocked |
	;            --------|/|-------
	;
	; s.zone.blocked   rs13.work[1]  do.work[1]   di.hold
	;------|/|------------| |---------|  |--------(/)
	;
	SOUT 2209 = 17 AND (NOT 1017 OR 2209)
	SOUT 2009 = NOT (NOT 2209 AND 1017 AND 17)
	;
.END
.PROGRAM defect.put()@26/07/03 09:07 #1211
	;
	IF count.defect >= max.defect.cnt THEN
		CALL log ("Defect tare is full. Waiting for tare clean")
		$action = "Paused"
		WAIT count.defect == 0
		$action = " "
	END
	;
	SPEED 100 ALWAYS
	ACCURACY 100 ALWAYS
	TOOL tool.pick[current.gripper]
	;
	IF object.id == round.no THEN
		.xc = defect.x.cor.r
		.yc = defect.y.cor.r
		.rz = 90
	ELSE
		.xc = defect.x.cor
		.yc = defect.y.cor
		.rz = 0
	END
	;
	POINT .temp = #defect.point[count.defect + 1]
	POINT .temp = SHIFT (.temp BY .xc, .yc) + RZ (.rz)
	;
	;
	JMOVE #safe.defect
	;
	CALL log ("Putting to defect tare with No:" + $ENCODE (count.defect + 1))
	;
	ACCURACY 10
	LAPPRO .temp, - (30 + defect.h.cor)
	BREAK
	;
	SPEED 150 MM/S
	ACCURACY 0.02
	LAPPRO .temp, -defect.h.cor
	;LMOVE #defect.point[count.defect+1]
	BREAK
	TWAIT 0.3
	PULSE grip.unclamp
	TWAIT 0.3
	count.defect = count.defect + 1
	SIGNAL -s.grip.full
	;
	ACCURACY 10
	LAPPRO .temp, - (30 + defect.h.cor)
	JMOVE #safe.defect
	LMOVE #homyak
	;
.END
.PROGRAM errstart.pc()@26/06/25 16:05 #685
	;
	IF ERROR == -34021 OR ERROR == -10100 THEN
		tcp.socket = -1
		MC ERESET
		TWAIT 1
	END
	TWAIT 5
	errstart.pc ON
	;
.END
.PROGRAM etalon.measure(.id)@26/07/03 09:54 #427
	IF FALSE THEN
		.id = hmi.etalon.id
	END
	;
	IF .id == etalon.tree.id THEN
		CALL set.grip.tree (TRUE)
	END
	;
	TOOL tool.pick[current.gripper]
	;
	SPEED 20 ALWAYS
	ACCURACY 10 ALWAYS
	;
	POINT .etalon.pos.pt = #et.pos.point[.id]
	POINT .etalon.mac.pt = #et.mac.point[.id]
	IF .id == round.no THEN
		.shift.y = 0
		.shift.z = 50
		.p.idx = 2
	ELSE
		.shift.y = 50
		.shift.z = 0
		.p.idx = 1
	END
	;
	IF .id == round.no THEN
		.eshift.x = 0
		.eshift.y = 0
	ELSE
		IF .id == pawn.no THEN
			.eshift.x = 0
			.eshift.y = 0
		ELSE
			.eshift.x = 0
			.eshift.y = 5
		END
	END
	;
	IF NOT SIG (grip.unclamped) THEN
		PULSE grip.unclamp
		TWAIT 0.5
		CALL log ("Wait for unclamp gripper. State: WaitingGripUnclamped")
		$action = "WaitingGripUnclamped"
		WAIT SIG (grip.unclamped) OR SIG (s.force.in[1])
	END
	; Part 1. Pick etalon
	.$temp = "Pick detail from etalon (ID:" + $ENCODE (.id) + ")"
	CALL log (.$temp)
	LMOVE #safe.etalon
	LMOVE .etalon.pos.pt + TRANS (0, 0, 50)
	LMOVE .etalon.pos.pt + TRANS (0, 0, 30)
	SPEED 50 MM/S
	ACCURACY 0.02
	LMOVE #et.pos.point[.id]
	BREAK
	TWAIT 0.1
	PULSE grip.clamp
	TWAIT 0.3
	SIGNAL s.grip.full
	LMOVE .etalon.pos.pt + TRANS (.eshift.x, .eshift.y, 10)
	ACCURACY 100
	LMOVE .etalon.pos.pt + TRANS (0, 0, 50)
	LMOVE #safe.etalon
	ACCURACY 100
	LMOVE #homyak
	BREAK
	; Part 2. Put etalon
	.$temp = "Measure etalon (ID:" + $ENCODE (.id) + ")"
	CALL log (.$temp)
	; Go to machine
	JMOVE #safe.machine
	JMOVE #before.machine[.p.idx]
	ACCURACY 10
	LMOVE .etalon.mac.pt + TRANS (0, .shift.y, .shift.z)
	ACCURACY 5
	LMOVE .etalon.mac.pt + TRANS (0, .shift.y * 0.2, .shift.z * 0.2)
	SPEED 20 MM/S
	ACCURACY 0.5
	LMOVE #et.mac.point[.id]
	BREAK
	STABLE 0.2
	PULSE grip.unclamp
	TWAIT 0.3
	ACCURACY 5
	LMOVE .etalon.mac.pt + TRANS (0, .shift.y * 0.2, .shift.z * 0.2)
	ACCURACY 10
	LMOVE .etalon.mac.pt + TRANS (0, .shift.y, .shift.z)
	LMOVE #before.machine[.p.idx]
	BREAK
	; Wait result
	CALL log ("Waiting for measurement result")
	$action = "WaitingCalibrationResult"
	WAIT SIG (s.etalon.ok) OR SIG (s.etalon.ret) OR SIG (s.etalon.ng)
	;
	IF SIG (s.etalon.ok) THEN
		CALL log ("Measurement etalon: OK")
	END
	IF SIG (s.etalon.ret) THEN
		CALL log ("Measurement result: RETRY")
	END
	IF SIG (s.etalon.ng) THEN
		CALL log ("Measurement result: NG")
	END
	$action = ""
	; Pick from machine
	ACCURACY 10
	LMOVE .etalon.mac.pt + TRANS (0, .shift.y, .shift.z)
	ACCURACY 5
	LMOVE .etalon.mac.pt + TRANS (0, .shift.y * 0.2, .shift.z * 0.2)
	SPEED 50 MM/S
	ACCURACY 0.5
	LMOVE #et.mac.point[.id]
	BREAK
	STABLE 0.2
	PULSE grip.clamp
	TWAIT 0.3
	; Go home
	ACCURACY 5
	LMOVE .etalon.mac.pt + TRANS (0, .shift.y * 0.2, .shift.z * 0.2)
	ACCURACY 10
	LMOVE .etalon.mac.pt + TRANS (0, .shift.y, .shift.z)
	LMOVE #before.machine[.p.idx]
	;
	; Wait for zone FREE
	SWAIT -rs13.work[1]
	; Part 3 Return Etalon
	.$temp = "Return etalon to positioner (ID:" + $ENCODE (.id) + ")"
	CALL log (.$temp)
	JMOVE #safe.machine
	JMOVE #homyak
	LMOVE #safe.etalon
	LMOVE .etalon.pos.pt + TRANS (0, 0, 50)
	SPEED 100 MM/S
	LMOVE .etalon.pos.pt + TRANS (.eshift.x, .eshift.y, 30)
	;
	IF .id == 5 THEN
		SPEED 50 MM/S
		LMOVE .etalon.pos.pt + TRANS (.eshift.x, .eshift.y + 3, 5)
		SPEED 50 MM/S
		LMOVE .etalon.pos.pt + TRANS (.eshift.x, .eshift.y, 5)
	ELSE
		SPEED 50 MM/S
		LMOVE .etalon.pos.pt + TRANS (.eshift.x, .eshift.y, 10)
	END
	;
	SPEED 20 MM/S
	ACCURACY 0.02
	LMOVE #et.pos.point[.id]
	BREAK
	TWAIT 0.1
	PULSE grip.unclamp
	TWAIT 0.3
	SIGNAL -s.grip.full
	SPEED 50 MM/S
	LMOVE .etalon.pos.pt + TRANS (0, 0, 30)
	ACCURACY 100
	LMOVE .etalon.pos.pt + TRANS (0, 0, 50)
	LMOVE #safe.etalon
	ACCURACY 100
	LMOVE #homyak
	;
	IF .id == etalon.tree.id THEN
		CALL set.grip.tree (FALSE)
	END
	;
.END
.PROGRAM get.ot.point(.obj.id)@26/06/25 16:05 #3890
	ot.x = ms[.obj.id]
	ot.y = ns[.obj.id]
.END
.PROGRAM get.state.pc(.$state)@26/06/25 16:05 #4261062
	.$state = "SPEED:" + $ENCODE (/L, MSPEED) + ";"
	.$state = .$state + "POWER:"
	IF SWITCH (POWER ) THEN
		.$state = .$state + "TRUE;"
	ELSE
		.$state = .$state + "FALSE;"
	END
	; MAX: 12
	;
	.$state = .$state + "CS:"
	IF SWITCH (CS ) THEN
		.$state = .$state + "TRUE;"
	ELSE
		.$state = .$state + "FALSE;"
	END
	; MAX 9
	;
	.$state = .$state + "TEACH:"
	IF SWITCH (REPEAT ) THEN
		.$state = .$state + "FALSE;"
	ELSE
		.$state = .$state + "TRUE;"
	END
	; MAX 12
	;
	.$state = .$state + "TEACHL:"
	IF SWITCH (TEACH_LOCK ) THEN
		.$state = .$state + "TRUE;"
	ELSE
		.$state = .$state + "FALSE;"
	END
	; MAX 13
	;
	.$state = .$state + "TPEMG:"
	IF SWITCH (TP_EMG ) THEN
		.$state = .$state + "TRUE;"
	ELSE
		.$state = .$state + "FALSE;"
	END
	; MAX 12
	;
	.$state = .$state + "OPEMG:"
	IF SWITCH (OP_EMG ) THEN
		.$state = .$state + "TRUE;"
	ELSE
		.$state = .$state + "FALSE;"
	END
	; MAX 12
	;
	.$state = .$state + "EXEMG:"
	IF SWITCH (EX_EMG ) THEN
		.$state = .$state + "TRUE;"
	ELSE
		.$state = .$state + "FALSE;"
	END
	; MAX 12
	;
	.$state = .$state + "ERROR:"
	IF SWITCH (ERROR ) THEN
		.$state = .$state + "TRUE;"
	ELSE
		.$state = .$state + "FALSE;"
	END
	; MAX 12
	;
	.$state = .$state + "ECODE:"
	.$state = .$state + $ENCODE (ERROR) + ";"
	; MAX 12
	;
	.$state = .$state + "HOME:"
	IF SIG (do.home) THEN
		.$state = .$state + "TRUE;"
	ELSE
		.$state = .$state + "FALSE;"
	END
	;; MAX 12
	;;
	.$state = .$state + "BATALM:"
	IF SIG (do.bat.alm) THEN
		.$state = .$state + "TRUE;"
	ELSE
		.$state = .$state + "FALSE;"
	END
	; MAX 12
	.$state = .$state + "\n"
.END
.PROGRAM gripper.pick(.gripper.no)@26/06/25 16:05 #147
	;
	; Start from step 3 to manual check
	IF FALSE THEN
		.gripper.no = hmi.gripper
	END
	; Safety check
	IF current.gripper <> 0 THEN
		CALL log ("Some gripper is already in robot\'s hand")
		RETURN
	END
	PULSE release.grip
	; Log info
	.$temp = "Pick gripper" + $ENCODE (.gripper.no)
	CALL log (.$temp)
	; Set default motion parameters
	SPEED 10 ALWAYS
	ACCURACY 100 ALWAYS
	TOOL tool.pick[.gripper.no]
	; Calculate points
	POINT .temp = #tool.point[.gripper.no]
	; Motion
	LMOVE .temp + TRANS (0, 0, 200)
	;
	ACCURACY 5
	LMOVE .temp + TRANS (0, 0, 50)
	BREAK
	;
	SPEED 50 MM/S ALWAYS
	ACCURACY 0.02
	LMOVE #tool.point[.gripper.no]
	BREAK
	; Capture tool
	PULSE capture.grip
	TWAIT 0.5
	current.gripper = .gripper.no
	;
	SPEED 10 ALWAYS
	ACCURACY 1
	LMOVE .temp + TRANS (0, 0, 10)
	;
	SPEED 10 ALWAYS
	ACCURACY 1
	LMOVE .temp + TRANS (0, 0, 200)
	;
	; Log info
	.$temp = "Gripper" + $ENCODE (.gripper.no) + " picked"
	CALL log (.$temp)
	;
.END
.PROGRAM gripper.put(.gripper.no)@26/06/25 16:05 #147
	;
	; Start from step 3 to manual check
	IF FALSE THEN
		.gripper.no = hmi.gripper
	END
	; Safety check
	IF current.gripper == 0 THEN
		CALL log ("There is no gripper")
		RETURN
	END
	; Log info
	.$temp = "Put gripper" + $ENCODE (.gripper.no)
	CALL log (.$temp)
	; Set default motion parameters
	SPEED 10 ALWAYS
	ACCURACY 100 ALWAYS
	TOOL tool.pick[.gripper.no]
	; Calculate points
	POINT .temp = #tool.point[.gripper.no]
	; Motion
	LMOVE .temp + TRANS (0, 0, 200)
	;
	ACCURACY 5
	LMOVE .temp + TRANS (0, 0, 50)
	BREAK
	;
	SPEED 50 MM/S ALWAYS
	ACCURACY 0.02
	LMOVE #tool.point[.gripper.no]
	BREAK
	; Capture tool
	PULSE release.grip
	TWAIT 0.5
	current.gripper = 0
	;
	SPEED 10 ALWAYS
	ACCURACY 1
	LMOVE .temp + TRANS (0, 0, 200)
	;
	; Log info
	.$temp = "Gripper" + $ENCODE (.gripper.no) + " put"
	CALL log (.$temp)
	.gripper.no = 0
	BREAK
	;
.END
.PROGRAM id1()@26/08/01 20:26 #216; 312.229.002
	; Object ID
	object.id = 1
	etalon.id = 1 ; Can be object.id <> etalon.id
	; Working gripper
	pg13.gripper = 2
	pg7.gripper = 1
	; Max objects in output tare
	;max.tare.count = 147;126
	;spc.tare.count = 126
	; Object length
	object.length = 27.5
	;
	
.END
.PROGRAM id2()@26/06/25 16:05 #26; 0401.17.02.023-02
	; Object ID
	object.id = 2
	etalon.id = 2 ; Can be object.id <> etalon.id
	; Working gripper
	pg13.gripper = 1
	pg7.gripper = 1
	; Max objects in output tare
	;max.tare.count = 105;84
	;spc.tare.count = 84
	; Object length
	object.length = 40
	;
	
.END
.PROGRAM id3()@26/08/02 13:49 #66; 312.229.001
	; Object ID
	object.id = 3
	etalon.id = 3 ; Can be object.id <> etalon.id
	; Working gripper
	pg13.gripper = 3
	pg7.gripper = 2
	; Max objects in output tare
	;max.tare.count = 77;77
	;spc.tare.count = 77
	; Object length
	object.length = 40
	;
	
.END
.PROGRAM id4()@26/08/02 13:49 #52; 440.00.026
	; Object ID
	object.id = 4
	etalon.id = 4 ; Can be object.id <> etalon.id
	; Working gripper
	pg13.gripper = 1
	pg7.gripper = 1
	; Max objects in output tare
	;max.tare.count = 168 ;147
	;spc.tare.count = 147
	; Object length
	object.length = 23.5
	;
	
.END
.PROGRAM id5()@26/08/02 13:50 #25; 440.00.111
	; Object ID
	object.id = 5
	etalon.id = 5 ; Can be object.id <> etalon.id
	; Working gripper
	pg13.gripper = 1
	pg7.gripper = 1
	; Max objects in output tare
	;max.tare.count = 231 ;231
	;spc.tare.count = 231
	; Object length
	object.length = 16
	;
	
.END
.PROGRAM id6()@26/06/25 16:05 #44; 0401.28.02.063
	; Object ID
	object.id = 6
	etalon.id = 6 ; Can be object.id <> etalon.id
	; Working gripper
	pg13.gripper = 1
	pg7.gripper = 1
	; Max objects in output tare
	;max.tare.count = 126 ;126
	;spc.tare.count = 126
	; Object length
	object.length = 28.5
	;
.END
.PROGRAM log(.$msg)@26/06/25 16:05 #74362
	;
	; 1 line = 55 symbols max
	;
	FOR .i = 0 TO 126
		$log.entry[.i] = $log.entry[.i + 1]
	END
	$log.entry[127] = $TIME + " " + .$msg
	;
	IFPWPRINT 1, 1, 1, 9, 10 = $log.entry[116], $log.entry[117], $log.entry[118], $log.entry[119]
	IFPWPRINT 2, 1, 1, 9, 10 = $log.entry[120], $log.entry[121], $log.entry[122], $log.entry[123]
	IFPWPRINT 3, 1, 1, 9, 10 = $log.entry[124], $log.entry[125], $log.entry[126], $log.entry[127]
	;
.END
.PROGRAM log.pc1(.$msg)@26/07/01 13:42 #0
	;
	; 1 line = 55 symbols max
	;
	FOR .i = 0 TO 126
		$log.entry[.i] = $log.entry[.i + 1]
	END
	$log.entry[127] = $TIME + " " + .$msg
	;
	IFPWPRINT 1, 1, 1, 9, 10 = $log.entry[116], $log.entry[117], $log.entry[118], $log.entry[119]
	IFPWPRINT 2, 1, 1, 9, 10 = $log.entry[120], $log.entry[121], $log.entry[122], $log.entry[123]
	IFPWPRINT 3, 1, 1, 9, 10 = $log.entry[124], $log.entry[125], $log.entry[126], $log.entry[127]
	;
.END
.PROGRAM log.pc2(.$msg)@26/08/01 15:09 #2585
	;
	; 1 line = 55 symbols max
	;
	FOR .i = 0 TO 126
		$log.entry[.i] = $log.entry[.i + 1]
	END
	$log.entry[127] = $TIME + " " + .$msg
	;
	IFPWPRINT 1, 1, 1, 9, 10 = $log.entry[116], $log.entry[117], $log.entry[118], $log.entry[119]
	IFPWPRINT 2, 1, 1, 9, 10 = $log.entry[120], $log.entry[121], $log.entry[122], $log.entry[123]
	IFPWPRINT 3, 1, 1, 9, 10 = $log.entry[124], $log.entry[125], $log.entry[126], $log.entry[127]
	;
.END
.PROGRAM measure()@26/07/03 14:20 #4728
	IF FALSE THEN
		.pos = hmi.obj.id
	END
	.pos = object.id
	;
	IF object.id == round.no THEN
		.shift.y = 0
		.shift.z = 50
		.p.idx = 2
	ELSE
		.shift.y = 50
		.shift.z = 0
		.p.idx = 1
	END
	;
	CALL log ("Move to measure machine")
	;$action = "TakingToMM"
	;
	SPEED 100 ALWAYS
	ACCURACY 100 ALWAYS
	TOOL tool.pick[current.gripper]
	;
	POINT .machine.pos = #machine.pos[.pos]
	; Go to machine
	JMOVE #safe.machine
	JMOVE #before.machine[.p.idx]
	ACCURACY 10
	LMOVE .machine.pos + TRANS (0, .shift.y, .shift.z)
	ACCURACY 5
	LMOVE .machine.pos + TRANS (0, .shift.y * 0.2, .shift.z * 0.2)
	STABLE 0.2
	SPEED 20 MM/S
	ACCURACY 0.2
	LMOVE #machine.pos[.pos]
	STABLE 0.2
	BREAK
	;CALL log ("Send command to enable vacuum")
	;$action = "WaitingMMVacuum"
	PULSE grip.unclamp
	TWAIT 0.3
	;
	ACCURACY 5
	LMOVE .machine.pos + TRANS (0, .shift.y * 0.2, .shift.z * 0.2)
	ACCURACY 10
	LMOVE .machine.pos + TRANS (0, .shift.y, .shift.z)
	;
	LMOVE #before.machine[.p.idx]
	BREAK
	; Wait result
	CALL log ("Waiting for measurement result")
	$action = "WaitingMMResult"
	WAIT SIG (s.measure.ok) OR SIG (s.measure.ng)
	SIGNAL s.cmd.measured
	;
	IF SIG (s.measure.ok) THEN
		CALL log ("Measurement result: OK")
	ELSE
		CALL log ("Measurement result: DEFECT")
	END
	$action = ""
	;
	; Pick from machine
	ACCURACY 10
	LMOVE .machine.pos + TRANS (0, .shift.y, .shift.z)
	ACCURACY 5
	LMOVE .machine.pos + TRANS (0, .shift.y * 0.2, .shift.z * 0.2)
	SPEED 100 MM/S
	ACCURACY 0.5
	LMOVE #machine.pos[.pos]
	BREAK
	STABLE 0.2
	PULSE grip.clamp
	TWAIT 0.3
	; Go home
	ACCURACY 5
	LMOVE .machine.pos + TRANS (0, .shift.y * 0.2, .shift.z * 0.2)
	ACCURACY 10
	LMOVE .machine.pos + TRANS (0, .shift.y, .shift.z)
	;
	LMOVE #before.machine[.p.idx]
	JMOVE #safe.machine
	JMOVE #homyak
	;BREAK
	;JMOVE #safe.machine
	;JMOVE #homyak
.END
.PROGRAM old.layout ()
	; Get matrix center
	.center.col = INT (lines.count / 2)
	.center.row = INT (obj.in.line / 2)
	; Get Manhattan distances matrix
	.cell = 0
	;
	FOR .i = 0 TO lines.count - 1
		FOR .j = 0 TO obj.in.line - 1
			.dist = ABS (.i - .center.col) + ABS (.j - .center.row)
			.dists[.cell] = .dist
			ms[.cell] = .i
			ns[.cell] = .j
			.cell = .cell + 1
		END
	END
	.array.size = .cell - 1
	; Bubble sort distances array
	FOR .i = 0 TO .array.size - 1
		FOR .j = 0 TO .array.size - .i - 1
			; Compare by angular distances
			; I don't want to make it
			IF .dists[.j] <> .dists[.j + 1] THEN
				.result = .dists[.j] - .dists[.j + 1]
			ELSE
				.cornera = ABS (ms[.j] - .center.col)
				IF ABS (ns[.j] - .center.row) > .cornera THEN
					.cornera = ABS (ns[.j] - .center.row)
				END
				.cornerb = ABS (ms[.j + 1] - .center.col)
				IF ABS (ns[.j + 1] - .center.row) > .cornerb THEN
					.cornerb = ABS (ns[.j + 1] - .center.row)
				END
				IF .cornera <> .cornerb THEN
					.result = .cornera - .cornerb
				ELSE
					IF ms[.j] <> ms[.j + 1] THEN
						.result = ms[.j] - ms[.j + 1]
					ELSE
						.result = ns[.j] - ns[.j + 1]
					END
				END
			END
			;
			IF .result > 0 THEN
				.tmp.dist = .dists[.j]
				.tmp.m = ms[.j]
				.tmp.n = ns[.j]
				.dists[.j] = .dists[.j + 1]
				ms[.j] = ms[.j + 1]
				ns[.j] = ns[.j + 1]
				.dists[.j + 1] = .tmp.dist
				ms[.j + 1] = .tmp.m
				ns[.j + 1] = .tmp.n
			END
		END
	END
	;
	
.END
.PROGRAM ot.calc (.teach)
  CALL select.layout
  IF object.id == round.no THEN
    CALL calc.grid.rnd(.teach)
  ELSE
    CALL calc.grid(.teach)
  END
  CALL sort.grid
.END
.PROGRAM ot.put()@26/07/03 14:19 #2944
  ;
  SIGNAL rs7.locked.zone
  IF SIG (rs7.tare.chg) THEN
    CALL log ("Waiting for new OT")
    SWAIT -rs7.tare.chg
    count.put = 0
  END
  ;
  CALL log ("Put to OT detail" + $ENCODE (count.put + 1))
  ;$action = "PutToTare"
  ;
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  TOOL tool.pick[current.gripper]
  ;
  CALL ot.calc(FALSE)
  ;
  CALL get.ot.point (count.put)
  ;
  .x = grip.xsh[object.id]
  .y = grip.ysh[object.id]
  .z = grip.zsh[object.id]
  .rz = 0
  IF object.id <> round.no AND ot.y MOD 2 <> 0 AND SIG (s.ot.flip) THEN
    .x = grip.180xsh[object.id]
    .y = grip.180ysh[object.id]
    .rz = 180
  END
  ;
  POINT .put = ot.put[ot.x, ot.y] + TRANS (.x, .y, .z)
  POINT .putr = ot.put[ot.x, ot.y]+ RZ (.rz) + TRANS (.x, .y, .z)
  POINT .putr2 = ot.put[ot.x, ot.y]+ RZ (.rz / 2) + TRANS (.x, .y, .z)
  ;
  SIGNAL rs7.locked.zone
  BREAK
  CALL log ("Check if positioner is occupied")
  SWAIT -rs13.lock.zone
  ;
  LAPPRO .put, -200
  BREAK
  HERE .#temp
  LAPPRO .putr2, -100
  LAPPRO .putr, -50
  LMOVE .putr
  ;
  TWAIT 0.1
  PULSE grip.unclamp
  TWAIT 0.3
  count.put = count.put + 1
  max.count.put = max.count.put + 1
  SIGNAL -s.grip.full
  $action = "WaitPosFull"
  ;
  LAPPRO .putr, -50
  LAPPRO .putr2, -100
  LMOVE .#temp
  ;
  ;IF NOT SIG (s.cmd.pick) THEN
  ;  JMOVE #homyak
  ;  BREAK
  ;  SIGNAL -rs7.locked.zone
  ;END
  ;
  IF count.put >= chg.tare.count THEN
    CALL log ("OT tare full, request change OT")
    SIGNAL rs7.tare.chg
    current.ot = current.ot + 1
    ;
    count.put = 0
    ;
    CALL ot.calc(FALSE)
  END
  ;
.END
.PROGRAM pg.select()@26/06/25 16:05 #403
	SCASE $pg.name OF
		SVALUE "312.229.002":
			CASE detail.spec OF
				VALUE 0:
					CALL id1; idX_1
				VALUE 1:
					CALL id1
				VALUE 2:
					CALL id1
				ANY :
					$pg.name = "NULL"
			END
			;
		SVALUE "0401.17.02.023":
			CASE detail.spec OF
				VALUE 0:
					CALL id2; idX_1
				VALUE 1:
					CALL id2
				VALUE 2:
					CALL id2
				ANY :
					$pg.name = "NULL"
			END
			;
		SVALUE "312.229.001":
			CASE detail.spec OF
				VALUE 0:
					CALL id3; idX_1
				ANY :
					$pg.name = "NULL"
			END
			;
		SVALUE "440.00.026":
			CASE detail.spec OF
				VALUE 0:
					CALL id4; idX_1
				VALUE 1:
					CALL id4
				VALUE 2:
					CALL id4
				VALUE 3:
					CALL id4
				ANY :
					$pg.name = "NULL"
			END
			;
		SVALUE "440.00.111":
			CASE detail.spec OF
				VALUE 0:
					CALL id5; idX_1
				VALUE 2:
					CALL id5
				VALUE 3:
					CALL id5
				ANY :
					$pg.name = "NULL"
			END
			;
		SVALUE "0401.28.02.063":
			CASE detail.spec OF
				VALUE 0:
					CALL id6; idX_1
				VALUE 1:
					CALL id6
				ANY :
					$pg.name = "NULL"
			END
			;
			;
		ANY :
			$pg.name = "NULL"
			RETURN
	END
	;
.END
.PROGRAM pg0()@26/06/25 16:05 #0
	state = 0
	CALL a.main
.END
.PROGRAM pos.pick()@26/07/03 14:17 #4569
	;
	.$temp = "Pick detail from positioner (ID:" + $ENCODE (object.id) + ")"
	CALL log (.$temp)
	;
	TOOL tool.pick[current.gripper]
	;
	SPEED 100 ALWAYS
	ACCURACY 10 ALWAYS
	;
	POINT .temp = #pos.point[object.id]
	;
	IF object.id == round.no THEN
		.shift.x = 0
		.shift.y = 0
	ELSE
		IF object.id == pawn.no THEN
			.shift.x = 0
			.shift.y = 0
		ELSE
			.shift.x = 0
			.shift.y = 5
		END
	END
	;
	SIGNAL rs7.locked.zone
	;
	IF SIG (do.home) THEN
		CALL log ("Check if positioner is occupied")
		SWAIT -rs13.lock.zone
	END
	;
	JMOVE .temp + TRANS (0, 0, 30)
	BREAK
	IF NOT SIG (grip.unclamped) THEN
		PULSE grip.unclamp
		TWAIT 0.5
		CALL log ("Wait for unclamp gripper. State: WaitingGripUnclamped")
		$action = "WaitingGripUnclamped"
		WAIT SIG (grip.unclamped) OR SIG (s.force.in[1])
	END
	;
	SPEED 100 MM/S
	ACCURACY 0.02
	LMOVE #pos.point[object.id]
	BREAK
	TWAIT 0.1
	PULSE grip.clamp
	TWAIT 0.3
	SIGNAL s.grip.full
	SIGNAL -s.cmd.measured
	count.pick = count.pick + 1
	BITS rs7.det.picked[0], 16 = count.pick
	;
	LMOVE .temp + TRANS (.shift.x, .shift.y, 10)
	ACCURACY 100
	LMOVE .temp + TRANS (0, 0, 200)
	ACCURACY 100
	LMOVE #homyak
	;
	BREAK
	SIGNAL -rs7.locked.zone
	;
.END
.PROGRAM safe.home()@26/06/25 16:05 #250
	;
	; Safe zones:
	; 1. OT zone: same as for normal work
	; 2. Machine zone
	; 3. Defect + etalon zone
	;
	IF SIG (do.home) THEN
		CALL log ("Robot already in home position")
	ELSE
		CALL log ("Performing safe motion to home position")
		; In measure machine zone!!!
		; Move to the height of a before machine point
		IF SIG (do.work[2]) THEN
			CALL log ("Move from the measure machine zone")
			IF object.id <> round.no THEN
				.idx = 1
			ELSE
				.idx = 2
			END
			POINT .temp = #before.machine[.idx]
			DECOMPOSE .s[1] = .temp
			POINT .temp = HERE
			DECOMPOSE .c[1] = .temp
			.dz = .s[3] - .c[3]
			DRAW 0, 0, .dz
			LMOVE #before.machine[.idx]
			JMOVE #safe.machine
		END
		; In defect zone
		; Move to the height of a safe point
		IF SIG (do.work[3]) THEN
			CALL log ("Move from the defect zone")
			POINT .temp = #safe.defect
			DECOMPOSE .s[1] = .temp
			POINT .temp = HERE
			DECOMPOSE .c[1] = .temp
			.dz = .s[3] - .c[3]
			DRAW 0, 0, .dz
			LMOVE #safe.defect
		END
		;
		; In OT zone
		; Move to the height of a home POINT
		IF SIG (do.work[1]) THEN
			CALL log ("Move from the OT zone")
			POINT .temp = #homyak
			DECOMPOSE .s[1] = .temp
			POINT .temp = HERE
			DECOMPOSE .c[1] = .temp
			.dz = .s[3] - .c[3]
			DRAW 0, 0, .dz
			LMOVE #homyak
		END
		;
		JMOVE #homyak
		BREAK
		CALL log ("Robot in home position")
	END
	;
.END
.PROGRAM select.layout ()
	;
	CASE layout OF
		VALUE 0:
			SIGNAL -s.ot.flip
			SIGNAL -s.ot.spacer
			work.tare.count = max.tare.count
			CALL log ("Selected layout: no flip, full ot")
		VALUE 1:
			SIGNAL s.ot.flip
			SIGNAL -s.ot.spacer
			work.tare.count = max.tare.count
			CALL log ("Selected layout: flip, full ot")
		VALUE 2:
			SIGNAL -s.ot.flip
			SIGNAL s.ot.spacer
			work.tare.count = spc.tare.count
			CALL log ("Selected layout: no flip, ot w/ space")
		VALUE 3:
			SIGNAL s.ot.flip
			SIGNAL s.ot.spacer
			work.tare.count = spc.tare.count
			CALL log ("Selected layout: flip, ot w/ space")
		ANY :
			CALL log ("Error! Wrong layout. Connect Robowizard")
			state = 255
	END
	;
.END
.PROGRAM set.grip.tree(.set)@26/06/25 16:05 #0
	;
	IF .set == TRUE THEN
		IF current.gripper <> tree.gripper THEN
			CALL log ("Selected wrong gripper, perform change")
			JMOVE #homyak
			IF current.gripper <> 0 THEN
				CALL gripper.put (current.gripper)
			END
			CALL gripper.pick (tree.gripper)
			JMOVE #homyak
			;LMOVE #homyak
		ELSE
			CALL log ("Etalon tree gripper is the same as current gripper")
		END
	ELSE
		IF current.gripper <> pg7.gripper THEN
			CALL log ("Selected wrong gripper, perform change")
			JMOVE #homyak
			IF current.gripper <> 0 THEN
				CALL gripper.put (current.gripper)
			END
			CALL gripper.pick (pg7.gripper)
			JMOVE #homyak
			;LMOVE #homyak
		ELSE
			CALL log ("Etalon tree gripper is the same as current gripper")
		END
	END
	;
.END
.PROGRAM set.io.pc()@26/08/01 15:10 #99
  ; Gripper IO
  ;
  ; Gripper
  release.grip = 1
  capture.grip = 2
  ; Clamp
  grip.unclamped = 1001
  grip.clamped = 1002
  grip.unclamp = 3
  grip.clamp = 4
  ;
  ; Ethernet I/P IO (17-32)
  ;
  ; Inputs
  ;
  rs13.work[1] = 1017
  rs13.tare.ack = 1018
  rs13.detail.put = 1019
  rs13.finish = 1020
  rs13.lock.zone = 1022
  ;rs13.put.ack = 1021
  rs13.ot.number[0] = 1025
  rs13.ot.number[1] = 1026
  rs13.ot.number[2] = 1027
  rs13.ot.number[3] = 1028
  rs13.ot.number[4] = 1029
  rs13.ot.number[5] = 1030
  rs13.ot.number[6] = 1031
  rs13.ot.number[7] = 1032
  ;
  rs13.det.put[0] = 1040
  rs13.det.put[1] = 1041
  rs13.det.put[2] = 1042
  rs13.det.put[3] = 1043
  rs13.det.put[4] = 1044
  rs13.det.put[5] = 1045
  rs13.det.put[6] = 1046
  rs13.det.put[7] = 1047
  rs13.det.put[8] = 1048
  rs13.det.put[9] = 1049
  rs13.det.put[10] = 1050
  rs13.det.put[11] = 1051
  rs13.det.put[12] = 1052
  rs13.det.put[13] = 1053
  rs13.det.put[14] = 1054
  rs13.det.put[15] = 1055
  ;
  rs13.no.ot.stop = 1033
  ;
  ; Outputs
  ;
  do.work[1] = 17
  rs7.tare.chg = 18
  rs7.locked.zone = 19
  rs7.finish.ack = 20
  ;rs7.put.ack = 21
  ;rs13.detail.put = 21
  rs7.det.picked[0] = 40
  rs7.det.picked[1] = 41
  rs7.det.picked[2] = 42
  rs7.det.picked[3] = 43
  rs7.det.picked[4] = 44
  rs7.det.picked[5] = 45
  rs7.det.picked[6] = 46
  rs7.det.picked[7] = 47
  rs7.det.picked[8] = 48
  rs7.det.picked[9] = 49
  rs7.det.picked[10] = 50
  rs7.det.picked[11] = 51
  rs7.det.picked[12] = 52
  rs7.det.picked[13] = 53
  rs7.det.picked[14] = 54
  rs7.det.picked[15] = 55
  ;
  rs7.etalon.stop = 33
  ;
  ; Internal IO
  ;
  ; Dedicated inputs 2001 - 2064
  ;
  ; IFP page change 2001-2008
  di.ifp.page[1] = 2001
  di.ifp.page[2] = 2002
  di.ifp.page[3] = 2003
  di.ifp.page[4] = 2004
  di.ifp.page[5] = 2005
  di.ifp.page[6] = 2006
  di.ifp.page[7] = 2007
  di.ifp.page[8] = 2008
  ;
  di.hold = 2009
  ;
  ; Dedicated outputs 2101-2164
  ;
  do.home = 2010
  do.bat.alm = 2011
  do.automatic = 2012
  ;
  ;
  ; Internal logic 2201 - 2960
  ;
  ; TCP/IP display flags
  s.tcp.send.ena = 2201
  s.tcp.recv.ena = 2202
  s.tcp.ena = 2203
  s.tcp.log = 2204
  ;
  s.zone.blocked = 2209
  ;
  ; Workspaces
  do.work[2] = 2212
  do.work[3] = 2213
  do.work[4] = 2214
  do.work[5] = 2215
  do.work[6] = 2216
  do.work[7] = 2217
  do.work[8] = 2218
  ;
  s.force.in[1] = 2221
  s.force.in[2] = 2222
  ;
  s.defect.pal.ok = 2223
  s.defect.pal.ng = 2224
  s.measure.ok = 2225
  s.measure.ng = 2226
  ;s.force.defect = 2227
  ;
  ;s.stock.opt.ng = 2226
  ;s.ot.pos.ok = 2227
  ;s.ot.pos.ng = 2228
  ;
  ;s.ot.placed = 2229
  ;s.opt.placed = 2230
  ;
  s.grip.full = 2231
  ;
  s.cmd.start = 2232
  s.cmd.pick = 2233
  s.cmd.measured = 2234
  ;s.cmd.pneum.op = 2235
  ;s.cmd.pneum.cl = 2236
  s.cmd.chk.etal = 2237
  s.cmd.finish = 2238
  s.cmd.pause = 2239
  s.cmd.resume = 2240
  s.cmd.stop = 2241
  ;
  s.pr.home = 2250
  s.pr.tch.ot = 2251
  s.pr.tch.defect = 2252
  s.pr.tch.meas = 2253
  s.pr.tch.etal = 2254
  s.pr.tch.pos = 2255
  s.pr.tch.grip = 2260
  ;
  s.apply.obj = 2256
  ;s.apply.cv = 2257
  s.pr.tst.ot = 2249
  ;
  s.ot.spacer = 2270
  s.ot.flip = 2271
  s.etalon.ok = 2272
  s.etalon.ret = 2273
  s.etalon.ng = 2274
  ;
  ;
  ;s.hmi.pneum.op = 2258
  ;s.hmi.pneum.cl = 2259
  ;s.hmi.get.cv = 2260
  s.hmi.res.state = 2261
  s.hmi.res.act = 2262
  ;
  s.debug.mode = 2300
  s.enable.shift = 2301
.END
.PROGRAM set.vars.pc()@26/06/25 16:05 #82
	;
	; Constants
	;
	; Initialize once
	;
	;
	recv.etalon = -1
	;
	IF NOT EXISTREAL ("wdog.tmr") THEN
		wdog.tmr = 120
		$wdog.state = "FALSE"
	END
	;
	IF NOT EXISTREAL ("max.defect.cnt") THEN
		max.defect.cnt = 50
	END
	;
	IF NOT EXISTREAL ("state") THEN
		state = 0
	END
	;
	IF NOT EXISTREAL ("etalon.id") THEN
		etalon.id = -1
	END
	;
	IF NOT EXISTREAL ("round.no") THEN
		round.no = 3
		pawn.no = 5
	END
	;
	IF NOT EXISTCHAR ("$tcp.ip") THEN
		$tcp.ip = "127.0.0.1"
	END
	;
	IF NOT EXISTREAL ("tcp.port") THEN
		tcp.port = 9007
	END
	;
	IF NOT EXISTREAL ("tcp.ena") THEN
		tcp.ena = -1
	END
	;
	IF NOT EXISTREAL ("tcp.recv.ena") THEN
		tcp.recv.ena = -1
	END
	;
	IF NOT EXISTREAL ("tcp.send.ena") THEN
		tcp.send.ena = -1
	END
	;
	IF NOT EXISTREAL ("tcp.sender.dly") THEN
		tcp.sender.dly = 0.25
	END
	;
	IF NOT EXISTREAL ("tyterm") THEN
		tyterm = 0
	END
	;
	IF NOT EXISTCHAR ("$log.entry[127]") THEN
		FOR .i = 0 TO 127
			$log.entry[.i] = " "
		END
	END
	;
	;IF NOT EXISTJOINT ("#current.pos") THEN
	;POINT #current.pos = #homyak
	;END
	;
	IF NOT EXISTREAL ("count.pick") THEN
		count.pick = 0
	END
	;
	IF NOT EXISTREAL ("count.put") THEN
		count.put = 0
	END
	;
	IF NOT EXISTREAL ("count.defect") THEN
		count.defect = 0
	END
	;
	IF NOT EXISTREAL ("current.gripper") THEN
		current.gripper = 1
	END
	;
	IF NOT EXISTREAL ("pg.gripper") THEN
		pg13.gripper = 0
	END
	;
	IF NOT EXISTREAL ("hmi.gripper") THEN
		hmi.gripper = 1
	END
	;
	IF NOT EXISTREAL ("hmi.obj.id") THEN
		hmi.obj.id = 1
	END
	;
	IF NOT EXISTREAL ("hmi.tool.no") THEN
		hmi.tool.no = 1
	END
	;
	IF NOT EXISTREAL ("hmi.defect.pos") THEN
		hmi.defect.pos = 1
	END
	;
	IF NOT EXISTCHAR ("$action") THEN
		$action = "Default"
	END
	;
	;
	IF NOT EXISTCHAR ("$pg.name") THEN
		$pg.name = "Default"
	END
	;
	IF NOT EXISTREAL ("detail.count") THEN
		detail.count = 0
	END
	;
	IF NOT EXISTREAL ("keep.object") THEN
		keep.object = -1
	END
	;
	FOR .n = 1 TO 64
		.$name = "grip.xsh[" + $ENCODE (/L, .n) + "]"
		IF NOT EXISTREAL (.$name) THEN
			grip.xsh[.n] = 0
			grip.ysh[.n] = 0
			grip.zsh[.n] = 0
			grip.180xsh[.n] = 0
			grip.180ysh[.n] = 0
		END
	END
	;
.END
.PROGRAM ship.pos()@26/06/25 16:05 #0
	JOINT SPEED9 ACCU1 TIMER0 TOOL1 WORK0 CLAMP OX= WX= #[0,10,-157,-90,-125,15] ;
.END
.PROGRAM sort.grid ()
	; Get matrix center
	.center.col = INT (lines.count / 2)
	.center.row = INT (obj.in.line / 2)
	.cell = 0
	;
	; Stage 1: Add extreme columns (left and right edges)
	FOR .row = 0 TO obj.in.line - 1
		ms[.cell] = 0
		ns[.cell] = .row
		.cell = .cell + 1
	END
	IF lines.count > 1 THEN
		FOR .row = 0 TO obj.in.line - 1
			ms[.cell] = lines.count - 1
			ns[.cell] = .row
			.cell = .cell + 1
		END
	END
	;
	; Stage 2: Add center column
	FOR .row = 0 TO obj.in.line - 1
		ms[.cell] = .center.col
		ns[.cell] = .row
		.cell = .cell + 1
	END
	;
	; Stage 3: Add from center outward (excluding center and edges)
	FOR .offset = 1 TO .center.col - 1
		.left = .center.col - .offset
		.right = .center.col + .offset
		; Left column
		FOR .row = 0 TO obj.in.line - 1
			ms[.cell] = .left
			ns[.cell] = .row
			.cell = .cell + 1
		END
		; Right column
		IF .right < lines.count AND .right <> .left THEN
			FOR .row = 0 TO obj.in.line - 1
				ms[.cell] = .right
				ns[.cell] = .row
				.cell = .cell + 1
			END
		END
	END
	;
.END
.PROGRAM state0()@26/07/02 22:07 #287; Initialization of parameters
	;
	CALL log ("State 0: Program reset. Initialization of parameters")
	SIGNAL -s.grip.full, -s.measure.ok, -s.measure.ng, -rs7.tare.chg, -s.cmd.measured
	SIGNAL -s.cmd.start, -s.cmd.pick, -s.cmd.finish, -rs7.locked.zone, -s.cmd.stop
	SIGNAL -s.cmd.chk.etal, -rs7.etalon.stop
	SIGNAL -s.cmd.resume, -s.cmd.pause
	SIGNAL -s.etalon.ok, -s.etalon.ret, -s.etalon.ng
	SIGNAL s.force.in[1], s.force.in[2]
	count.pick = 0
	BITS rs7.det.picked[0], 16 = count.pick
	count.put = 0
	current.ot = 1
	state = 100
	;
.END
.PROGRAM state1()@26/06/25 16:05 #5133; Pick from positioner
	CALL log ("State 1: Pick from positioner")
	; Check all start positions
	; Possible do not needed because robot can be only in HOME or near positioner
	;JMOVE #homyak
	;
	CALL pos.pick
	;
	state = 101
	;
.END
.PROGRAM state100()@26/06/25 16:05 #354; Waiting for start
	;
	CALL log ("State 100: Waiting for start")
	$action = "WaitingForStart"
	;
	WHILE NOT SIG (s.cmd.start) DO
		TWAIT 0.5
	END
	SIGNAL -s.cmd.start
	SIGNAL -s.cmd.stop
	SIGNAL -rs7.finish.ack
	max.count.put = 0
	;
	CALL log ("START with Name:" + $pg.name + "-" + $ENCODE (/L, detail.spec) + " Count:" + $ENCODE (detail.count) + " OT:" + $ot.data + " OPT:" + $opt.data)
	;
	CALL pg.select
	state = 106
.END
.PROGRAM state101()@26/06/25 16:05 #16500; Auxilary state
	CALL log ("State 101: Calculating next step")
	state = 102
.END
.PROGRAM state102()@26/07/03 15:16 #1141326; Decision making
	; Priority 1
	IF SIG (s.cmd.pause) THEN
		state = 105
		RETURN
	END
	IF SIG (s.cmd.chk.etal) AND NOT SIG (s.grip.full) THEN
		state = 5
		RETURN
	END
	; Priority 2
	;IF SIG (s.cmd.stop) AND BITS (rs13.det.put[0], 16) <= count.pick THEN
	;  state = 6
	;  RETURN
	;END
	; Priority 3
	IF NOT SIG (s.grip.full) THEN
		$action = "WaitPosFull"
		IF SIG (s.cmd.pick) AND NOT SIG (rs13.work[1]) AND BITS (rs13.det.put[0], 16) > count.pick THEN
			state = 1
			RETURN
		END
	END
	; Priority 4
	IF SIG (s.grip.full) AND NOT SIG (s.cmd.measured) AND NOT SIG (rs7.etalon.stop) THEN
		state = 2
		RETURN
	END
	; Priority 5
	IF SIG (s.grip.full) AND SIG (s.measure.ok) AND NOT SIG (rs7.tare.chg) AND NOT SIG (rs7.etalon.stop) THEN
		state = 3
		RETURN
	END
	; Priority 6
	IF SIG (s.grip.full) AND (SIG (s.measure.ng) OR SIG (rs7.etalon.stop)) THEN
		state = 4
		RETURN
	END
	; Priority 7
	IF NOT SIG (s.grip.full) THEN; AND NOT SIG (s.cmd.pick) THEN
		JMOVE #homyak
		BREAK
		SIGNAL -rs7.locked.zone
	END
	;
	; Priority 8
	IF SIG (rs13.finish) AND NOT SIG (s.grip.full) AND NOT (BITS (rs13.det.put[0], 16) > count.pick) THEN
		state = 103
		RETURN
	END
	;
	IF SIG (rs13.no.ot.stop) THEN
		state = 103
		RETURN
	END
	;
.END
.PROGRAM state103()@26/07/02 08:12 #334; Auxilary state
	CALL log ("State 103: Calculating ending sequence step")
	state = 104
	;
.END
.PROGRAM state104()@26/07/03 15:16 #331; Ending sequence
	;
	IF NOT SIG (s.grip.full) THEN; AND NOT SIG (s.cmd.pick) THEN
		JMOVE #homyak
		BREAK
		SIGNAL -rs7.locked.zone
	END
	SIGNAL rs7.finish.ack
	state = 255
	RETURN
	;
.END
.PROGRAM state105()@26/06/26 14:27 #133; Program paused
	CALL log ("State 105: Program paused")
	$action = "Paused"
	SWAIT s.cmd.resume
	SIGNAL -s.cmd.resume
	$action = " "
	CALL log ("Program resumed")
	SIGNAL -s.cmd.pause
	state = 101
.END
.PROGRAM state106()@26/06/25 16:05 #466; Check program
  CALL log ("State 106: Check program")
  IF $pg.name <> "NULL" THEN
    CALL log ("Selected program: " + $pg.name)
    ;
    CALL ot.calc(FALSE)
    ;
    IF state == 255 THEN
      RETURN
    END
    ;
    state = 7
  ELSE
    CALL log ("Wrong program name. Program reset")
    BREAK
    $action = "WrongProgramName"
    TWAIT 10
    BREAK
    state = 0
  END
  ;
.END
.PROGRAM state2()@26/06/25 16:05 #5033; Measurement process
	CALL log ("State 2: Measurement process")
	; Check all start positions
	; Possible do not needed because robot can be only in HOME or near positioner
	;JMOVE #homyak
	;
	CALL measure
	$action = "WaitPosFull"
	;
	state = 101
	;
.END
.PROGRAM state255()@26/06/25 16:05 #335
	CALL log ("State 255: Program complete")
	state = 0
	;
.END
.PROGRAM state3()@26/06/25 16:05 #3787; Put detail to OT
	CALL log ("State 3: Put detail to OT")
	; Check all start positions
	; Possible do not needed because robot can be only in HOME or near positioner
	;JMOVE #homyak
	;
	SIGNAL -s.measure.ok, -s.measure.ng
	CALL ot.put
	;
	state = 101
	;
.END
.PROGRAM state4()@26/06/25 16:05 #1317; State 4: Put detail to defect tare
	CALL log ("State 4: Put detail to defect tare")
	; Check all start positions
	; Possible do not needed because robot can be only in HOME or near positioner
	;JMOVE #homyak
	;
	SIGNAL -s.measure.ok, -s.measure.ng
	CALL defect.put
	;
	state = 101
	;
.END
.PROGRAM state5()@26/06/26 14:27 #958; Check etalon
	CALL log ("State 5: Check etalon")
	; TEMPORARY!!!!!!!!
	;  state = 101
	;  SIGNAL -s.cmd.chk.etal
	;  RETURN
	SIGNAL -s.etalon.ok, -s.etalon.ret, -s.etalon.ng
	IF recv.etalon == 99 THEN
		CALL etalon.measure (99)
	ELSE
		CALL etalon.measure (etalon.id)
	END
	;
	IF SIG (s.etalon.ok) THEN
		CALL log ("Etalon measurement result OK (0)")
		state = 101
	END
	IF SIG (s.etalon.ret) THEN
		; Pause robot
		CALL log ("Etalon measurement result RETRY (-1, -3)")
		$action = "Paused"
		WAIT SIG (s.cmd.resume) OR SIG (s.cmd.stop)
		IF SIG (s.cmd.resume) THEN
			state = 5
			SIGNAL -s.cmd.resume
		ELSE
			SIGNAL rs7.etalon.stop
			SIGNAL -s.cmd.stop
			state = 101
		END
	END
	IF SIG (s.etalon.ng) THEN
		CALL log ("Etalon measurement result FAIL (-2, -4)")
		SIGNAL rs7.etalon.stop
		;SIGNAL s.force.defect
		state = 101
	END
	SIGNAL -s.cmd.chk.etal
	;
.END
.PROGRAM state6()@26/06/25 16:05 #0; Deprecated
	state = 103
.END
.PROGRAM state7()@26/06/25 16:05 #388; Deprecated
	CALL log ("State 7: Check if gripper change is required")
	; We are at home at this point. No cases without home!
	IF current.gripper <> pg7.gripper THEN
		CALL log ("Selected wrong gripper, perform change")
		JMOVE #defect.safe
		IF current.gripper <> 0 THEN
			CALL gripper.put (current.gripper)
		END
		CALL gripper.pick (pg7.gripper)
		JMOVE #defect.safe
		;LMOVE #homyak
	ELSE
		CALL log ("Program gripper is the same as current gripper")
	END
	;
	SIGNAL s.cmd.chk.etal
	state = 5
.END
.PROGRAM state8()@26/06/25 16:05 #6; Check etalon by command
	CALL log ("State 8: Check etalon by command")
	CALL etalon.measure (etalon.id)
	state = 105
.END
.PROGRAM tcp.callback.pc(.$data[],.data.length)@26/08/01 15:10 #104704
	.$temp = "Received " + $ENCODE (.data.length) + " strings:"
	PRINT tcp.recv.ena: .$temp
	FOR .i = 1 TO .data.length
		PRINT tcp.recv.ena: .$data[.i]
		CALL tcp.log.pc (.$data[.i])
		;
		; Strings for parsing
		;
		; START COMMAND
		; String format:
		; START;DETAILNAME;DETAILSPEC;DETAILCOUNT;[INTAREID1,INTAREID2,..];[OTAREID1,INTAREID2,..];
		IF INSTR (.$data[.i] , "START") THEN
			; Decode command
			.$temp = $DECODE (.$data[1], ";",0)
			.$temp = $DECODE (.$data[1], ";",1)
			; Decode detail type
			$pg.name = $DECODE (.$data[1], ";",0)
			.$temp = $DECODE (.$data[1], ";",1)
			; Decode detail spec
			detail.spec = VAL ($DECODE (.$data[1], ";",0))
			.$temp = $DECODE (.$data[1], ";",1)
			; Decode detail count
			detail.count = VAL ($DECODE (.$data[1], ";",0))
			.$temp = $DECODE (.$data[1], ";",1)
			; Decode intare ids
			$ot.data = $DECODE (.$data[1], ";",0)
			; Decode outtare ids
			.$temp = $DECODE (.$data[1], ";",1)
			$opt.data = $DECODE (.$data[1], ";",0)
			; Decode layout
			.$temp = $DECODE (.$data[1], ";",1)
			max.tare.count = VAL ($DECODE (.$data[1], ";",0))
			;
			.$temp = $DECODE (.$data[1], ";",1)
			spc.tare.count = VAL ($DECODE (.$data[1], ";",0))
			;
			.$temp = $DECODE (.$data[1], ";",1)
			layout = VAL ($DECODE (.$data[1], ";",0))
			;
			.$temp = $DECODE (.$data[1], ";",1)
			.$awave = $DECODE (.$data[1], ";",0)
			IF INSTR (.$awave , "AWON") THEN
				SIGNAL s.enable.shift
			ELSE
				SIGNAL -s.enable.shift
			END
			PULSE s.cmd.start, 5
		END
		;
		; SENSOR COMMAND
		; String format:
		; SENSOR;SENSORNAME;STATE;
		IF INSTR (.$data[.i] , "SENSOR") THEN
			; Decode command
			.$temp = $DECODE (.$data[1], ";",0)
			.$temp = $DECODE (.$data[1], ";",1)
			; Decode sensor name
			.$sensor.name = $DECODE (.$data[1], ";",0)
			.$temp = $DECODE (.$data[1], ";",1)
			; Decode sensor state
			.$sensor.state = $DECODE (.$data[1], ";",0)
			;
			IF INSTR (.$sensor.state , "TRUE") THEN
				IF .$sensor.name == "DEFECTPALLETSENSOR" THEN
					PULSE s.defect.pal.ok, 5
				END
			ELSE
				IF .$sensor.name == "DEFECTPALLETSENSOR" THEN
					PULSE s.defect.pal.ng, 5
				END
			END
		END
		;
		;ETALONRESULT COMMAND
		; String format:
		;ETALONRESULT;RESULT;
		IF INSTR (.$data[.i] , "ETALONRESULT") THEN
			; Decode command
			.$temp = $DECODE (.$data[1], ";",0)
			.$temp = $DECODE (.$data[1], ";",1)
			; Decode state
			.$state = $DECODE (.$data[1], ";",0)
			.$temp = $DECODE (.$data[1], ";",1)
			;
			IF .$state == "OK" THEN
				SIGNAL s.etalon.ok
			END
			IF .$state == "RETRY" THEN
				SIGNAL s.etalon.ret
			END
			IF .$state == "FAILED" THEN
				SIGNAL s.etalon.ng
			END
		END
		;
		; MEASUREMENT COMMAND
		; String format:
		; MEASUREMENT;STATE;
		IF INSTR (.$data[.i] , "MEASUREMENT") THEN
			; Decode command
			.$temp = $DECODE (.$data[1], ";",0)
			.$temp = $DECODE (.$data[1], ";",1)
			; Decode measurement result
			.$measurement.sta = $DECODE (.$data[1], ";",0)
			IF INSTR (.$measurement.sta , "TRUE") THEN
				CALL log.pc2 ("Received MEASUREMENT command: TRUE")
				SIGNAL s.measure.ok
			END
			IF INSTR (.$measurement.sta , "FALSE") THEN
				CALL log.pc2 ("Received MEASUREMENT command: FALSE")
				SIGNAL s.measure.ng
			END
		END
		;
		; SPEED COMMAND
		; String format:
		; SPEED;VALUE;
		;
		IF INSTR (.$data[.i] , "SPEED") THEN
			;
			CALL log.pc2 ("Received SPEED command")
			.$temp = $DECODE (.$data[1], ";",0)
			.$temp = $DECODE (.$data[1], ";",1)
			.$spd = $DECODE (.$data[1], ";",0)
			.speed = VAL (.$spd)
			IF .speed <= 0 THEN
				.speed = 1
			END
			IF .speed > 100 THEN
				.speed = 100
			END
			MON_SPEED (.speed)
		END
		;
		; POSITIONERFULL COMMAND
		; String format
		; POSITIONERFULL;
		IF INSTR (.$data[.i] , "POSITIONERFULL") THEN
			;CALL log.pc2("Received POSITIONERFULL command")
			PULSE s.cmd.pick, 5
		END
		;
		; ETALON COMMAND
		; String format:
		; ETALON;ID;
		;
		IF INSTR (.$data[.i] , "ETALON") THEN
			; Decode command
			.$temp = $DECODE (.$data[1], ";",0)
			.$temp = $DECODE (.$data[1], ";",1)
			; Need to decide where to check etalon!!!!
			; Decode etalon id
			recv.etalon = VAL ($DECODE (.$data[1], ";",0))
			;
			SIGNAL s.cmd.chk.etal
		END
		;
		; CLEANDEFECT COMMAND
		; String format:
		; CLEANDEFECT;
		;
		IF INSTR (.$data[.i] , "CLEANDEFECT") THEN
			CALL log.pc2 ("Received CLEANDEFECT command")
			count.defect = 0
		END
		;
		; PAUSE COMMAND
		; String format:
		; PAUSE;
		;
		IF INSTR (.$data[.i] , "PAUSE") THEN
			CALL log.pc2 ("Received PAUSE command")
			SIGNAL s.cmd.pause
		END
		;
		; RESUME COMMAND
		; String format:
		; RESUME;
		;
		IF INSTR (.$data[.i] , "RESUME") THEN
			CALL log.pc2 ("Received RESUME command")
			SIGNAL s.cmd.resume
		END
		;
		; STOP COMMAND
		; String format:
		; STOP;
		;
		IF INSTR (.$data[.i] , "STOP") THEN
			CALL log.pc2 ("Received STOP command")
			SIGNAL s.cmd.stop
			SIGNAL rs7.etalon.stop
		END
		;
		; ALTERNATEWAVE COMMAND
		; String format:
		; ALTERNATEWAVE:VALUE
		IF INSTR (.$data[.i] , "ALTERNATEWAVE") THEN
			; Decode command
			.$temp = $DECODE (.$data[1], ";",0)
			.$temp = $DECODE (.$data[1], ";",1)
			; Decode measurement result
			.$state = $DECODE (.$data[1], ";",0)
			IF INSTR (.$state , "TRUE") THEN
				CALL log.pc2 ("Received SET ALTERNATIVE WAVE MODE TRUE command")
				SIGNAL s.enable.shift
			END
			IF INSTR (.$state , "FALSE") THEN
				CALL log.pc2 ("Received SET ALTERNATIVE WAVE MODE FALSE command")
				SIGNAL -s.enable.shift
			END
		END
		;
		; CYCLEON COMMAND
		; String format:
		; CYCLEON;
		;
		IF INSTR (.$data[.i] , "CYCLEON") THEN
			CALL log.pc2 ("Received CYCLE ON command")
			IF SIG (do.automatic) AND NOT SWITCH (CS ) THEN
				MC CONTINUE
			END
		END
		;
		; STEPMODE COMMAND
		; String format:
		; STEPMODE;VALUE
		;
		IF INSTR (.$data[.i] , "STEPMODE") THEN
			; Decode command
			.$temp = $DECODE (.$data[1], ";",0)
			.$temp = $DECODE (.$data[1], ";",1)
			; Decode measurement result
			.$state = $DECODE (.$data[1], ";",0)
			IF INSTR (.$state , "TRUE") THEN
				CALL log.pc2 ("Received SET STEP MODE TRUE command")
				STP_ONCE ON
			END
			IF INSTR (.$state , "FALSE") THEN
				CALL log.pc2 ("Received SET STEP MODE FALSE command")
				STP_ONCE OFF
			END
		END
		;
		; NEXTSTEP COMMAND
		; String format:
		; NEXTSTEP;
		;
		IF INSTR (.$data[.i] , "NEXTSTEP") THEN
			CALL log.pc2 ("Received NEXTSTEP command")
			STPNEXT
		END
		;
		; ERESET COMMAND
		; String format:
		; ERESET;
		;
		IF INSTR (.$data[.i] , "ERESET") THEN
			CALL log.pc2 ("Received ERROR RESET command")
			MC ERESET
			.$data[.i] = ""
			RETURN
		END
		;
		; RESET COMMAND
		; String format:
		; RESET;
		;
		IF INSTR (.$data[.i] , "RESET") THEN
			CALL log.pc2 ("Received RESET command")
			state = 0
			IF NOT SWITCH (CS) THEN
				MC PRIME a.main
			END
		END
		;
		.$data[.i] = ""
	END
.END
.PROGRAM tcp.client.pc()@26/06/25 16:05 #0
	;
	tcp.socket = -1
	.tcp.retry.count = 10
	.tcp.connect.tmo = 5
	.tcp.receive.tmo = 5
	;
	WHILE TRUE DO
		; Checking for active sockets and closing them
		PRINT tcp.ena: "Checking for active sockets and closing them"
		TCP_STATUS .number, .ports[0], .sockets[0], .errors[0], .suberrors[0], .$ips[0]
		IF .number > 0 THEN
			FOR .i = 0 TO .number - 1
				IF .sockets[.i] <> 0 THEN
					.$temp = "Closing socket with id: " + $ENCODE (.sockets[.i])
					PRINT tcp.ena: .$temp
					TCP_CLOSE .status, .sockets[.i]
				END
			END
		END
		; Get IP from string
		.$tcp.ip.copy = $tcp.ip
		FOR .i = 1 TO 4
			.$ip = $DECODE (.$tcp.ip.copy, ".")
			.ip[.i] = VAL (.$ip)
			IF .i < 4 THEN
				.$ip = $DECODE (.$tcp.ip.copy, ".", 1)
			END
		END
		;
		; Connect to server
		.$temp = "Connecting to server with ip: " + $tcp.ip
		PRINT tcp.ena: .$temp
		TCP_CONNECT tcp.socket, tcp.port, .ip[1], .tcp.connect.tmo
		;
		; Start data processing cycle
		IF tcp.socket >= 0 THEN
			.$temp = "Connection established with socket id:" + $ENCODE (tcp.socket)
			PRINT tcp.ena: .$temp
			.connected = TRUE
			; Start receiving data cycle
			.tcp.error.cnt = 0
			WHILE .connected AND .tcp.error.cnt <= .tcp.retry.count DO
				TCP_RECV .status, tcp.socket, .$tcp.request[1], .request.size, .tcp.receive.tmo, 255
				IF .status >= 0 THEN
					IF .request.size == 0 THEN
						.tcp.error.cnt = .tcp.error.cnt + 1
						.$temp = "Received data with 0 length. Error count:" + $ENCODE (.tcp.error.cnt)
						PRINT tcp.ena: .$temp
					ELSE
						CALL tcp.callback.pc (.$tcp.request[], .request.size)
					END
				ELSE
					IF .status == -34024 THEN
						PRINT tcp.ena: "Timeout in receive, it\'s ok"
					ELSE
						.tcp.error.cnt = .tcp.error.cnt + 1
						.$temp = "Failed to receive data with error:" + $ENCODE (.status) + ". Error count:" + $ENCODE (.tcp.error.cnt)
						PRINT tcp.ena: .$temp
					END
				END
				TWAIT 0.05
			END
		ELSE
			.$temp = "Connection failed with error:" + $ENCODE (tcp.socket)
			PRINT tcp.ena: .$temp
			IF tcp.socket > 0 THEN
				TCP_CLOSE .status, tcp.socket
			END
		END
		TWAIT 0.05
	END
.END
.PROGRAM tcp.log.pc(.$msg)@26/06/25 16:05 #200202
	IF NOT SIG (s.tcp.log) THEN
		RETURN
	END
	;
	; 1 line = 55 symbols max
	;
	FOR .i = 0 TO 126
		$log.entry[.i] = $log.entry[.i + 1]
	END
	$log.entry[127] = $TIME + " " + .$msg
	;
	IFPWPRINT 1, 1, 1, 9, 10 = $log.entry[116], $log.entry[117], $log.entry[118], $log.entry[119]
	IFPWPRINT 2, 1, 1, 9, 10 = $log.entry[120], $log.entry[121], $log.entry[122], $log.entry[123]
	IFPWPRINT 3, 1, 1, 9, 10 = $log.entry[124], $log.entry[125], $log.entry[126], $log.entry[127]
	;
.END
.PROGRAM tcp.send.pc(.$data[],.data.length)@26/06/25 16:05 #4773313
	;
	.tcp.send.tmo = 5
	;
	IF tcp.socket > 0 THEN
		TCP_SEND .status, tcp.socket, .$data[1], .data.length, .tcp.send.tmo
		IF .status >= 0 THEN
			.$temp = "Sent " + $ENCODE (.data.length) + " strings"
			PRINT tcp.send.ena: .$temp
			FOR .i = 1 TO .data.length
				PRINT tcp.send.ena: .$data[.i]
			END
		ELSE
			.$temp = "Failed to send data with error:" + $ENCODE (.status)
			PRINT tcp.send.ena: .$temp
			tcp.socket = -1
		END
	ELSE
		PRINT tcp.send.ena: "Failed to send data. Socket is not opened. Waiting for 5 seconds"
		TWAIT 5
	END
	;
.END
.PROGRAM tcp.sender.pc()@26/08/01 15:10 #0
	;
	WHILE TRUE DO
		;
		CALL get.state.pc (.$data[1])
		.$data[2] = "ACTION:" + $action + ";"
		.$data[2] = .$data[2] + "WATCHDOG:" + $wdog.state + ";"
		.$data[2] = .$data[2] + "GRIPPER:" + $ENCODE (current.gripper) + ";"
		.$data[2] = .$data[2] + "PICKCOUNT:" + $ENCODE (count.pick) + ";"
		.$data[2] = .$data[2] + "DEFECTCOUNT:" + $ENCODE (count.defect) + ";"
		.$data[2] = .$data[2] + "PUTCOUNT:" + $ENCODE (max.count.put) + ";"
		.$data[2] = .$data[2] + "STATE:" + $ENCODE (state) + ";"
		.$data[2] = .$data[2] + "HOUR:" + $ENCODE (OPEINFO (3)) + ";"
		;
		IF SWITCH (STP_ONCE) THEN
			.$data[2] = .$data[2] + "STEPMODE:TRUE;"
		ELSE
			.$data[2] = .$data[2] + "STEPMODE:FALSE;"
		END
		;
		IF SIG (s.enable.shift) THEN
			.$data[2] = .$data[2] + "ALTWAVE:TRUE;"
		ELSE
			.$data[2] = .$data[2] + "ALTWAVE:FALSE;"
		END
		;
		.$data[2] = .$data[2] + "\n"
		;
		CALL tcp.send.pc (.$data[], 2)
		TWAIT tcp.sender.dly
	END
	;
.END
.PROGRAM test.ot.full ()
	FOR hmi.ot.k = 0 TO max.tare.count - 1
		CALL a.test.ot.pick
	END
.END
.PROGRAM watchdog.pc()@26/07/01 14:24 #0
	;
	HERE .last.pos
	TIMER 1 = 0
	;
	WHILE TRUE DO
		;
		CALL check.tasks.pc
		CALL check.disp.pc
		CALL check.zone.pc
		;
		HERE .current.pos
		.c1 = SWITCH (CS )
		.c2 = $action == "Paused"
		.c3 = DISTANCE (.current.pos, .last.pos)>5
		.c4 = state <> 0 OR state <> 100
		.c5 = TIMER (1) > wdog.tmr
		;
		IF NOT .c1 OR .c2 OR .c3 OR NOT .c4 THEN
			TIMER 1 = 0
		END
		;
		IF .c3 THEN
			HERE .last.pos
		END
		;
		IF .c5 THEN
			IF $wdog.state <> "TRUE" THEN
				$wdog.state = "TRUE"
			END
		ELSE
			IF $wdog.state <> "FALSE" THEN
				$wdog.state = "FALSE"
			END
		END
		;
		;
		IF SIG (rs13.tare.ack) THEN
			;CALL log.pc1("Received OT change ACK")
			;IF count.put >= chg.tare.count THEN
			;  count.put = 0
			;END
			;count.put = 0
			SIGNAL -rs7.tare.chg
		END
		;
		IF NOT SIG (s.debug.mode) THEN
			IF SWITCH (REPEAT ) AND NOT SWITCH (TEACH_LOCK ) AND NOT SWITCH (EMERGENCY ) AND NOT SWITCH (CS ) AND NOT SWITCH (ERROR ) THEN
				MC ZPOWER ON
				;MC PRIME a.main
				;WHILE NOT SWITCH(POWER)
				;  TWAIT 0.01
				;  MC CONTINUE
				;END
			END
		END
		;
		IF NOT SWITCH (REPEAT ) THEN
			CALL check.teach.pc
		END
		TWAIT 0.01
	END
	;
.END
.PROGRAM Comment___ () ; Comments for IDE. Do not use.
	; @@@ PROJECT @@@
	; @@@ PROJECTNAME @@@
	; ALKU_RS007L_MASTER
	; @@@ HISTORY @@@
	; 02.08.2026 21:15:54
	; 
	; @@@ INSPECTION @@@
	; max.tare.count
	; spc.tare.count
	; state
	; ~Log
	; $log.entry[100]
	; $log.entry[101]
	; $log.entry[102]
	; $log.entry[103]
	; $log.entry[104]
	; $log.entry[105]
	; $log.entry[106]
	; $log.entry[107]
	; $log.entry[108]
	; $log.entry[109]
	; $log.entry[110]
	; $log.entry[111]
	; $log.entry[112]
	; $log.entry[113]
	; $log.entry[114]
	; $log.entry[115]
	; $log.entry[116]
	; $log.entry[117]
	; $log.entry[118]
	; $log.entry[119]
	; $log.entry[120]
	; $log.entry[121]
	; $log.entry[122]
	; $log.entry[123]
	; $log.entry[124]
	; $log.entry[125]
	; $log.entry[126]
	; $log.entry[127]
	; @@@ CONNECTION @@@
	; KROSET R02
	; 127.0.0.1
	; 9205
	; @@@ PROGRAM @@@
	;   Group:Gripper:1
	;     1:a.test.gripper:F
	;     1:gripper.pick:F
	;       .gripper.no 
	;       .$temp 
	;       .temp 
	;     1:gripper.put:F
	;       .gripper.no 
	;       .$temp 
	;       .temp 
	;     1:a.teach.gripper:F
	;       .temp 
	;   Group:Etalon:2
	;     2:a.teach.etalon:F
	;       .eshift.x 
	;       .eshift.y 
	;       .et.pos.point 
	;       .et.mac.poin 
	;     2:etalon.measure:F
	;       .id 
	;       .etalon.pos.pt 
	;       .etalon.mac.pt 
	;       .shift.y 
	;       .shift.z 
	;       .p.idx 
	;       .eshift.x 
	;       .eshift.y 
	;       .$temp 
	;     2:set.grip.tree:F
	;       .set 
	;   Group:OT:3
	;     3:a.teach.ot:F
	;       .ot.down.left 
	;       .ot.down.right 
	;       .ot.up.right 
	;       .ot.orig 
	;     3:calc.grid:F
	;       .max 
	;       .obj.len 
	;       .obj.len.w.spc 
	;       .$temp 
	;       .extra.x 
	;       .i 
	;       .j 
	;       .teach 
	;     3:calc.grid.rnd:F
	;       .max 
	;       .obj.shift 
	;       .$temp 
	;       .i 
	;       .j 
	;       .teach 
	;     3:get.ot.point:F
	;       .obj.id 
	;     3:a.test.ot:F
	;       .$pg 
	;       .x 
	;       .y 
	;       .z 
	;       .rz 
	;       .put 
	;       .putr 
	;       .putr2 
	;       .#temp 
	;     3:ot.put:F
	;       .x 
	;       .y 
	;       .z 
	;       .rz 
	;       .put 
	;       .putr 
	;       .putr2 
	;       .#temp 
	;     3:a.test.ot.pick:F
	;       .shift.x 
	;       .shift.y 
	;       .temp 
	;       .$pg 
	;       .x 
	;       .y 
	;       .z 
	;       .rz 
	;       .put 
	;       .putr 
	;       .putr2 
	;       .#temp 
	;     3:old.layout:F
	;       .center.col 
	;       .center.row 
	;       .cell 
	;       .i 
	;       .j 
	;       .dist 
	;       .dists 
	;       .array.size 
	;       .result 
	;       .cornera 
	;       .cornerb 
	;       .tmp.dist 
	;       .tmp.m 
	;       .tmp.n 
	;     3:sort.grid:F
	;       .center.col 
	;       .center.row 
	;       .cell 
	;       .row 
	;       .offset 
	;       .left 
	;       .right 
	;     3:select.layout:F
	;     3:test.ot.full:F
	;     3:ot.calc:F
	;       .teach 
	;   Group:MeasureMachine:4
	;     4:a.teach.machine:F
	;       .temp 
	;     4:measure:F
	;       .pos 
	;       .shift.y 
	;       .shift.z 
	;       .p.idx 
	;       .machine.pos 
	;   Group:Objects:5
	;     5:id1:F
	;     5:id2:F
	;     5:id3:F
	;     5:id4:F
	;     5:id5:F
	;     5:id6:F
	;   Group:Positioner:6
	;     6:pos.pick:F
	;       .$temp 
	;       .temp 
	;       .shift.x 
	;       .shift.y 
	;     6:a.teach.pos:F
	;       .shift.x 
	;       .shift.y 
	;       .temp 
	;   Group:Defect:7
	;     7:defect.put:F
	;       .xc 
	;       .yc 
	;       .rz 
	;       .temp 
	;     7:a.teach.defect:F
	;       .x 
	;       .y 
	;       .o 
	;       .k 
	;       .i 
	;       .j 
	;       .xc 
	;       .yc 
	;       .rz 
	;       .defect.pos 
	;   Group:States:8
	;     8:state0:F
	;     8:state1:F
	;     8:state2:F
	;     8:state3:F
	;     8:state4:F
	;     8:state5:F
	;     8:state6:F
	;     8:state7:F
	;     8:state8:F
	;     8:state100:F
	;     8:state101:F
	;     8:state102:F
	;     8:state103:F
	;     8:state104:F
	;     8:state105:F
	;     8:state106:F
	;     8:state255:F
	;   Group:Utilities:9
	;     9:ship.pos:F
	;     9:a.home:F
	;     9:a.align:F
	;     9:safe.home:F
	;       .idx 
	;       .temp 
	;       .s 
	;       .c 
	;       .dz 
	;     9:log:F
	;       .$msg 
	;       .i 
	;     9:pg.select:F
	;   0:a.main:F
	;     .$pg.string 
	;   0:pg0:F
	;   Group:Logs:10
	;     10:log.pc1:F
	;       .$msg 
	;       .i 
	;     10:log.pc2:F
	;       .$msg 
	;       .i 
	;   Group:Watchdog:11
	;     11:check.teach.pc:B
	;     11:check.zone.pc:B
	;     11:check.disp.pc:B
	;     11:check.tasks.pc:B
	;     11:watchdog.pc:B
	;       .last.pos 
	;       .current.pos 
	;       .c1 
	;       .c2 
	;       .c3 
	;       .c4 
	;       .c5 
	;   Group:Initialization:12
	;     12:set.vars.pc:B
	;       .i 
	;       .n 
	;       .$name 
	;     12:set.io.pc:B
	;   Group:TCPIP:13
	;     13:get.state.pc:B
	;       .$state 
	;     13:tcp.sender.pc:B
	;       .$data 
	;     13:tcp.callback.pc:B
	;       .$data 
	;       .data.length 
	;       .$temp 
	;       .i 
	;       .$awave 
	;       .$sensor.name 
	;       .$sensor.state 
	;       .$state 
	;       .$measurement.sta 
	;       .$spd 
	;       .speed 
	;     13:tcp.client.pc:B
	;       .tcp.retry.count 
	;       .tcp.connect.tmo 
	;       .tcp.receive.tmo 
	;       .number 
	;       .ports 
	;       .sockets 
	;       .errors 
	;       .suberrors 
	;       .$ips 
	;       .i 
	;       .$temp 
	;       .status 
	;       .$tcp.ip.copy 
	;       .$ip 
	;       .ip 
	;       .connected 
	;       .tcp.error.cnt 
	;       .$tcp.request 
	;       .request.size 
	;     13:tcp.send.pc:B
	;       .$data 
	;       .data.length 
	;       .tcp.send.tmo 
	;       .status 
	;       .$temp 
	;       .i 
	;     13:tcp.log.pc:B
	;       .$msg 
	;       .i 
	;   0:autostart.pc:B
	;     .$rob.name 
	;     .cont.no 
	;     .robot.no 
	;     .$robot.str 
	;     .$cont.str 
	;   0:errstart.pc:B
	; @@@ TRANS @@@
	; ot.put[] Calculated OT put point
	; defect.frame 
	; tool.gripper[] 
	; @@@ JOINTS @@@
	; #homyak Home point
	; #pos.point[] Positioner point for object i
	; #def.up.right Defect tare up right teach point
	; #def.up.left Defect tare up left teach point
	; #def.down.right Defect tare down right teach point
	; #before.machine[] Point before machine
	; #defect.point[] Defect point for cell i
	; #safe.machine Safe point on machine side
	; #defect.safe 
	; #ot.up.right OT up.right point
	; #ot.orig OT up right point
	; #ot.down.right OT down right point
	; #ot.down.left OT down left point
	; #machine.pos[] Point in measure machine for object i
	; #et.mac.point[] 
	; #et.pos.point[] 
	; #safe.defect Safe point before defect tare
	; #safe.etalon Safe point to move to positioner
	; #tool.point[] Point for pick gripper i
	; @@@ REALS @@@
	; work.tare.count Value with which work
	; count.defect Defect details count
	; count.pick Picked details counter
	; count.put Putted details counter
	; current.gripper Current gripper in robot (1)
	; detail.count Count of details in tares
	; grip.180xsh[] X shift for gripper i in 180
	; grip.180ysh[] Y shift for gripper i in 180
	; grip.xsh[] X shift for gripper i
	; grip.ysh[] Y shift for gripper i
	; grip.zsh[] Z shift for gripper i
	; hmi.defect.pos HMI position of defect cell
	; hmi.etalon.id HMI etalon ID
	; hmi.g180x HMI rotated gripper X shift for object N
	; hmi.g180y HMI rotated gripper Y shift for object N
	; hmi.gx HMI gripper X shift for object N
	; hmi.gy HMI gripper Y shift for object N
	; hmi.gz HMI gripper Z shift for object N
	; hmi.obj.id HMI Object ID
	; hmi.tool.no HMI Tool no
	; keep.object HMI aux variable
	; line.width OT width
	; lines.count OT lines count
	; lines.shift Distance between OT lines
	; max.tare.count Object data: Max details in tare
	; obj.in.line Max objects in line (calculated)
	; obj.spacer Space between objects
	; object.length Object data: detail length
	; pg13.gripper Object data: Gripper in current program for RS013
	; state State variable
	; tcp.ena Enable TCP connect display
	; tcp.port TCP port
	; tcp.recv.ena Enable TCP receive display
	; tcp.send.ena Enable TCP send display
	; tcp.sender.dly Delay between TCP send
	; tcp.socket TCP socket ID
	; tyterm Display destination terminal
	; hmi.gripper HMI gripper No
	; ms[] 
	; ns[] 
	; object.id Object data: object id
	; ot.x OT put coordinate X
	; ot.y OT put coordinate Y
	; round.no ID for round detail
	; spc.tare.count Object data: Max details in tare with spacer
	; detail.spec Detail specification
	; etalon.id 
	; recv.etalon Received etalon id
	; max.defect.cnt Maximum value of defect cell
	; pawn.no Number of pawn detail
	; hmi.gmidy HMI panel mid y shift
	; grip.midysh[] 
	; max.count.put Maximum number of put details per count
	; pg7.gripper Object data: Gripper in current program for RS007
	; layout Put layout
	; defect.h.cor Correction of defect pallet height
	; current.ot Current OT
	; etalon.tree.id ID for etalon tree
	; tree.gripper Gripper No for etalon
	; chg.tare.count 
	; defect.x.cor 
	; defect.y.cor 
	; direction 
	; hmi.ot.k 
	; pg.gripper 
	; wdog.tmr 
	; @@@ STRINGS @@@
	; $log.entry[] Log entry
	; $action Current robot action to send
	; $pg.name Program name (same as in machine)
	; $tcp.ip Server PC IP address
	; $opt.data 
	; $ot.data 
	; $wdog.state 
	; @@@ INTEGER @@@
	; @@@ SIGNALS @@@
	; s.pr.tst.ot Prime test OT program
	; s.defect.pal.ok Defect pallet sensor OK
	; s.defect.pal.ng Defect pallet sensor NG
	; s.measure.ok Measurement result OK
	; s.measure.ng Measurement result NG
	; s.cmd.chk.etal Check etalon command
	; release.grip !Release gripper!
	; capture.grip Capture gripper
	; grip.unclamp Unclamp gripper
	; grip.clamp Clamp gripper
	; do.work[] Robot in workspace i
	; rs13.tare.ack Acknowledge of tare change
	; rs13.detail.put RS013N put detail to positioner
	; rs13.finish RS013N finish process
	; rs7.tare.chg Request tare change
	; rs7.locked.zone RS007L Blocked positioner zone
	; rs7.finish.ack RS007L finished work
	; rs7.put.ack RS007L picked detail
	; di.ifp.page[] Open IFP page i
	; di.hold Set hold mode
	; do.home Robot in home position
	; do.bat.alm Battery low alarm
	; s.tcp.send.ena Display TCP send prints
	; s.tcp.recv.ena Display TCP receive prints
	; s.tcp.ena Display TCP connect prints
	; s.zone.blocked RS007L first in common zone
	; s.force.in[] Force input signal i
	; s.grip.full Gripper is full
	; s.cmd.start Start command
	; s.cmd.finish Finish program
	; s.cmd.pause Pause program command
	; s.cmd.resume Resume program command
	; s.cmd.stop Stop program command
	; s.pr.home Prime a.home
	; s.hmi.res.state Reset state from HMI
	; s.hmi.res.act Reset action from hmi
	; s.debug.mode Debug mode
	; grip.unclamped Gripper unclamped
	; grip.clamped Gripper clamped
	; s.pr.tch.pos Prime teach positioner
	; s.pr.tch.ot Prime teach OT
	; s.pr.tch.defect Prime teach defect
	; s.pr.tch.meas Prime teach measure machine
	; s.pr.tch.etal Prime teach Etalon
	; s.apply.obj Apply object shifts
	; rs13.work[] Robot in workspace 1
	; s.cmd.pick Pick from positioner command
	; s.ot.spacer Option for put to OT with spacer
	; s.ot.flip Option to put to OT with flip
	; rs13.det.put[] Put details count from RS0013N
	; rs7.det.picked[] Picked details count from RS007L
	; s.cmd.measured Detail measured
	; s.tcp.log Add log record for tcp.log
	; s.force.defect Force measure defect
	; s.etalon.ok Etalon result: OK
	; s.etalon.ret Etalon result: RETRY
	; s.etalon.ng Etalon result: NG
	; rs7.etalon.stop Etalon measurement was bad, need to stop
	; do.automatic Robot in automatic mode
	; s.pr.tch.grip Prime teach gripper
	; s.pr.tst.ot.p Prime test ot with pick
	; s.enable.shift Enable shift for even layers
	; rs13.lock.zone 
	; rs13.no.ot.stop 
	; rs13.ot.number[] RS013 OT Number
	; @@@ TOOLS @@@
	; tool.pick[] Gripper tool
	; @@@ BASE @@@
	; @@@ FRAME @@@
	; ot.frame OT base frame
	; @@@ BOOL @@@
	; @@@ DEFAULTS @@@
	; BASE: NULL
	; TOOL: NULL
	; @@@ WCD @@@
	; SIGNAME: sig1 sig2 sig3 sig4
	; SIGDIM: % % % %
.END
