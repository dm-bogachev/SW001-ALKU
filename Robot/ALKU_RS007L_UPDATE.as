.AUXDATA
N_OX1    "release.grip|!Release gripper!"
N_OX2    "capture.grip|Capture gripper"
N_OX3    "grip.unclamp|Unclamp gripper"
N_OX4    "grip.clamp|Clamp gripper"
N_OX17    "do.work[1]|Robot in workspace i"
N_OX18    "rs7.tare.chg|Request tare change"
N_OX19    "rs7.locked.zone|RS007L Blocked positioner zone"
N_OX20    "rs7.finish.ack|RS007L finished work"
N_OX21    "rs7.put.ack|RS007L picked detail"
N_OX25    "rs7.det.picked[0]|Picked details count from RS007L"
N_OX26    "rs7.det.picked[1]|Picked details count from RS007L"
N_OX27    "rs7.det.picked[2]|Picked details count from RS007L"
N_OX28    "rs7.det.picked[3]|Picked details count from RS007L"
N_OX29    "rs7.det.picked[4]|Picked details count from RS007L"
N_OX30    "rs7.det.picked[5]|Picked details count from RS007L"
N_OX31    "rs7.det.picked[6]|Picked details count from RS007L"
N_OX32    "rs7.det.picked[7]|Picked details count from RS007L"
N_OX33    "rs7.etalon.stop|Etalon measurement was bad, need to stop"
N_WX1    "grip.unclamped|Gripper unclamped"
N_WX2    "grip.clamped|Gripper clamped"
N_WX17    "rs13.work[1]|Robot in workspace 1"
N_WX18    "rs13.tare.ack|Acknowledge of tare change"
N_WX19    "rs13.detail.put|RS013N put detail to positioner"
N_WX20    "rs13.finish|RS013N finish process"
N_WX25    "rs13.det.put[0]|Put details count from RS0013N"
N_WX26    "rs13.det.put[1]|Put details count from RS0013N"
N_WX27    "rs13.det.put[2]|Put details count from RS0013N"
N_WX28    "rs13.det.put[3]|Put details count from RS0013N"
N_WX29    "rs13.det.put[4]|Put details count from RS0013N"
N_WX30    "rs13.det.put[5]|Put details count from RS0013N"
N_WX31    "rs13.det.put[6]|Put details count from RS0013N"
N_WX32    "rs13.det.put[7]|Put details count from RS0013N"
N_INT1    "di.ifp.page[1]|Open IFP page i"
N_INT2    "di.ifp.page[2]|Open IFP page i"
N_INT3    "di.ifp.page[3]|Open IFP page i"
N_INT4    "di.ifp.page[4]|Open IFP page i"
N_INT5    "di.ifp.page[5]|Open IFP page i"
N_INT6    "di.ifp.page[6]|Open IFP page i"
N_INT7    "di.ifp.page[7]|Open IFP page i"
N_INT8    "di.ifp.page[8]|Open IFP page i"
N_INT9    "di.hold|Set hold mode"
N_INT10    "do.home|Robot in home position"
N_INT11    "do.bat.alm|Battery low alarm"
N_INT12    "do.automatic|Robot in automatic mode"
N_INT201    "s.tcp.send.ena|Display TCP send prints"
N_INT202    "s.tcp.recv.ena|Display TCP receive prints"
N_INT203    "s.tcp.ena|Display TCP connect prints"
N_INT204    "s.tcp.log|Add log record for tcp.log"
N_INT209    "s.zone.blocked|RS007L first in common zone"
N_INT212    "do.work[2]|Robot in workspace i"
N_INT213    "do.work[3]|Robot in workspace i"
N_INT214    "do.work[4]|Robot in workspace i"
N_INT215    "do.work[5]|Robot in workspace i"
N_INT216    "do.work[6]|Robot in workspace i"
N_INT217    "do.work[7]|Robot in workspace i"
N_INT218    "do.work[8]|Robot in workspace i"
N_INT221    "s.force.in[1]|Force input signal i"
N_INT222    "s.force.in[2]|Force input signal i"
N_INT223    "s.defect.pal.ok|Defect pallet sensor OK"
N_INT224    "s.defect.pal.ng|Defect pallet sensor NG"
N_INT225    "s.measure.ok|Measurement result OK"
N_INT226    "s.measure.ng|Measurement result NG"
N_INT227    "s.force.defect|Force measure defect"
N_INT231    "s.grip.full|Gripper is full"
N_INT232    "s.cmd.start|Start command"
N_INT233    "s.cmd.pick|Pick from positioner command"
N_INT234    "s.cmd.measured|Detail measured"
N_INT237    "s.cmd.chk.etal|Check etalon command"
N_INT238    "s.cmd.finish|Finish program"
N_INT239    "s.cmd.pause|Pause program command"
N_INT240    "s.cmd.resume|Resume program command"
N_INT241    "s.cmd.stop|Stop program command"
N_INT249    "s.pr.tst.ot|Prime test OT program"
N_INT250    "s.pr.home|Prime a.home"
N_INT251    "s.pr.tch.ot|Prime teach OT"
N_INT252    "s.pr.tch.defect|Prime teach defect"
N_INT253    "s.pr.tch.meas|Prime teach measure machine"
N_INT254    "s.pr.tch.etal|Prime teach Etalon"
N_INT255    "s.pr.tch.pos|Prime teach positioner"
N_INT256    "s.apply.obj|Apply object shifts"
N_INT261    "s.hmi.res.state|Reset state from HMI"
N_INT262    "s.hmi.res.act|Reset action from hmi"
N_INT270    "s.opt.spacer|Option for put to OT with spacer"
N_INT271    "s.opt.flip|Option to put to OT with flip"
N_INT272    "s.etalon.ok|Etalon result: OK"
N_INT273    "s.etalon.ret|Etalon result: RETRY"
N_INT274    "s.etalon.ng|Etalon result: NG"
N_INT300    "s.debug.mode|Debug mode"
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
61,8,"state","  CURRENT","   STATE",10,15,3,1,0
62,2,"","   RESET","   STATE","",10,4,15,2261,0
63,4,1,"OFF     ON","","","TCP COMMON",10,4,4,0,2203,0
64,4,1,"OFF     ON","",""," TCP SEND",10,4,4,0,2201,0
65,4,1,"OFF     ON","",""," TCP RECV",10,4,4,0,2202,0
66,4,1,"OFF     ON","",""," TCP LOG",10,4,4,0,2204,0
68,14,"action","  CURRENT","  ACTION",10,15,0
69,2,"","   RESET","   ACTION","",10,4,15,2262,0
70,1,"GRIP FULL","","","",10,15,4,10,2231,0
71,1," POS FULL","","","",10,15,4,10,2233,0
76,4,1,"OFF     ON","","","  DEBUG",10,4,4,0,2300,0
77,2,"","   MAIN","<---------","",10,4,11,2001,0
79,7,"  RS007L","COUNT PICK",10,15,4,0,0,25,8,1
80,7,"  RS013N","COUNT PUT",10,15,4,0,0,1025,8,1
82,8,"max.defect.cnt","Max defect","tare count",10,15,2,1,0
84,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
85,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
86,8,"hmi.tool.no","    HMI","  GRIPPER ",10,2,2,1,0
90,2,"","   Open ","  gripper","",10,4,5,3,0
91,2,"   PRIME","","   TEACH","POSITIONER",10,4,11,2255,0
97,2,"","   Close","  gripper","",10,4,5,4,0
105,2,"","   MAIN","<---------","",10,4,11,2001,0
109,2,"","   TEACH","  MACHINE","",10,4,11,2005,0
110,2,"","   TEACH","    OT","",10,4,11,2006,0
111,2,"","   TEACH","  DEFECT","",10,4,11,2007,0
112,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
113,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
114,8,"hmi.tool.no","    HMI","  GRIPPER ",10,2,2,1,0
118,2,"","   Open ","  gripper","",10,4,5,3,0
119,2,"   PRIME","","   TEACH","  MACHINE",10,4,11,2253,0
125,2,"","   Close","  gripper","",10,4,5,4,0
126,2,"   PRIME","","   TEACH","   ETALON",10,4,11,2254,0
127,8,"hmi.etalon.id","  ETALON","    ID",10,2,2,1,0
133,2,"","   MAIN","<---------","",10,4,11,2001,0
137,2,"","   TEACH","POSITIONER","",10,4,11,2004,0
138,2,"","   TEACH","    OT","",10,4,11,2006,0
139,2,"","   TEACH","  DEFECT","",10,4,11,2007,0
140,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
141,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
142,8,"hmi.tool.no","    HMI","  GRIPPER ",10,2,2,1,0
143,8,"hmi.gx","GRIPPER N"," X SHIFT",10,3,4,2,0
144,8,"hmi.gy","GRIPPER N"," Y SHIFT",10,3,4,2,0
145,8,"hmi.gz","GRIPPER N"," Z SHIFT",10,3,4,2,0
146,2,"","   Open ","  gripper","",10,4,5,3,0
147,2,"   PRIME","","   TEACH","  MACHINE",10,4,11,2251,0
150,8,"hmi.g180x","GRIPPER N","180X SHIFT",10,3,4,2,0
151,8,"hmi.g180y","GRIPPER N","180Y SHIFT",10,3,4,2,0
152,2,""," APPLY FOR"," N OBJECT","",10,4,14,2256,0
153,2,"","   Close","  gripper","",10,4,5,4,0
154,2,"   PRIME","","    TEST","    OT",10,4,11,2249,0
155,8,"ot.x","    OT","X POSITION",10,3,2,1,0
156,8,"ot.y","    OT","Y POSITION",10,3,2,1,0
157,8,"hmi.ot.k","    OT","  PUT ID ",10,3,3,1,0
161,2,"","   MAIN","<---------","",10,4,11,2001,0
165,2,"","   TEACH","POSITIONER","",10,4,11,2004,0
166,2,"","   TEACH","  MACHINE","",10,4,11,2005,0
167,2,"","   TEACH","  DEFECT","",10,4,11,2007,0
168,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
170,8,"hmi.defect.pos","  DEFECT","    ID",10,2,2,1,0
174,2,"","   Open ","  gripper","",10,4,5,3,0
175,2,"   PRIME","","   TEACH","  DEFECT",10,4,11,2252,0
181,2,"","   Close","  gripper","",10,4,5,4,0
189,2,"","   MAIN","<---------","",10,4,11,2001,0
193,2,"","   TEACH","POSITIONER","",10,4,11,2004,0
194,2,"","   TEACH","  MACHINE","",10,4,11,2005,0
195,2,"","   TEACH","    OT","",10,4,11,2006,0
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
.PROGRAM a.align ()
	;
	SPEED 250 MM/S ALWAYS
	ALIGN
	;
.END
.PROGRAM a.home ()
  ;
  SPEED 250 MM/S ALWAYS
  JMOVE #homyak
  ;
.END
.PROGRAM a.main ()
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
.PROGRAM a.teach.defect ()
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
  POINT .defect.pos = #defect.point[hmi.defect.pos]
  ;
  LAPPRO .defect.pos, -10
  LMOVE .defect.pos
  LAPPRO .defect.pos, -10
.END
.PROGRAM a.teach.etalon()@25/12/11 10:43 #0
;
  TOOL tool.pick[hmi.tool.no]
; Pick etalon
  POINT .et.pos.point = #et.pos.point[hmi.etalon.id]
  JMOVE .et.pos.point+TRANS(0,0,50)
  BREAK
  LMOVE #et.pos.point[hmi.etalon.id]; *** TEACH POINT ***
  POINT .et.pos.point = #et.pos.point[hmi.etalon.id]
  BREAK
  TWAIT 0.5
  LMOVE .et.pos.point+TRANS(0,5,10)
  LMOVE .et.pos.point+TRANS(0,0,150)
  LMOVE #homyak
  BREAK
  TWAIT 0.5
; Measure etalon
  IF FALSE THEN ; For round details
    TOOL tool.pick[hmi.tool.no]
    JMOVE #safe.machine
    JMOVE #before.machine[2]
    POINT .et.mac.poin = #et.mac.point[hmi.etalon.id]
    JMOVE .et.mac.poin+TRANS(0,0,10)
    BREAK
    LMOVE #et.mac.point[hmi.etalon.id]; *** TEACH POINT ***
    POINT .et.mac.poin = #et.mac.point[hmi.etalon.id]
    BREAK
    TWAIT 0.5
    LMOVE .et.mac.poin+TRANS(0,0,10)
    BREAK
    TWAIT 0.5
    LMOVE #before.machine[2]
  ELSE
    TOOL tool.pick[hmi.tool.no]
    JMOVE #safe.machine
    JMOVE #before.machine[1]
    POINT .et.mac.poin = #et.mac.point[hmi.etalon.id]
    JMOVE .et.mac.poin+TRANS(0,10,0)
    BREAK
    LMOVE #et.mac.point[hmi.etalon.id]; *** TEACH POINT ***
    POINT .et.mac.poin = #et.mac.point[hmi.etalon.id]
    BREAK
    TWAIT 0.5
    LMOVE .et.mac.poin+TRANS(0,10,0)
    BREAK
    TWAIT 0.5
    LMOVE #before.machine[1]
  END
  ;
  LMOVE #safe.machine
  LMOVE #homyak
  LMOVE .et.pos.point+TRANS(0,0,150)
  LMOVE .et.pos.point+TRANS(0,5,10)
  LMOVE #et.pos.point[hmi.etalon.id]
  LMOVE .et.pos.point+TRANS(0,0,150)
.END
.PROGRAM a.teach.machine ()
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
.PROGRAM a.teach.ot ()
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
.PROGRAM a.teach.pos ()
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
  LMOVE .temp + TRANS (0, 5, 10)
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  TWAIT 0.5
  ;
.END
.PROGRAM a.test.ot ()
  IF hmi.ot.k <> -1 THEN
    .$pg = "id" + $ENCODE (/L, hmi.obj.id)
    SCALL .$pg
    IF hmi.obj.id <> round.no THEN
      CALL calc.grid
    ELSE
      CALL calc.grid.rnd
    END
    CALL calc.ot
    CALL get.ot.point (hmi.ot.k)
  END
  .x = grip.xsh[hmi.obj.id]
  .y = grip.ysh[hmi.obj.id]
  .z = grip.zsh[hmi.obj.id]
  IF object.id <> round.no AND ot.y MOD 2 <> 0 AND SIG (s.opt.flip) THEN
    .x = grip.180xsh[hmi.obj.id]
    .y = grip.180ysh[hmi.obj.id]
  END
  ;
  POINT .put = ot.put[ot.x, ot.y] + TRANS (.x, .y, .z)
  LAPPRO .put, -50
  LMOVE .put
  LAPPRO .put, -50
.END
.PROGRAM autostart.pc ()
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
  IFPWPRINT 8, 1, 1, 5, 10 = "Robot: RS007L S/N: C6324", "Controller: F60 S/N: C8174", " ", "Powered by Robowizard Co.Ltd."
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
.PROGRAM calc.grid ()
  ; Constants
  line.width = 210; 210; mm
  lines.count = 21
  lines.shift = 16; mm
  obj.spacer = 1.5; mm
  ;
  .max = max.tare.count
  .obj.len = object.length
  ;
  .obj.len.w.spc = object.length + obj.spacer
  obj.in.line = INT((line.width - obj.spacer) / .obj.len.w.spc);
  ;
  FOR .i = 0 TO lines.count - 1
    FOR .j = 0 TO obj.in.line - 1
      POINT ot.put[.i, .j] = ot.frame + TRANS (-.i * lines.shift, -.j * .obj.len.w.spc)
    END
  END
;
.END
.PROGRAM calc.grid.rnd ()
  ; Constants
  lines.count = 11
  obj.in.line = 7
  lines.shift = 27; mm
  ;
  .max = 77
  .obj.shift = 27 ; mm
  ;
  FOR .i = 0 TO lines.count - 1
    FOR .j = 0 TO obj.in.line - 1
      POINT ot.put[.i, .j] = ot.frame + TRANS (-.i * lines.shift, -.j * .obj.shift)
    END
  END
;
.END
.PROGRAM calc.ot ()
  ; Get matrix center
  .center.col = INT (lines.count / 2)
  .center.row = INT (obj.in.line / 2)
  ; Get Manhattan distances matrix
  .cell = 0
  FOR .i = 0 TO lines.count-1
    FOR .j = 0 TO obj.in.line-1
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
      IF .dists[.j] <> .dists[.j + 1]
        .result = .dists[.j] - .dists[.j + 1]
      ELSE
        .cornerA = ABS (ms[.j] - .center.col)
        IF ABS (ns[.j] - .center.row) > .cornerA THEN
          .cornerA = ABS (ns[.j] - .center.row)
        END
        
        .cornerB = ABS (ms[.j + 1] - .center.col)
        IF ABS (ns[.j + 1] - .center.row) > .cornerB THEN
          .cornerB = ABS (ns[.j + 1] - .center.row)
        END
        
        IF .cornerA <> .cornerB
          .result = .cornerA - .cornerB
        ELSE
          IF ms[.j] <> ms[.j + 1]
            .result = ms[.j] - ms[.j + 1]
          ELSE
            .result = ns[.j] - ns[.j + 1]
          END
        END
      END
      ; Simple compare. Commented in case of troubles
      ;IF .dists[.j] <> .dists[.j + 1]
      ;  .result = .dists[.j] - .dists[.j + 1]
      ;ELSE
      ;  IF ms[.j] <> ms[.j + 1]
      ;    .result = ms[.j] - ms[.j + 1]
      ;  ELSE
      ;    .result = ns[.j] - ns[.j + 1]
      ;  END
      ;END
      ;
      IF .result > 0 THEN
        ;
        .tmp.dist = .dists[.j]
        .tmp.m = ms[.j]
        .tmp.n = ns[.j]
        ;
        .dists[.j] = .dists[.j + 1]
        ms[.j] = ms[.j + 1]
        ns[.j] = ns[.j + 1]
        ;
        .dists[.j + 1] = .tmp.dist
        ms[.j + 1] = .tmp.m
        ns[.j + 1] = .tmp.n
      END
    END
  END
  ;
  ; Debug print
  ;PRINT "ASCII grid"
  ;FOR .n = 0 TO obj.in.line-1
  ;  .$line = ""        ; буфер строки
  ;  FOR .m = 0 TO lines.count-1
  ;    .filled = 0
  ;    FOR .i = 0 TO .obj.id
  ;      IF ms[.i] == .m AND ns[.i] == .n THEN
  ;        .filled = 1
  ;      END
  ;    END
  ;    IF .filled == 1 THEN
  ;      .$line = .$line + "X "
  ;    ELSE
  ;      .$line = .$line + ". "
  ;    END
  ;  END
  ;  PRINT .$line    ; печатаем всю строку одним вызовом
  ;END
.END
.PROGRAM check.disp.pc ()
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
.PROGRAM check.tasks.pc ()
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
.PROGRAM check.teach.pc ()
  ;
  IF SIG (s.hmi.res.state) THEN
    state = 0
  END
  ;
  IF SIG (s.hmi.res.act) THEN
    $action = " "
  END
  ;
  IF SIG (s.pr.tch.pos) AND NOT SWITCH (REPEAT) THEN
    MC PRIME a.teach.pos
  END
    ;
  IF SIG (s.pr.home) AND NOT SWITCH (REPEAT) THEN
    MC PRIME a.home
  END
  ;
  IF SIG (s.pr.tch.defect) AND NOT SWITCH (REPEAT) THEN
    MC PRIME a.teach.defect
  END
  ;
  IF SIG (s.pr.tch.meas) AND NOT SWITCH (REPEAT) THEN
    MC PRIME a.teach.machine
  END
  ;
  IF SIG (s.pr.tch.ot) AND NOT SWITCH (REPEAT) THEN
    MC PRIME a.teach.ot
  END
  ;
  IF SIG (s.pr.tst.ot) AND NOT SWITCH (REPEAT) THEN
    MC PRIME a.test.ot
  END
  ;
  IF SIG (s.pr.tch.etal) AND NOT SWITCH (REPEAT) THEN
    MC PRIME a.teach.etalon
  END
  ;
  ; HMI PANEL OBJECT TEACH DATA
  IF keep.object <> hmi.obj.id AND hmi.obj.id > 0 AND hmi.obj.id <= 64 THEN
    hmi.gx = grip.xsh[hmi.obj.id]
    hmi.gy = grip.ysh[hmi.obj.id]
    hmi.gz = grip.zsh[hmi.obj.id]
    hmi.g180x = grip.180xsh[hmi.obj.id]
    hmi.g180y = grip.180ysh[hmi.obj.id]
    ;
    keep.object = hmi.obj.id
  END
  IF SIG (s.apply.obj) THEN
    grip.xsh[hmi.obj.id] = hmi.gx
    grip.ysh[hmi.obj.id] = hmi.gy
    grip.zsh[hmi.obj.id] = hmi.gz
    grip.180xsh[hmi.obj.id] = hmi.g180x
    grip.180ysh[hmi.obj.id] = hmi.g180y
  END
;
.END
.PROGRAM check.zone.pc ()
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
.PROGRAM defect.put ()
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
  POINT .temp = #defect.point[count.defect + 1]
  ;
  JMOVE #safe.defect
  ;
  CALL log ("Putting to defect tare with No:" + $ENCODE (count.defect + 1))
  ;
  ACCURACY 10
  LAPPRO .temp, -30
  BREAK
  ;
  SPEED 250 MM/S
  ACCURACY 0.02
  LMOVE #defect.point[count.defect + 1]
  BREAK
  PULSE grip.unclamp
  TWAIT 0.5
  count.defect = count.defect + 1
  SIGNAL -s.grip.full
  ;
  ACCURACY 10
  LAPPRO .temp, -30
  JMOVE #safe.defect
  LMOVE #homyak
  ;
.END
.PROGRAM errstart.pc ()
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
.PROGRAM etalon.measure(.id)@25/12/11 10:43 #6
  IF FALSE THEN
    .id = hmi.etalon.id
  END
  TOOL tool.pick[current.gripper]
;
  SPEED 100 ALWAYS
  ACCURACY 10 ALWAYS
;
  POINT .etalon.pos.pt = #et.pos.point[.id]
  POINT .etalon.mac.pt = #et.mac.point[.id]
  IF .id==round.no THEN
    .shift.y = 0
    .shift.z = 50
    .p.idx = 2
  ELSE
    .shift.y = 50
    .shift.z = 0
    .p.idx = 1
  END
;
  IF NOT SIG(grip.unclamped) THEN
    PULSE grip.unclamp
    CALL log("Wait for unclamp gripper. State: WaitingGripUnclamped")
    $action = "WaitingGripUnclamped"
    WAIT SIG(grip.unclamped) OR SIG(s.force.in[1])
  END
; Part 1. Pick etalon
  .$temp = "Pick detail from etalon (ID:"+$ENCODE(.id)+")"
  CALL log(.$temp)
  LMOVE #safe.etalon
  LMOVE .etalon.pos.pt+TRANS(0,0,100)
  LMOVE .etalon.pos.pt+TRANS(0,0,30)
  SPEED 250 MM/S
  ACCURACY 0.02
  LMOVE #et.pos.point[.id]
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  SIGNAL s.grip.full
  LMOVE .etalon.pos.pt+TRANS(0,5,10)
  ACCURACY 100
  LMOVE .etalon.pos.pt+TRANS(0,0,200)
  LMOVE #safe.etalon
  ACCURACY 100
  LMOVE #homyak
  BREAK
; Part 2. Put etalon
  .$temp = "Measure etalon (ID:"+$ENCODE(.id)+")"
  CALL log(.$temp)
; Go to machine
  JMOVE #safe.machine
  JMOVE #before.machine[.p.idx]
  ACCURACY 10
  LMOVE .etalon.mac.pt+TRANS(0,.shift.y,.shift.z)
  ACCURACY 5
  LMOVE .etalon.mac.pt+TRANS(0,.shift.y*0.2,.shift.z*0.2)
  SPEED 250 MM/S
  ACCURACY 0.5
  LMOVE #et.mac.point[.id]
  BREAK
  PULSE grip.unclamp
  TWAIT 0.5
  ACCURACY 5
  LMOVE .etalon.mac.pt+TRANS(0,.shift.y*0.2,.shift.z*0.2)
  ACCURACY 10
  LMOVE .etalon.mac.pt+TRANS(0,.shift.y,.shift.z)
  LMOVE #before.machine[.p.idx]
  BREAK
; Wait result
  CALL log("Waiting for measurement result")
  $action = "WaitingCalibrationResult"
  WAIT SIG(s.etalon.ok) OR SIG(s.etalon.ret) OR SIG(s.etalon.ng)
;
  IF SIG(s.etalon.ok) THEN
    CALL log("Measurement etalon: OK")
  END
  IF SIG(s.etalon.ret) THEN
    CALL log("Measurement result: RETRY")
  END
  IF SIG(s.etalon.ng) THEN
    CALL log("Measurement result: NG")
  END
  $action = ""
; Pick from machine
  ACCURACY 10
  LMOVE .etalon.mac.pt+TRANS(0,.shift.y,.shift.z)
  ACCURACY 5
  LMOVE .etalon.mac.pt+TRANS(0,.shift.y*0.2,.shift.z*0.2)
  SPEED 250 MM/S
  ACCURACY 0.5
  LMOVE #et.mac.point[.id]
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
; Go home
  ACCURACY 5
  LMOVE .etalon.mac.pt+TRANS(0,.shift.y*0.2,.shift.z*0.2)
  ACCURACY 10
  LMOVE .etalon.mac.pt+TRANS(0,.shift.y,.shift.z)
  LMOVE #before.machine[.p.idx]
; Part 3 Return Etalon
  .$temp = "Return etalon to positioner (ID:"+$ENCODE(.id)+")"
  CALL log(.$temp)
  JMOVE #safe.machine
  JMOVE #homyak
  LMOVE #safe.etalon
  LMOVE .etalon.pos.pt+TRANS(0,0,100)
  LMOVE .etalon.pos.pt+TRANS(0,5,30)
  LMOVE .etalon.pos.pt+TRANS(0,5,10)
  SPEED 250 MM/S
  ACCURACY 0.02
  LMOVE #et.pos.point[.id]
  BREAK
  PULSE grip.unclamp
  TWAIT 0.5
  SIGNAL -s.grip.full
  LMOVE .etalon.pos.pt+TRANS(0,0,30)
  ACCURACY 100
  LMOVE .etalon.pos.pt+TRANS(0,0,200)
  LMOVE #safe.etalon
  ACCURACY 100
  LMOVE #homyak
.END
.PROGRAM get.ot.point (.obj.id)
  ot.x = ms[.obj.id]
  ot.y = ns[.obj.id]
.END
.PROGRAM get.state.pc(.$state)@25/11/17 14:11 #210978
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
	;.$state = .$state + "HOME:"
	;IF SIG (do.home1) THEN
	;  .$state = .$state + "TRUE;"
	;ELSE
	;  .$state = .$state + "FALSE;"
	;END
	;; MAX 12
	;;
	;.$state = .$state + "BATALM:"
	;IF SIG (do.bat.alm) THEN
	;  .$state = .$state + "TRUE;"
	;ELSE
	;  .$state = .$state + "FALSE;"
	;END
	; MAX 12
	.$state = .$state + "\n"
.END
.PROGRAM id1 () ; 312.229.002
  ; Object ID
  object.id = 1
  etalon.id = 1 ; Can be object.id <> etalon.id
  ; Working gripper
  pg.gripper = 2
  ; Max objects in output tare
  max.tare.count = 12;147
  spc.tare.count = 50
  ; Object length
  object.length = 27.5
  ;
.END
.PROGRAM id2 () ; 0401.17.02.023-02
  ; Object ID
  object.id = 2
  etalon.id = 2 ; Can be object.id <> etalon.id
  ; Working gripper
  pg.gripper = 2
  ; Max objects in output tare
  max.tare.count = 84
  spc.tare.count = 50
  ; Object length
  object.length = 40
  ;
.END
.PROGRAM id3 () ; 312.229.001
  ; Object ID
  object.id = 3
  etalon.id = 3 ; Can be object.id <> etalon.id
  ; Working gripper
  pg.gripper = 3
  ; Max objects in output tare
  max.tare.count = 77
  spc.tare.count = 77
  ; Object length
  object.length = 40
  ;
.END
.PROGRAM id4 () ; 440.00.026
  ; Object ID
  object.id = 4
  etalon.id = 4 ; Can be object.id <> etalon.id
  ; Working gripper
  pg.gripper = 1
  ; Max objects in output tare
  max.tare.count = 8;168
  spc.tare.count = 50
  ; Object length
  object.length = 23.5
  ;
.END
.PROGRAM id5 () ; 440.00.111
  ; Object ID
  object.id = 5
  etalon.id = 5 ; Can be object.id <> etalon.id
  ; Working gripper
  pg.gripper = 1
  ; Max objects in output tare
  max.tare.count = 273
  spc.tare.count = 50
  ; Object length
  object.length = 13.5
  ;
.END
.PROGRAM id6 () ; 0401.28.02.063
  ; Object ID
  object.id = 6
  etalon.id = 6 ; Can be object.id <> etalon.id
  ; Working gripper
  pg.gripper = 1
  ; Max objects in output tare
  max.tare.count = 126
  spc.tare.count = 50
  ; Object length
  object.length = 28.5
  ;
.END
.PROGRAM log (.$msg)
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
.PROGRAM measure ()
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
  SPEED 250 MM/S
  ACCURACY 0.5
  LMOVE #machine.pos[.pos]
  BREAK
  ;CALL log ("Send command to enable vacuum")
  ;$action = "WaitingMMVacuum"
  PULSE grip.unclamp
  TWAIT 0.5
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
  SPEED 250 MM/S
  ACCURACY 0.5
  LMOVE #machine.pos[.pos]
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
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
.PROGRAM ot.put ()
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
  CALL get.ot.point (count.put)
  ;
  .x = grip.xsh[object.id]
  .y = grip.ysh[object.id]
  .z = grip.zsh[object.id]
  IF object.id <> round.no AND ot.y MOD 2 <> 0 AND SIG (s.opt.flip) THEN
    .x = grip.180xsh[object.id]
    .y = grip.180ysh[object.id]
  END
  ;
  POINT .put = ot.put[ot.x, ot.y] + TRANS(.x, .y, .z)
  ;
  SIGNAL rs7.locked.zone
  BREAK
  CALL log ("Check if positioner is occupied")
  SWAIT -rs13.lock.zone
  ;
  JAPPRO .put, -200
  ACCURACY 5
  LAPPRO .put, -20
  ACCURACY 0.02
  SPEED 250 MM/S
  LMOVE .put
  BREAK
  ;
  PULSE grip.unclamp
  TWAIT 0.5
  count.put = count.put + 1
  SIGNAL -s.grip.full
  $action = "WaitPosFull"
  ;
  LAPPRO .put, -20
  LAPPRO .put, -200
  ;
  ;IF NOT SIG (s.cmd.pick) THEN
  ;  JMOVE #homyak
  ;  BREAK
  ;  SIGNAL -rs7.locked.zone
  ;END
  ;
  IF count.put >= max.tare.count THEN
    SIGNAL rs7.tare.chg
  END
  ;
.END
.PROGRAM pg.select ()
  SCASE $pg.name OF
    SVALUE "312.229.002":
      CASE detail.spec OF
        VALUE 0:
          CALL id1; idX_1
        ANY :
          $pg.name = "NULL"
      END
      ;
    SVALUE "0401.17.02.023":
      CASE detail.spec OF
        VALUE 0:
          CALL id2; idX_1
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
        ANY :
          $pg.name = "NULL"
      END
      ;
    SVALUE "0401.28.02.063":
      CASE detail.spec OF
        VALUE 0:
          CALL id6; idX_1
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
.PROGRAM pg0 ()
  state = 0
  CALL a.main
.END
.PROGRAM pos.pick ()
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
  SIGNAL rs7.locked.zone
  ;
    IF SIG(do.home) THEN
    CALL log("Check if positioner is occupied")
    SWAIT -rs13.lock.zone
  END
  ;
  JMOVE .temp + TRANS (0, 0, 30)
  BREAK
  IF NOT SIG (grip.unclamped) THEN
    PULSE grip.unclamp
    CALL log ("Wait for unclamp gripper. State: WaitingGripUnclamped")
    $action = "WaitingGripUnclamped"
    WAIT SIG (grip.unclamped) OR SIG (s.force.in[1])
  END
  ;
  SPEED 250 MM/S
  ACCURACY 0.02
  LMOVE #pos.point[object.id]
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  SIGNAL s.grip.full
  SIGNAL -s.cmd.measured
  count.pick = count.pick + 1
  BITS rs7.det.picked[0], 8 = count.pick
  ;
  LMOVE .temp + TRANS (0, 5, 10)
  ACCURACY 100
  LMOVE .temp + TRANS (0, 0, 200)
  ACCURACY 100
  LMOVE #homyak
  ;
  BREAK
  SIGNAL -rs7.locked.zone
  ;
.END
.PROGRAM safe.home ()
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
.PROGRAM set.io.pc ()
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
  rs13.det.put[0] = 1025
  rs13.det.put[1] = 1026
  rs13.det.put[2] = 1027
  rs13.det.put[3] = 1028
  rs13.det.put[4] = 1029
  rs13.det.put[5] = 1030
  rs13.det.put[6] = 1031
  rs13.det.put[7] = 1032
  ;
  ; Outputs
  ;
  do.work[1] = 17
  rs7.tare.chg = 18
  rs7.locked.zone = 19
  rs7.finish.ack = 20
  ;rs7.put.ack = 21
  ;rs13.detail.put = 21
  rs7.det.picked[0] = 25
  rs7.det.picked[1] = 26
  rs7.det.picked[2] = 27
  rs7.det.picked[3] = 28
  rs7.det.picked[4] = 29
  rs7.det.picked[5] = 30
  rs7.det.picked[6] = 31
  rs7.det.picked[7] = 32
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
  ;
  s.apply.obj = 2256
  ;s.apply.cv = 2257
  s.pr.tst.ot = 2249
  ;
   s.opt.spacer = 2270
  s.opt.flip = 2271
  s.etalon.ok = 2272
  s.etalon.ret = 2273
  s.etalon.ng = 2274
  ;s.hmi.pneum.op = 2258
  ;s.hmi.pneum.cl = 2259
  ;s.hmi.get.cv = 2260
  s.hmi.res.state = 2261
  s.hmi.res.act = 2262
  ;
  s.debug.mode = 2300
.END
.PROGRAM set.vars.pc ()
  ;
  ; Constants
  ;
  ; Initialize once
  ;
  ;
  recv.etalon = -1
  ;
  IF NOT EXISTREAL("max.defect.cnt") THEN
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
    pg.gripper = 0
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
    .$name = "grip.xsh[" + $ENCODE(/L, .n) +"]"
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
.PROGRAM state0 () ; Initialization of parameters
  ;
  CALL log ("State 0: Program reset. Initialization of parameters")
  SIGNAL -s.grip.full, -s.measure.ok, -s.measure.ng, -rs7.tare.chg, -s.cmd.measured
  SIGNAL -s.cmd.start, -s.cmd.pick, -s.cmd.finish, -rs7.locked.zone, -s.cmd.stop
  SIGNAL -s.cmd.chk.etal, -rs7.etalon.stop
  SIGNAL -s.etalon.ok, -s.etalon.ret, -s.etalon.ng
  count.pick = 0
  BITS rs7.det.picked[0], 8 = count.pick
  count.put = 0
  ;
  state = 100
  ;
.END
.PROGRAM state1 () ; Pick from positioner
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
.PROGRAM state100 () ; Waiting for start
  ;
  CALL log ("State 100: Waiting for start")
  $action = "WaitingForStart"
  ;
  WHILE NOT SIG (s.cmd.start)
    TWAIT 0.5
  END
  SIGNAL -s.cmd.start
  SIGNAL -rs7.finish.ack
  ;
  CALL log ("START with Name:" + $pg.name + "-" + $ENCODE (detail.spec) + " Count:" + $ENCODE (detail.count) + " OT:" + $ot.data + " OPT:" + $opt.data)
  ;
  CALL pg.select
  state = 106
.END
.PROGRAM state101 () ; Auxilary state
  CALL log ("State 101: Calculating next step")
  state = 102
.END
.PROGRAM state102 () ; Decision making
  ; Priority 1
  IF SIG (s.cmd.pause) THEN
    state = 105
    RETURN
  END
  IF SIG(s.cmd.chk.etal) AND NOT SIG(s.grip.full) THEN
    state = 5
    RETURN
  END
  ; Priority 2
  ;IF SIG (s.cmd.stop) AND BITS (rs13.det.put[0], 8) <= count.pick THEN
  ;  state = 6
  ;  RETURN
  ;END
  ; Priority 3
  IF NOT SIG (s.grip.full) THEN
    $action = "WaitPosFull"
    IF SIG (s.cmd.pick) AND NOT SIG (rs13.work[1]) AND BITS (rs13.det.put[0], 8) > count.pick THEN
      state = 1
      RETURN
    END
  END
  ; Priority 4
  IF SIG (s.grip.full) AND NOT SIG (s.cmd.measured) AND NOT SIG(rs7.etalon.stop) THEN
    state = 2
    RETURN
  END
  ; Priority 5
  IF SIG (s.grip.full) AND SIG (s.measure.ok) AND NOT SIG (rs7.tare.chg) AND NOT SIG(rs7.etalon.stop) THEN
    state = 3
    RETURN
  END
  ; Priority 6
  IF SIG (s.grip.full) AND (SIG (s.measure.ng) OR SIG(rs7.etalon.stop)) THEN
    state = 4
    RETURN
  END
    ; Priority 8
  IF NOT SIG (s.grip.full); AND NOT SIG (s.cmd.pick) THEN
    JMOVE #homyak
    BREAK
    SIGNAL -rs7.locked.zone
  END
  ; Priority 7
  IF SIG (rs13.finish) AND NOT SIG (s.grip.full) AND NOT (BITS (rs13.det.put[0], 8) > count.pick) THEN
    state = 103
    RETURN
  END

.END
.PROGRAM state103 () ; Auxilary state
  CALL log ("State 103: Ending sequence started")
  state = 104
  ;
.END
.PROGRAM state104 () ; Ending sequence
  ;
  SIGNAL rs7.finish.ack
  state = 255
  RETURN
  ;
.END
.PROGRAM state105 () ; Program paused
  CALL log ("State 105: Program paused")
  $action = "Paused"
  SWAIT s.cmd.resume
  $action = " "
  CALL log ("Program resumed")
  SIGNAL -s.cmd.pause
  state = 101
  
.END
.PROGRAM state106 () ; Check program
  CALL log ("State 106: Check program")
  IF $pg.name <> "NULL" THEN
    CALL log ("Selected program: " + $pg.name)
    IF object.id == round.no THEN
      CALL calc.grid.rnd
    ELSE
      CALL calc.grid
    END
    CALL calc.ot
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
.PROGRAM state2 () ; Measurement process
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
.PROGRAM state255 ()
  CALL log ("State 255: Program complete")
  state = 0
  ;
.END
.PROGRAM state3 () ; Put detail to OT
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
.PROGRAM state4 () ; State 4: Put detail to defect tare
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
.PROGRAM state5 () ; Check etalon
  CALL log ("State 5: Check etalon")
  ; TEMPORARY!!!!!!!!
  ;state = 101 
  ;RETURN
  SIGNAL -s.etalon.ok, -s.etalon.ret, -s.etalon.ng
  IF recv.etalon == 99 THEN
    CALL etalon.measure (99)
  ELSE
    CALL etalon.measure (etalon.id)
  END
  ;
  IF SIG(s.etalon.ok) THEN
    state = 101
  END
  IF SIG(s.etalon.ret) THEN
    state = 5
  END
  IF SIG(s.etalon.ng) THEN
    SIGNAL rs7.etalon.stop
    ;SIGNAL s.force.defect
    state = 101
  END
  SIGNAL -s.cmd.chk.etal
  ;IF SIG (s.measure.ok) THEN
  ;  state = 101
  ;ELSE
  ;  state = 105
  ;END
  ;
.END
.PROGRAM state6 () ; Deprecated
  state = 103
.END
.PROGRAM state7 () ; Deprecated
  SIGNAL s.cmd.chk.etal
  state = 5
.END
.PROGRAM state8 () ; Check etalon by command
  CALL log ("State 8: Check etalon by command")
  CALL etalon.measure (etalon.id)
  state = 105
.END
.PROGRAM tcp.callback.pc(.$data[],.data.length)@25/11/18 16:27 #1195
  .$temp = "Received " + $ENCODE (.data.length) + " strings:"
  PRINT tcp.recv.ena: .$temp
  FOR .i = 1 TO .data.length
    PRINT tcp.recv.ena: .$data[.i]
  END
  ;
  CALL tcp.log.pc (.$data[1])
  ; Strings for parsing
  ;
  ; START COMMAND
  ; String format:
  ; START;DETAILNAME;DETAILSPEC;DETAILCOUNT;[INTAREID1,INTAREID2,..];[OTAREID1,INTAREID2,..];
  IF INSTR (.$data[1] , "START") THEN
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
    PULSE s.cmd.start, 5
  END
  ;
  ; SENSOR COMMAND
  ; String format:
  ; SENSOR;SENSORNAME;STATE;
  IF INSTR (.$data[1] , "SENSOR") THEN
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
  IF INSTR (.$data[1], "ETALONRESULT") THEN
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
  IF INSTR (.$data[1], "MEASUREMENT") THEN
    ; Decode command
    .$temp = $DECODE (.$data[1], ";", 0)
    .$temp = $DECODE (.$data[1], ";", 1)
    ; Decode measurement result
    .$measurement.state = $DECODE (.$data[1], ";", 0)
    IF INSTR (.$measurement.state, "TRUE") THEN
      SIGNAL s.measure.ok
    END
    IF INSTR (.$measurement.state, "FALSE") THEN
      SIGNAL s.measure.ng
    END
  END
  ;
  ; SPEED COMMAND
  ; String format:
  ; SPEED;VALUE;
  ;
  IF INSTR (.$data[1] , "SPEED") THEN
    .$temp = $DECODE (.$data[1], ";",0)
    .$temp = $DECODE (.$data[1], ";",1)
    .$spd = $DECODE (.$data[1], ";",0)
    .speed = VAL (.$spd)
    IF .speed <=0 THEN
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
  IF INSTR (.$data[1] , "POSITIONERFULL") THEN
    PULSE s.cmd.pick, 5
  END
  ;
  ; ETALON COMMAND
  ; String format:
  ; ETALON;ID;
  ;
  IF INSTR (.$data[1] , "ETALON") THEN
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
  IF INSTR (.$data[1] , "CLEANDEFECT") THEN
    count.defect = 0
  END
  ;
  ; PAUSE COMMAND
  ; String format:
  ; PAUSE;
  ;
  IF INSTR (.$data[1] , "PAUSE") THEN
    SIGNAL s.cmd.pause
  END
  ;
  ; RESUME COMMAND
  ; String format:
  ; RESUME;
  ;
  IF INSTR (.$data[1] , "RESUME") THEN
    PULSE s.cmd.resume, 5
  END
  ;
  ; STOP COMMAND
  ; String format:
  ; STOP;
  ;
  IF INSTR (.$data[1] , "STOP") THEN
    SIGNAL s.cmd.stop
  END
  ;
  ; STOP COMMAND
  ; String format:
  ; STOP;
  ;
  IF INSTR (.$data[1] , "STOP") THEN
    SIGNAL s.cmd.stop
  END
  ;
  ; CYCLEON COMMAND
  ; String format:
  ; CYCLEON;
  ;
  IF INSTR (.$data[1] , "CYCLEON") THEN
    IF SIG(do.automatic) THEN
      MC CONTINUE
    END
  END
  ;
  ; STEPMODE COMMAND
  ; String format:
  ; STEPMODE;VALUE
  ;
  IF INSTR (.$data[1] , "STEPMODE") THEN
    ; Decode command
    .$temp = $DECODE (.$data[1], ";", 0)
    .$temp = $DECODE (.$data[1], ";", 1)
    ; Decode measurement result
    .$state = $DECODE (.$data[1], ";", 0)
    IF INSTR (.$state, "TRUE") THEN
      STP_ONCE ON
    END
    IF INSTR (.$state, "FALSE") THEN
      STP_ONCE OFF
    END
  END
  ;
  ; NEXTSTEP COMMAND
  ; String format:
  ; NEXTSTEP;
  ;
  IF INSTR (.$data[1] , "NEXTSTEP") THEN
    STPNEXT
  END
  ;
  .$data[1] = ""
.END
.PROGRAM tcp.client.pc()@25/11/17 14:11 #0
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
.PROGRAM tcp.log.pc (.$msg)
  IF NOT SIG(s.tcp.log) THEN
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
.PROGRAM tcp.send.pc (.$data[],.data.length)
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
.PROGRAM tcp.sender.pc ()
  ;
  WHILE TRUE DO
    ;
    CALL get.state.pc (.$data[1])
    .$data[2] = "ACTION:" + $action + ";"
    .$data[2] = .$data[2] + "GRIPPER:" + $ENCODE (current.gripper) + ";"
    .$data[2] = .$data[2] + "PICKCOUNT:" + $ENCODE (count.pick) + ";"
    .$data[2] = .$data[2] + "DEFECTCOUNT:" + $ENCODE (count.defect) + ";"
    .$data[2] = .$data[2] + "STATE:" + $ENCODE (state) + ";"
    .$data[2] = .$data[2] + "HOUR:" + $ENCODE(OPEINFO(3)) + ";"
    ;
    IF SWITCH(STP_ONCE) THEN
      .$data[2] = .$data[2] + "STEPMODE:TRUE;"
    ELSE
      .$data[2] = .$data[2] + "STEPMODE:FALSE;"
    END
    ;
    .$data[2] = .$data[2] + "\n"
    ;
    CALL tcp.send.pc (.$data[], 2)
    TWAIT tcp.sender.dly
  END
  ;
.END
.PROGRAM watchdog.pc ()
  WHILE TRUE DO
    ;
    CALL check.tasks.pc
    CALL check.disp.pc
    CALL check.zone.pc
    ;
    ;IF SWITCH (CS) AND state > 0 THEN
    ;  IF BITS (rs13.det.put[0], 8) == count.pick THEN
    ;    TIMER(1) = 0
    ;  END
    ;END
    ;
    IF SIG (rs13.tare.ack) THEN
      IF count.put==max.tare.count THEN
        count.put = 0
      END
      SIGNAL -rs7.tare.chg
    END
    ;
    IF NOT SIG (s.debug.mode) THEN
      IF SWITCH (REPEAT) AND NOT SWITCH (TEACH_LOCK) AND NOT SWITCH (EMERGENCY ) AND NOT SWITCH (CS ) AND NOT SWITCH (ERROR ) THEN
        MC ZPOWER ON
        ;MC PRIME a.main
        ;WHILE NOT SWITCH(POWER)
        ;  TWAIT 0.01
        ;  MC CONTINUE
        ;END
      END
    END
    ;
    IF NOT SWITCH (REPEAT) THEN
      CALL check.teach.pc
    END
    TWAIT 0.01
  END
  ;
.END
.PROGRAM Comment___ () ; Comments for IDE. Do not use.
	; @@@ PROJECT @@@
	; @@@ PROJECTNAME @@@
	; ALKU_RS007L_UPDATE
	; @@@ HISTORY @@@
	; @@@ INSPECTION @@@
	; s.cmd.pick
	; s.grip.full
	; count.pick
	; s.cmd.chk.etal
	; s.cmd.resume
	; $action
	; rs13.finish
	; >TY BITS (rs13.det.put[0], 8)|0|1|1|0|0|0
	; s.measure.ok
	; s.force.defect
	; count.defect
	; max.defect.cnt
	; @@@ CONNECTION @@@
	; RS007L
	; 192.168.7.103
	; 23
	; @@@ PROGRAM @@@
	;   Group:Etalon:1
	;     1:a.teach.etalon:F
	;       .temp 
	;     1:etalon.measure:F
	;       .id 
	;       .etalon.pos.pt 
	;       .etalon.mac.pt 
	;       .shift.y 
	;       .shift.z 
	;       .p.idx 
	;       .$temp 
	;   Group:OT:2
	;     2:a.teach.ot:F
	;       .ot.down.left 
	;       .ot.down.right 
	;       .ot.up.right 
	;       .ot.orig 
	;     2:calc.grid:F
	;       .max 
	;       .obj.len 
	;       .obj.len.w.spc 
	;       .i 
	;       .j 
	;     2:calc.grid.rnd:F
	;       .max 
	;       .obj.shift 
	;       .i 
	;       .j 
	;     2:get.ot.point:F
	;       .obj.id 
	;       .i 
	;       .x 
	;       .y 
	;     2:a.test.ot:F
	;       .$pg 
	;       .x 
	;       .y 
	;       .z 
	;       .put 
	;     2:ot.put:F
	;       .x 
	;       .y 
	;       .z 
	;       .put 
	;       .tare.chg 
	;       .locked.zone 
	;       .lock.zone 
	;     2:calc.ot:F
	;       .center.col 
	;       .center.row 
	;       .cell 
	;       .i 
	;       .j 
	;       .dist 
	;       .dists 
	;       .array.size 
	;       .result 
	;       .cornerA 
	;       .cornerB 
	;       .tmp.dist 
	;       .tmp.m 
	;       .tmp.n 
	;       .n 
	;       .m 
	;       .filled 
	;       .obj.id 
	;   Group:MeasureMachine:3
	;     3:a.teach.machine:F
	;       .temp 
	;     3:measure:F
	;       .pos 
	;       .shift.y 
	;       .shift.z 
	;       .p.idx 
	;       .machine.pos 
	;   Group:Objects:4
	;     4:id1:F
	;     4:id2:F
	;     4:id3:F
	;     4:id4:F
	;     4:id5:F
	;     4:id6:F
	;   Group:Positioner:5
	;     5:pos.pick:F
	;       .$temp 
	;       .temp 
	;       .locked.zone 
	;       .det.picked 
	;       .lock.zone 
	;     5:a.teach.pos:F
	;       .temp 
	;   Group:Defect:6
	;     6:defect.put:F
	;       .temp 
	;     6:a.teach.defect:F
	;       .x 
	;       .y 
	;       .o 
	;       .k 
	;       .i 
	;       .j 
	;       .defect.pos 
	;   Group:States:7
	;     7:state0:F
	;       .tare.chg 
	;       .finish.ack 
	;       .locked.zone 
	;       .det.picked 
	;     7:state1:F
	;     7:state2:F
	;     7:state3:F
	;     7:state4:F
	;     7:state5:F
	;     7:state6:F
	;     7:state7:F
	;     7:state8:F
	;     7:state100:F
	;     7:state101:F
	;     7:state102:F
	;       .work 
	;       .det.put 
	;       .finish 
	;       .tare.chg 
	;       .locked.zone 
	;     7:state103:F
	;     7:state104:F
	;       .finish.ack 
	;     7:state105:F
	;     7:state106:F
	;     7:state255:F
	;   Group:Utilities:8
	;     8:a.home:F
	;     8:a.align:F
	;     8:safe.home:F
	;       .idx 
	;       .temp 
	;       .s 
	;       .c 
	;       .dz 
	;     8:log:F
	;       .$msg 
	;       .i 
	;     8:pg.select:F
	;   0:a.main:F
	;     .$pg.string 
	;   0:pg0:F
	;   Group:Watchdog:9
	;     9:check.teach.pc:B
	;     9:check.zone.pc:B
	;     9:check.disp.pc:B
	;     9:check.tasks.pc:B
	;     9:watchdog.pc:B
	;       .tare.ack 
	;       .tare.chg 
	;   Group:Initialization:10
	;     10:set.vars.pc:B
	;       .i 
	;       .n 
	;       .$name 
	;     10:set.io.pc:B
	;       .work 
	;       .tare.ack 
	;       .detail.put 
	;       .finish 
	;       .tare.chg 
	;       .locked.zone 
	;       .finish.ack 
	;       .put.ack 
	;       .det.put 
	;       .det.picked 
	;       .lock.zone 
	;   Group:TCPIP:11
	;     11:get.state.pc:B
	;       .$state 
	;     11:tcp.sender.pc:B
	;       .$data 
	;     11:tcp.callback.pc:B
	;       .$data 
	;       .data.length 
	;       .$temp 
	;       .i 
	;       .$sensor.name 
	;       .$sensor.state 
	;       .$state 
	;       .$measurement.state 
	;       .$spd 
	;       .speed 
	;     11:tcp.client.pc:B
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
	;     11:tcp.send.pc:B
	;       .$data 
	;       .data.length 
	;       .tcp.send.tmo 
	;       .status 
	;       .$temp 
	;       .i 
	;     11:tcp.log.pc:B
	;       .$msg 
	;       .i 
	;   0:autostart.pc:B
	;   0:errstart.pc:B
	; @@@ TRANS @@@
	; ot.put[] Calculated OT put point
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
	; @@@ REALS @@@
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
	; pg.gripper Object data: Gripper in current program
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
	; @@@ STRINGS @@@
	; $log.entry[] Log entry
	; $action Current robot action to send
	; $pg.name Program name (same as in machine)
	; $tcp.ip Server PC IP address
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
	; s.opt.spacer Option for put to OT with spacer
	; s.opt.flip Option to put to OT with flip
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
.TRANS
tool.pick[1] 0.000000 10.000000 120.000000 -22.500000 180.000000 0.000000
ot.frame -145.166809 539.605957 -5.568207 -84.510590 1.748546 -95.627464
ot.put[0,0] -145.166809 539.605957 -5.568207 -84.510590 1.748546 -95.627464
ot.put[0,1] -145.095657 568.592468 -4.687590 -84.510590 1.748546 -95.627464
ot.put[0,2] -145.024490 597.579041 -3.806973 -84.510590 1.748546 -95.627464
ot.put[0,3] -144.953339 626.565552 -2.926356 -84.510590 1.748546 -95.627464
ot.put[0,4] -144.882187 655.552124 -2.045740 -84.510590 1.748546 -95.627464
ot.put[0,5] -144.811020 684.538635 -1.165123 -84.510590 1.748546 -95.627464
ot.put[0,6] -144.739868 713.525208 -0.284506 -84.510590 1.748546 -95.627464
ot.put[0,7] -144.737411 714.524719 -0.254140 -84.510590 1.748546 -95.627464
ot.put[1,0] -129.166931 539.568115 -5.616081 -84.510590 1.748546 -95.627464
ot.put[1,1] -129.095764 568.554688 -4.735464 -84.510590 1.748546 -95.627464
ot.put[1,2] -129.024612 597.541199 -3.854847 -84.510590 1.748546 -95.627464
ot.put[1,3] -128.953461 626.527771 -2.974230 -84.510590 1.748546 -95.627464
ot.put[1,4] -128.882294 655.514282 -2.093614 -84.510590 1.748546 -95.627464
ot.put[1,5] -128.811142 684.500854 -1.212997 -84.510590 1.748546 -95.627464
ot.put[1,6] -128.739975 713.487366 -0.332380 -84.510590 1.748546 -95.627464
ot.put[1,7] -128.737518 714.486938 -0.302014 -84.510590 1.748546 -95.627464
ot.put[2,0] -113.167038 539.530334 -5.663955 -84.510590 1.748546 -95.627464
ot.put[2,1] -113.095886 568.516846 -4.783338 -84.510590 1.748546 -95.627464
ot.put[2,2] -113.024727 597.503418 -3.902721 -84.510590 1.748546 -95.627464
ot.put[2,3] -112.953568 626.489929 -3.022104 -84.510590 1.748546 -95.627464
ot.put[2,4] -112.882416 655.476440 -2.141487 -84.510590 1.748546 -95.627464
ot.put[2,5] -112.811249 684.463013 -1.260871 -84.510590 1.748546 -95.627464
ot.put[2,6] -112.740097 713.449524 -0.380254 -84.510590 1.748546 -95.627464
ot.put[2,7] -112.737640 714.449097 -0.349888 -84.510590 1.748546 -95.627464
ot.put[3,0] -97.167160 539.492493 -5.711828 -84.510590 1.748546 -95.627464
ot.put[3,1] -97.096001 568.479004 -4.831212 -84.510590 1.748546 -95.627464
ot.put[3,2] -97.024841 597.465576 -3.950595 -84.510590 1.748546 -95.627464
ot.put[3,3] -96.953690 626.452087 -3.069978 -84.510590 1.748546 -95.627464
ot.put[3,4] -96.882523 655.438660 -2.189361 -84.510590 1.748546 -95.627464
ot.put[3,5] -96.811371 684.425171 -1.308744 -84.510590 1.748546 -95.627464
ot.put[3,6] -96.740211 713.411743 -0.428127 -84.510590 1.748546 -95.627464
ot.put[3,7] -96.737762 714.411255 -0.397761 -84.510590 1.748546 -95.627464
ot.put[4,0] -81.167267 539.454651 -5.759702 -84.510590 1.748546 -95.627464
ot.put[4,1] -81.096115 568.441223 -4.879086 -84.510590 1.748546 -95.627464
ot.put[4,2] -81.024956 597.427734 -3.998469 -84.510590 1.748546 -95.627464
ot.put[4,3] -80.953796 626.414307 -3.117852 -84.510590 1.748546 -95.627464
ot.put[4,4] -80.882645 655.400818 -2.237235 -84.510590 1.748546 -95.627464
ot.put[4,5] -80.811485 684.387329 -1.356618 -84.510590 1.748546 -95.627464
ot.put[4,6] -80.740326 713.373901 -0.476001 -84.510590 1.748546 -95.627464
ot.put[4,7] -80.737869 714.373413 -0.445635 -84.510590 1.748546 -95.627464
ot.put[5,0] -65.167389 539.416870 -5.807576 -84.510590 1.748546 -95.627464
ot.put[5,1] -65.096230 568.403381 -4.926959 -84.510590 1.748546 -95.627464
ot.put[5,2] -65.025078 597.389893 -4.046342 -84.510590 1.748546 -95.627464
ot.put[5,3] -64.953918 626.376465 -3.165726 -84.510590 1.748546 -95.627464
ot.put[5,4] -64.882759 655.362976 -2.285109 -84.510590 1.748546 -95.627464
ot.put[5,5] -64.811600 684.349548 -1.404492 -84.510590 1.748546 -95.627464
ot.put[5,6] -64.740448 713.336060 -0.523875 -84.510590 1.748546 -95.627464
ot.put[5,7] -64.737991 714.335632 -0.493509 -84.510590 1.748546 -95.627464
ot.put[6,0] -49.167503 539.379028 -5.855450 -84.510590 1.748546 -95.627464
ot.put[6,1] -49.096344 568.365540 -4.974833 -84.510590 1.748546 -95.627464
ot.put[6,2] -49.025192 597.352112 -4.094216 -84.510590 1.748546 -95.627464
ot.put[6,3] -48.954033 626.338623 -3.213599 -84.510590 1.748546 -95.627464
ot.put[6,4] -48.882874 655.325195 -2.332983 -84.510590 1.748546 -95.627464
ot.put[6,5] -48.811714 684.311707 -1.452366 -84.510590 1.748546 -95.627464
ot.put[6,6] -48.740562 713.298218 -0.571749 -84.510590 1.748546 -95.627464
ot.put[6,7] -48.738106 714.297791 -0.541383 -84.510590 1.748546 -95.627464
ot.put[7,0] -33.167618 539.341187 -5.903324 -84.510590 1.748546 -95.627464
ot.put[7,1] -33.096458 568.327759 -5.022707 -84.510590 1.748546 -95.627464
ot.put[7,2] -33.025307 597.314270 -4.142090 -84.510590 1.748546 -95.627464
ot.put[7,3] -32.954147 626.300781 -3.261473 -84.510590 1.748546 -95.627464
ot.put[7,4] -32.882988 655.287354 -2.380857 -84.510590 1.748546 -95.627464
ot.put[7,5] -32.811829 684.273926 -1.500240 -84.510590 1.748546 -95.627464
ot.put[7,6] -32.740677 713.260437 -0.619623 -84.510590 1.748546 -95.627464
ot.put[7,7] -32.738220 714.260010 -0.589257 -84.510590 1.748546 -95.627464
ot.put[8,0] -17.167732 539.303345 -5.951198 -84.510590 1.748546 -95.627464
ot.put[8,1] -17.096573 568.289917 -5.070581 -84.510590 1.748546 -95.627464
ot.put[8,2] -17.025421 597.276428 -4.189964 -84.510590 1.748546 -95.627464
ot.put[8,3] -16.954254 626.263000 -3.309347 -84.510590 1.748546 -95.627464
ot.put[8,4] -16.883102 655.249512 -2.428730 -84.510590 1.748546 -95.627464
ot.put[8,5] -16.811951 684.236084 -1.548114 -84.510590 1.748546 -95.627464
ot.put[8,6] -16.740784 713.222595 -0.667497 -84.510590 1.748546 -95.627464
ot.put[8,7] -16.738327 714.222168 -0.637131 -84.510590 1.748546 -95.627464
ot.put[9,0] -1.167847 539.265564 -5.999072 -84.510590 1.748546 -95.627464
ot.put[9,1] -1.096695 568.252075 -5.118455 -84.510590 1.748546 -95.627464
ot.put[9,2] -1.025528 597.238647 -4.237838 -84.510590 1.748546 -95.627464
ot.put[9,3] -0.954376 626.225159 -3.357221 -84.510590 1.748546 -95.627464
ot.put[9,4] -0.883224 655.211731 -2.476604 -84.510590 1.748546 -95.627464
ot.put[9,5] -0.812057 684.198242 -1.595988 -84.510590 1.748546 -95.627464
ot.put[9,6] -0.740906 713.184814 -0.715371 -84.510590 1.748546 -95.627464
ot.put[9,7] -0.738449 714.184326 -0.685005 -84.510590 1.748546 -95.627464
ot.put[10,0] 14.832031 539.227722 -6.046946 -84.510590 1.748546 -95.627464
ot.put[10,1] 14.903183 568.214294 -5.166328 -84.510590 1.748546 -95.627464
ot.put[10,2] 14.974350 597.200806 -4.285712 -84.510590 1.748546 -95.627464
ot.put[10,3] 15.045502 626.187378 -3.405095 -84.510590 1.748546 -95.627464
ot.put[10,4] 15.116653 655.173889 -2.524478 -84.510590 1.748546 -95.627464
ot.put[10,5] 15.187820 684.160400 -1.643862 -84.510590 1.748546 -95.627464
ot.put[10,6] 15.258972 713.146973 -0.763245 -84.510590 1.748546 -95.627464
ot.put[10,7] 15.261429 714.146484 -0.732879 -84.510590 1.748546 -95.627464
ot.put[11,0] 30.831924 539.189880 -6.094819 -84.510590 1.748546 -95.627464
ot.put[11,1] 30.903076 568.176453 -5.214202 -84.510590 1.748546 -95.627464
ot.put[11,2] 30.974243 597.162964 -4.333586 -84.510590 1.748546 -95.627464
ot.put[11,3] 31.045395 626.149536 -3.452969 -84.510590 1.748546 -95.627464
ot.put[11,4] 31.116547 655.136047 -2.572352 -84.510590 1.748546 -95.627464
ot.put[11,5] 31.187714 684.122620 -1.691735 -84.510590 1.748546 -95.627464
ot.put[11,6] 31.258865 713.109131 -0.811118 -84.510590 1.748546 -95.627464
ot.put[11,7] 31.261322 714.108704 -0.780752 -84.510590 1.748546 -95.627464
ot.put[12,0] 46.831802 539.152100 -6.142693 -84.510590 1.748546 -95.627464
ot.put[12,1] 46.902954 568.138611 -5.262076 -84.510590 1.748546 -95.627464
ot.put[12,2] 46.974121 597.125183 -4.381459 -84.510590 1.748546 -95.627464
ot.put[12,3] 47.045273 626.111694 -3.500843 -84.510590 1.748546 -95.627464
ot.put[12,4] 47.116425 655.098267 -2.620226 -84.510590 1.748546 -95.627464
ot.put[12,5] 47.187592 684.084778 -1.739609 -84.510590 1.748546 -95.627464
ot.put[12,6] 47.258743 713.071289 -0.858992 -84.510590 1.748546 -95.627464
ot.put[12,7] 47.261200 714.070862 -0.828626 -84.510590 1.748546 -95.627464
ot.put[13,0] 62.831696 539.114258 -6.190567 -84.510590 1.748546 -95.627464
ot.put[13,1] 62.902847 568.100830 -5.309950 -84.510590 1.748546 -95.627464
ot.put[13,2] 62.974014 597.087341 -4.429333 -84.510590 1.748546 -95.627464
ot.put[13,3] 63.045166 626.073853 -3.548717 -84.510590 1.748546 -95.627464
ot.put[13,4] 63.116318 655.060425 -2.668100 -84.510590 1.748546 -95.627464
ot.put[13,5] 63.187485 684.046936 -1.787483 -84.510590 1.748546 -95.627464
ot.put[13,6] 63.258636 713.033508 -0.906866 -84.510590 1.748546 -95.627464
ot.put[13,7] 63.261093 714.033020 -0.876500 -84.510590 1.748546 -95.627464
ot.put[14,0] 78.831573 539.076416 -6.238441 -84.510590 1.748546 -95.627464
ot.put[14,1] 78.902725 568.062988 -5.357824 -84.510590 1.748546 -95.627464
ot.put[14,2] 78.973892 597.049500 -4.477207 -84.510590 1.748546 -95.627464
ot.put[14,3] 79.045044 626.036072 -3.596590 -84.510590 1.748546 -95.627464
ot.put[14,4] 79.116196 655.022583 -2.715974 -84.510590 1.748546 -95.627464
ot.put[14,5] 79.187363 684.009155 -1.835357 -84.510590 1.748546 -95.627464
ot.put[14,6] 79.258514 712.995667 -0.954740 -84.510590 1.748546 -95.627464
ot.put[14,7] 79.260971 713.995239 -0.924374 -84.510590 1.748546 -95.627464
ot.put[15,0] 94.831467 539.038635 -6.286314 -84.510590 1.748546 -95.627464
ot.put[15,1] 94.902618 568.025146 -5.405698 -84.510590 1.748546 -95.627464
ot.put[15,2] 94.973785 597.011719 -4.525081 -84.510590 1.748546 -95.627464
ot.put[15,3] 95.044937 625.998230 -3.644464 -84.510590 1.748546 -95.627464
ot.put[15,4] 95.116089 654.984741 -2.763847 -84.510590 1.748546 -95.627464
ot.put[15,5] 95.187256 683.971313 -1.883231 -84.510590 1.748546 -95.627464
ot.put[15,6] 95.258408 712.957886 -1.002614 -84.510590 1.748546 -95.627464
ot.put[15,7] 95.260864 713.957397 -0.972248 -84.510590 1.748546 -95.627464
ot.put[16,0] 110.831345 539.000793 -6.334188 -84.510590 1.748546 -95.627464
ot.put[16,1] 110.902496 567.987305 -5.453572 -84.510590 1.748546 -95.627464
ot.put[16,2] 110.973663 596.973877 -4.572955 -84.510590 1.748546 -95.627464
ot.put[16,3] 111.044830 625.960388 -3.692338 -84.510590 1.748546 -95.627464
ot.put[16,4] 111.115967 654.946960 -2.811721 -84.510590 1.748546 -95.627464
ot.put[16,5] 111.187134 683.933472 -1.931105 -84.510590 1.748546 -95.627464
ot.put[16,6] 111.258301 712.920044 -1.050488 -84.510590 1.748546 -95.627464
ot.put[16,7] 111.260742 713.919556 -1.020122 -84.510590 1.748546 -95.627464
ot.put[17,0] 126.831238 538.962952 -6.382062 -84.510590 1.748546 -95.627464
ot.put[17,1] 126.902405 567.949524 -5.501446 -84.510590 1.748546 -95.627464
ot.put[17,2] 126.973541 596.936035 -4.620829 -84.510590 1.748546 -95.627464
ot.put[17,3] 127.044708 625.922607 -3.740212 -84.510590 1.748546 -95.627464
ot.put[17,4] 127.115875 654.909119 -2.859595 -84.510590 1.748546 -95.627464
ot.put[17,5] 127.187012 683.895630 -1.978979 -84.510590 1.748546 -95.627464
ot.put[17,6] 127.258179 712.882202 -1.098361 -84.510590 1.748546 -95.627464
ot.put[17,7] 127.260651 713.881714 -1.067996 -84.510590 1.748546 -95.627464
ot.put[18,0] 142.831116 538.925171 -6.429936 -84.510590 1.748546 -95.627464
ot.put[18,1] 142.902283 567.911682 -5.549319 -84.510590 1.748546 -95.627464
ot.put[18,2] 142.973419 596.898254 -4.668703 -84.510590 1.748546 -95.627464
ot.put[18,3] 143.044586 625.884766 -3.788086 -84.510590 1.748546 -95.627464
ot.put[18,4] 143.115753 654.871338 -2.907469 -84.510590 1.748546 -95.627464
ot.put[18,5] 143.186890 683.857849 -2.026852 -84.510590 1.748546 -95.627464
ot.put[18,6] 143.258057 712.844360 -1.146235 -84.510590 1.748546 -95.627464
ot.put[18,7] 143.260529 713.843933 -1.115870 -84.510590 1.748546 -95.627464
ot.put[19,0] 158.830994 538.887329 -6.477810 -84.510590 1.748546 -95.627464
ot.put[19,1] 158.902161 567.873840 -5.597193 -84.510590 1.748546 -95.627464
ot.put[19,2] 158.973297 596.860413 -4.716577 -84.510590 1.748546 -95.627464
ot.put[19,3] 159.044464 625.846924 -3.835959 -84.510590 1.748546 -95.627464
ot.put[19,4] 159.115631 654.833496 -2.955343 -84.510590 1.748546 -95.627464
ot.put[19,5] 159.186768 683.820007 -2.074726 -84.510590 1.748546 -95.627464
ot.put[19,6] 159.257935 712.806580 -1.194109 -84.510590 1.748546 -95.627464
ot.put[19,7] 159.260406 713.806091 -1.163743 -84.510590 1.748546 -95.627464
ot.put[20,0] 174.830872 538.849487 -6.525684 -84.510590 1.748546 -95.627464
ot.put[20,1] 174.902039 567.836060 -5.645067 -84.510590 1.748546 -95.627464
ot.put[20,2] 174.973175 596.822571 -4.764450 -84.510590 1.748546 -95.627464
ot.put[20,3] 175.044342 625.809143 -3.883833 -84.510590 1.748546 -95.627464
ot.put[20,4] 175.115509 654.795654 -3.003217 -84.510590 1.748546 -95.627464
ot.put[20,5] 175.186646 683.782227 -2.122600 -84.510590 1.748546 -95.627464
ot.put[20,6] 175.257812 712.768738 -1.241983 -84.510590 1.748546 -95.627464
ot.put[20,7] 175.260284 713.768311 -1.211617 -84.510590 1.748546 -95.627464
.END
.JOINTS
#homyak 13.751370 -37.185059 -123.196098 -0.000880 -93.838348 7.315490
#pos.point[1] -15.713965 35.412598 -67.587135 20.550589 -72.001648 121.858429
#pos.point[4] -21.391262 18.831665 -91.545250 16.562988 -62.277378 126.711113
#def.up.right 95.497124 60.880005 -34.419159 -0.026367 -82.819756 109.634010
#def.up.left 81.402985 65.901131 -25.071423 -0.397266 -87.192314 123.740898
#def.down.right 96.876129 30.063354 -87.202248 0.017578 -60.928806 108.241516
#before.machine[1] -121.615997 4.829000 -127.328003 -137.613007 -51.009998 -8.870000
#defect.point[50] 79.791443 47.037457 -59.593079 -0.403593 -71.823288 124.406555
#safe.machine -104.177643 -37.185425 -123.196983 -0.000879 -93.836975 -146.334885
#defect.safe 109.729698 -37.185059 -123.196548 -0.002640 -93.839722 38.109039
#defect.point[49] 84.835213 73.208214 -11.169748 0.016636 -95.337646 119.109566
#defect.point[48] 88.335648 70.712921 -15.949306 0.011370 -93.055199 115.607513
#defect.point[47] 91.859779 70.138939 -17.043697 0.006077 -92.535477 112.082909
#defect.point[46] 95.381027 71.084099 -15.241538 0.000768 -93.391907 108.561699
#defect.point[45] 81.069298 65.582573 -25.649832 0.022240 -88.487648 122.871414
#defect.point[44] 84.625755 63.348911 -29.824364 0.017085 -86.550461 119.314034
#defect.point[43] 88.235886 62.167454 -32.019459 0.011751 -85.539101 115.703789
#defect.point[42] 91.871773 61.852280 -32.603756 0.006297 -85.270782 112.068222
#defect.point[41] 95.504349 62.363461 -31.656752 0.000798 -85.705872 108.436211
#defect.point[40] 80.735893 59.080215 -37.704197 0.023133 -82.944519 123.201263
#defect.point[39] 84.403580 57.396027 -40.781086 0.017826 -81.555801 119.533531
#defect.point[38] 88.130196 56.460453 -42.481682 0.012288 -80.793213 115.807426
#defect.point[37] 91.885139 56.206348 -42.942730 0.006603 -80.587112 112.053329
#defect.point[36] 95.636368 56.617683 -42.197159 0.000870 -80.920578 108.303123
#defect.point[35] 80.381004 54.053799 -46.819477 0.024180 -78.864876 123.553558
#defect.point[34] 84.166832 52.592396 -49.435890 0.018664 -77.714081 119.768272
#defect.point[33] 88.017601 51.765907 -50.908287 0.012880 -77.070747 115.918472
#defect.point[32] 91.899628 51.539803 -51.310425 0.006932 -76.895592 112.037750
#defect.point[31] 95.777527 51.905575 -50.660702 0.000932 -77.178703 108.161263
#defect.point[30] 80.002319 49.740391 -54.486206 0.025324 -75.520927 123.930092
#defect.point[29] 83.913879 48.395573 -56.847038 0.019565 -74.509323 120.019524
#defect.point[28] 87.897270 47.627636 -58.188274 0.013507 -73.938713 116.037582
#defect.point[27] 91.915276 47.416645 -58.556156 0.007267 -73.782753 112.021278
#defect.point[26] 95.928688 47.757809 -57.962147 0.000972 -74.034714 108.009659
#defect.point[25] 79.597321 45.859844 -61.248718 0.026548 -72.648361 124.333229
#defect.point[24] 83.642952 44.580364 -63.450607 0.020521 -71.730576 120.289001
#defect.point[23] 87.768311 43.845062 -64.709145 0.014161 -71.210159 116.165482
#defect.point[22] 91.932152 43.642529 -65.055168 0.007599 -71.067619 112.003746
#defect.point[21] 96.090866 43.969990 -64.496552 0.000983 -71.297874 107.847206
#defect.point[20] 79.163147 42.271103 -67.378242 0.027847 -70.116997 124.765671
#defect.point[19] 83.352051 41.026550 -69.476364 0.021527 -69.268265 120.578606
#defect.point[18] 87.629738 40.307896 -70.680763 0.014837 -68.785469 116.303177
#defect.point[17] 91.950378 40.109493 -71.012604 0.007926 -68.653030 111.985031
#defect.point[16] 96.265282 40.430168 -70.477112 0.000959 -68.866882 107.672676
#defect.point[15] 78.696579 38.890514 -73.032906 0.029220 -67.852310 125.230644
#defect.point[14] 83.038834 37.660049 -75.062851 0.022582 -67.057884 120.890633
#defect.point[13] 87.480377 36.946709 -76.232010 0.015533 -66.605156 116.451736
#defect.point[12] 91.970070 36.749443 -76.554619 0.008242 -66.480858 111.964920
#defect.point[11] 96.453339 37.068241 -76.034126 0.000895 -66.681549 107.484596
#defect.point[10] 78.193878 35.662922 -78.314171 0.030669 -65.807976 125.731842
#defect.point[9] 82.700645 34.430595 -80.300941 0.023686 -65.058807 121.227707
#defect.point[8] 87.318932 33.713654 -81.448425 0.016249 -64.631523 116.612480
#defect.point[7] 91.991417 33.515091 -81.765411 0.008546 -64.514198 111.943283
#defect.point[6] 96.656662 33.835949 -81.254051 0.000786 -64.703636 107.281364
#defect.point[5] 77.650726 32.549145 -83.291359 0.032195 -63.953842 126.273521
#defect.point[4] 82.334389 31.301479 -85.253883 0.024842 -63.244534 121.592888
#defect.point[3] 87.143829 30.573191 -86.390144 0.016983 -62.839947 116.786919
#defect.point[2] 92.014618 30.371168 -86.704361 0.008832 -62.728901 111.919861
#defect.point[1] 96.877190 30.697561 -86.197517 0.000625 -62.908230 107.061043
#before.machine[2] -108.428001 22.215000 -84.198997 0.002000 -73.311996 -142.089996
#ot.up.right 8.931886 44.847294 -64.250351 -0.056250 -70.603638 12.642737
#ot.orig -14.483058 19.727785 -99.746216 -0.044824 -60.321125 36.061401
#ot.down.right 20.170900 20.364260 -104.057533 -0.065918 -55.349121 1.423169
#ot.down.left -17.771484 19.531130 -105.070885 -0.043066 -55.206303 39.353027
#pos.point[2] -17.943750 27.158203 -80.301994 20.984768 -67.090767 120.775612
#pos.point[3] -14.039650 43.860355 -55.270287 18.441212 -76.891945 31.769417
#machine.pos[1] -120.900589 34.739502 -129.595703 -148.167786 -76.755989 12.907508
#machine.pos[2] -121.084282 32.413334 -129.866989 -147.280975 -75.143738 11.431330
#machine.pos[3] -108.429352 28.302614 -91.449318 0.007031 -59.981922 -142.099304
#machine.pos[4] -120.810501 34.656010 -129.709488 -148.471008 -76.604927 12.318366
#et.mac.point[99] -116.219101 48.973022 -118.426521 -153.258408 -78.901749 15.482635
#et.pos.point[99] 42.590481 27.213867 -85.643173 19.667286 -94.327240 -118.745911
#safe.defect 85.116364 -1.856690 -101.774261 -0.002637 -81.495209 25.192118
#pos.point[5] -27.062403 3.609741 -109.914543 17.690626 -57.549133 128.931549
#pos.point[6] -24.266603 11.206055 -101.154915 16.572657 -59.693531 126.417831
#machine.pos[5] -120.855339 35.200932 -129.580521 -148.420029 -76.970901 12.493420
#machine.pos[6] -120.808754 34.013309 -129.783554 -148.398056 -76.117401 12.009513
#safe.etalon 89.266121 -4.592290 -112.841698 2.308890 -66.337509 21.642370
#et.mac.point[1] -120.900589 34.739502 -129.595703 -148.167786 -76.755989 12.907508
#et.mac.point[2] -121.084282 32.413334 -129.866989 -147.280975 -75.143738 11.431330
#et.mac.point[3] -108.429352 28.302614 -91.449318 0.007031 -59.981922 -142.099304
#et.mac.point[4] -120.886086 34.728882 -129.602844 -148.186249 -76.743622 12.912149
#et.mac.point[5] -120.855339 35.200932 -129.580521 -148.420029 -76.970901 12.493420
#et.mac.point[6] -120.808754 34.013309 -129.783554 -148.398056 -76.117401 12.009513
#et.pos.point[1] 31.232376 48.891357 -54.666561 26.100002 -90.973671 77.298569
.END
.REALS
s.pr.tst.ot = 2249
s.defect.pal.ok = 2223
s.defect.pal.ng = 2224
s.measure.ok = 2225
s.measure.ng = 2226
s.cmd.chk.etal = 2237
release.grip = 1
capture.grip = 2
grip.unclamp = 3
grip.clamp = 4
do.work[1] = 17
rs13.tare.ack = 1018
rs13.detail.put = 1019
rs13.finish = 1020
rs7.tare.chg = 18
rs7.locked.zone = 19
rs7.finish.ack = 20
rs7.put.ack = 21
di.ifp.page[1] = 2001
di.ifp.page[2] = 2002
di.ifp.page[3] = 2003
di.ifp.page[4] = 2004
di.ifp.page[5] = 2005
di.ifp.page[6] = 2006
di.ifp.page[7] = 2007
di.ifp.page[8] = 2008
di.hold = 2009
do.home = 2010
do.bat.alm = 2011
s.tcp.send.ena = 2201
s.tcp.recv.ena = 2202
s.tcp.ena = 2203
s.zone.blocked = 2209
do.work[2] = 2212
do.work[3] = 2213
do.work[4] = 2214
do.work[5] = 2215
do.work[6] = 2216
do.work[7] = 2217
do.work[8] = 2218
s.force.in[1] = 2221
s.force.in[2] = 2222
s.grip.full = 2231
s.cmd.start = 2232
s.cmd.finish = 2238
s.cmd.pause = 2239
s.cmd.resume = 2240
s.cmd.stop = 2241
s.pr.home = 2250
s.hmi.res.state = 2261
s.hmi.res.act = 2262
s.debug.mode = 2300
grip.unclamped = 1001
grip.clamped = 1002
s.pr.tch.pos = 2255
s.pr.tch.ot = 2251
s.pr.tch.defect = 2252
s.pr.tch.meas = 2253
s.pr.tch.etal = 2254
s.apply.obj = 2256
count.defect = 8
count.pick = 0
count.put = 0
current.gripper = 1
detail.count = 150
grip.180xsh[1] = 0
grip.180xsh[2] = 0
grip.180xsh[3] = 0
grip.180ysh[1] = 0
grip.180ysh[2] = 0
grip.180ysh[3] = 0
grip.xsh[1] = 16
grip.xsh[2] = -3
grip.xsh[3] = 0
grip.ysh[1] = 2
grip.ysh[2] = 15
grip.ysh[3] = 0
grip.zsh[1] = -15
grip.zsh[2] = 0
grip.zsh[3] = 0
hmi.defect.pos = 5
hmi.etalon.id = 4
hmi.g180x = 0
hmi.g180y = 0
hmi.gx = 16
hmi.gy = 0
hmi.gz = -15
hmi.obj.id = 4
hmi.tool.no = 1
keep.object = 4
line.width = 210
lines.count = 21
lines.shift = 16
max.tare.count = 12
obj.in.line = 7
obj.spacer = 1.5
object.length = 27.5
pg.gripper = 2
rs13.work[1] = 1017
state = 100
tcp.ena = -1
tcp.port = 9007
tcp.recv.ena = -1
tcp.send.ena = -1
tcp.sender.dly = 0.25
tcp.socket = 34
tyterm = 0
s.cmd.pick = 2233
s.opt.spacer = 2270
s.opt.flip = 2271
rs13.det.put[0] = 1025
rs13.det.put[1] = 1026
rs13.det.put[2] = 1027
rs13.det.put[3] = 1028
rs13.det.put[4] = 1029
rs13.det.put[5] = 1030
rs13.det.put[6] = 1031
rs13.det.put[7] = 1032
rs7.det.picked[0] = 25
rs7.det.picked[1] = 26
rs7.det.picked[2] = 27
rs7.det.picked[3] = 28
rs7.det.picked[4] = 29
rs7.det.picked[5] = 30
rs7.det.picked[6] = 31
rs7.det.picked[7] = 32
grip.180xsh[4] = 0
grip.180xsh[5] = 0
grip.180ysh[4] = 0
grip.180ysh[5] = 0
grip.xsh[4] = 16
grip.xsh[5] = -3
grip.ysh[4] = 0
grip.ysh[5] = 0
grip.zsh[4] = -15
grip.zsh[5] = 0
s.cmd.measured = 2234
hmi.gripper = 1
ms[0] = 10
ms[1] = 9
ms[2] = 10
ms[3] = 10
ms[4] = 11
ms[5] = 9
ms[6] = 9
ms[7] = 11
ms[8] = 11
ms[9] = 8
ms[10] = 10
ms[11] = 10
ms[12] = 12
ms[13] = 8
ms[14] = 8
ms[15] = 9
ms[16] = 9
ms[17] = 11
ms[18] = 11
ms[19] = 12
ms[20] = 12
ms[21] = 7
ms[22] = 10
ms[23] = 10
ms[24] = 13
ms[25] = 8
ms[26] = 8
ms[27] = 12
ms[28] = 12
ms[29] = 7
ms[30] = 7
ms[31] = 9
ms[32] = 9
ms[33] = 11
ms[34] = 11
ms[35] = 13
ms[36] = 13
ms[37] = 6
ms[38] = 14
ms[39] = 7
ms[40] = 7
ms[41] = 8
ms[42] = 8
ms[43] = 12
ms[44] = 12
ms[45] = 13
ms[46] = 13
ms[47] = 6
ms[48] = 6
ms[49] = 14
ms[50] = 14
ms[51] = 5
ms[52] = 15
ms[53] = 7
ms[54] = 7
ms[55] = 13
ms[56] = 13
ms[57] = 6
ms[58] = 6
ms[59] = 14
ms[60] = 14
ms[61] = 5
ms[62] = 5
ms[63] = 15
ms[64] = 15
ms[65] = 4
ms[66] = 16
ms[67] = 6
ms[68] = 6
ms[69] = 14
ms[70] = 14
ms[71] = 5
ms[72] = 5
ms[73] = 15
ms[74] = 15
ms[75] = 4
ms[76] = 4
ms[77] = 16
ms[78] = 16
ms[79] = 3
ms[80] = 17
ms[81] = 5
ms[82] = 5
ms[83] = 15
ms[84] = 15
ms[85] = 4
ms[86] = 4
ms[87] = 16
ms[88] = 16
ms[89] = 3
ms[90] = 3
ms[91] = 17
ms[92] = 17
ms[93] = 2
ms[94] = 18
ms[95] = 4
ms[96] = 4
ms[97] = 16
ms[98] = 16
ms[99] = 3
ms[100] = 3
ms[101] = 17
ms[102] = 17
ms[103] = 2
ms[104] = 2
ms[105] = 18
ms[106] = 18
ms[107] = 1
ms[108] = 19
ms[109] = 3
ms[110] = 3
ms[111] = 17
ms[112] = 17
ms[113] = 2
ms[114] = 2
ms[115] = 18
ms[116] = 18
ms[117] = 1
ms[118] = 1
ms[119] = 19
ms[120] = 19
ms[121] = 0
ms[122] = 20
ms[123] = 2
ms[124] = 2
ms[125] = 18
ms[126] = 18
ms[127] = 1
ms[128] = 1
ms[129] = 19
ms[130] = 19
ms[131] = 0
ms[132] = 0
ms[133] = 20
ms[134] = 20
ms[135] = 1
ms[136] = 1
ms[137] = 19
ms[138] = 19
ms[139] = 0
ms[140] = 0
ms[141] = 20
ms[142] = 20
ms[143] = 0
ms[144] = 0
ms[145] = 20
ms[146] = 20
ns[0] = 3
ns[1] = 3
ns[2] = 2
ns[3] = 4
ns[4] = 3
ns[5] = 2
ns[6] = 4
ns[7] = 2
ns[8] = 4
ns[9] = 3
ns[10] = 1
ns[11] = 5
ns[12] = 3
ns[13] = 2
ns[14] = 4
ns[15] = 1
ns[16] = 5
ns[17] = 1
ns[18] = 5
ns[19] = 2
ns[20] = 4
ns[21] = 3
ns[22] = 0
ns[23] = 6
ns[24] = 3
ns[25] = 1
ns[26] = 5
ns[27] = 1
ns[28] = 5
ns[29] = 2
ns[30] = 4
ns[31] = 0
ns[32] = 6
ns[33] = 0
ns[34] = 6
ns[35] = 2
ns[36] = 4
ns[37] = 3
ns[38] = 3
ns[39] = 1
ns[40] = 5
ns[41] = 0
ns[42] = 6
ns[43] = 0
ns[44] = 6
ns[45] = 1
ns[46] = 5
ns[47] = 2
ns[48] = 4
ns[49] = 2
ns[50] = 4
ns[51] = 3
ns[52] = 3
ns[53] = 0
ns[54] = 6
ns[55] = 0
ns[56] = 6
ns[57] = 1
ns[58] = 5
ns[59] = 1
ns[60] = 5
ns[61] = 2
ns[62] = 4
ns[63] = 2
ns[64] = 4
ns[65] = 3
ns[66] = 3
ns[67] = 0
ns[68] = 6
ns[69] = 0
ns[70] = 6
ns[71] = 1
ns[72] = 5
ns[73] = 1
ns[74] = 5
ns[75] = 2
ns[76] = 4
ns[77] = 2
ns[78] = 4
ns[79] = 3
ns[80] = 3
ns[81] = 0
ns[82] = 6
ns[83] = 0
ns[84] = 6
ns[85] = 1
ns[86] = 5
ns[87] = 1
ns[88] = 5
ns[89] = 2
ns[90] = 4
ns[91] = 2
ns[92] = 4
ns[93] = 3
ns[94] = 3
ns[95] = 0
ns[96] = 6
ns[97] = 0
ns[98] = 6
ns[99] = 1
ns[100] = 5
ns[101] = 1
ns[102] = 5
ns[103] = 2
ns[104] = 4
ns[105] = 2
ns[106] = 4
ns[107] = 3
ns[108] = 3
ns[109] = 0
ns[110] = 6
ns[111] = 0
ns[112] = 6
ns[113] = 1
ns[114] = 5
ns[115] = 1
ns[116] = 5
ns[117] = 2
ns[118] = 4
ns[119] = 2
ns[120] = 4
ns[121] = 3
ns[122] = 3
ns[123] = 0
ns[124] = 6
ns[125] = 0
ns[126] = 6
ns[127] = 1
ns[128] = 5
ns[129] = 1
ns[130] = 5
ns[131] = 2
ns[132] = 4
ns[133] = 2
ns[134] = 4
ns[135] = 0
ns[136] = 6
ns[137] = 0
ns[138] = 6
ns[139] = 1
ns[140] = 5
ns[141] = 1
ns[142] = 5
ns[143] = 0
ns[144] = 6
ns[145] = 0
ns[146] = 6
object.id = 1
ot.x = 11
ot.y = 2
round.no = 3
spc.tare.count = 50
detail.spec = 0
grip.xsh[6] = -3
grip.xsh[7] = 0
grip.xsh[8] = 0
grip.xsh[9] = 0
grip.xsh[10] = 0
grip.xsh[11] = 0
grip.xsh[12] = 0
grip.xsh[13] = 0
grip.xsh[14] = 0
grip.xsh[15] = 0
grip.xsh[16] = 0
grip.xsh[17] = 0
grip.xsh[18] = 0
grip.xsh[19] = 0
grip.xsh[20] = 0
grip.xsh[21] = 0
grip.xsh[22] = 0
grip.xsh[23] = 0
grip.xsh[24] = 0
grip.xsh[25] = 0
grip.xsh[26] = 0
grip.xsh[27] = 0
grip.xsh[28] = 0
grip.xsh[29] = 0
grip.xsh[30] = 0
grip.xsh[31] = 0
grip.xsh[32] = 0
etalon.id = 1
grip.180xsh[33] = 0
grip.180xsh[34] = 0
grip.180xsh[35] = 0
grip.180xsh[36] = 0
grip.180xsh[37] = 0
grip.180xsh[38] = 0
grip.180xsh[39] = 0
grip.180xsh[40] = 0
grip.180xsh[41] = 0
grip.180xsh[42] = 0
grip.180xsh[43] = 0
grip.180xsh[44] = 0
grip.180xsh[45] = 0
grip.180xsh[46] = 0
grip.180xsh[47] = 0
grip.180xsh[48] = 0
grip.180xsh[49] = 0
grip.180xsh[50] = 0
grip.180xsh[51] = 0
grip.180xsh[52] = 0
grip.180xsh[53] = 0
grip.180xsh[54] = 0
grip.180xsh[55] = 0
grip.180xsh[56] = 0
grip.180xsh[57] = 0
grip.180xsh[58] = 0
grip.180xsh[59] = 0
grip.180xsh[60] = 0
grip.180xsh[61] = 0
grip.180xsh[62] = 0
grip.180xsh[63] = 0
grip.180xsh[64] = 0
grip.180ysh[33] = 0
grip.180ysh[34] = 0
grip.180ysh[35] = 0
grip.180ysh[36] = 0
grip.180ysh[37] = 0
grip.180ysh[38] = 0
grip.180ysh[39] = 0
grip.180ysh[40] = 0
grip.180ysh[41] = 0
grip.180ysh[42] = 0
grip.180ysh[43] = 0
grip.180ysh[44] = 0
grip.180ysh[45] = 0
grip.180ysh[46] = 0
grip.180ysh[47] = 0
grip.180ysh[48] = 0
grip.180ysh[49] = 0
grip.180ysh[50] = 0
grip.180ysh[51] = 0
grip.180ysh[52] = 0
grip.180ysh[53] = 0
grip.180ysh[54] = 0
grip.180ysh[55] = 0
grip.180ysh[56] = 0
grip.180ysh[57] = 0
grip.180ysh[58] = 0
grip.180ysh[59] = 0
grip.180ysh[60] = 0
grip.180ysh[61] = 0
grip.180ysh[62] = 0
grip.180ysh[63] = 0
grip.180ysh[64] = 0
grip.xsh[33] = 0
grip.xsh[34] = 0
grip.xsh[35] = 0
grip.xsh[36] = 0
grip.xsh[37] = 0
grip.xsh[38] = 0
grip.xsh[39] = 0
grip.xsh[40] = 0
grip.xsh[41] = 0
grip.xsh[42] = 0
grip.xsh[43] = 0
grip.xsh[44] = 0
grip.xsh[45] = 0
grip.xsh[46] = 0
grip.xsh[47] = 0
grip.xsh[48] = 0
grip.xsh[49] = 0
grip.xsh[50] = 0
grip.xsh[51] = 0
grip.xsh[52] = 0
grip.xsh[53] = 0
grip.xsh[54] = 0
grip.xsh[55] = 0
grip.xsh[56] = 0
grip.xsh[57] = 0
grip.xsh[58] = 0
grip.xsh[59] = 0
grip.xsh[60] = 0
grip.xsh[61] = 0
grip.xsh[62] = 0
grip.xsh[63] = 0
grip.xsh[64] = 0
grip.ysh[33] = 0
grip.ysh[34] = 0
grip.ysh[35] = 0
grip.ysh[36] = 0
grip.ysh[37] = 0
grip.ysh[38] = 0
grip.ysh[39] = 0
grip.ysh[40] = 0
grip.ysh[41] = 0
grip.ysh[42] = 0
grip.ysh[43] = 0
grip.ysh[44] = 0
grip.ysh[45] = 0
grip.ysh[46] = 0
grip.ysh[47] = 0
grip.ysh[48] = 0
grip.ysh[49] = 0
grip.ysh[50] = 0
grip.ysh[51] = 0
grip.ysh[52] = 0
grip.ysh[53] = 0
grip.ysh[54] = 0
grip.ysh[55] = 0
grip.ysh[56] = 0
grip.ysh[57] = 0
grip.ysh[58] = 0
grip.ysh[59] = 0
grip.ysh[60] = 0
grip.ysh[61] = 0
grip.ysh[62] = 0
grip.ysh[63] = 0
grip.ysh[64] = 0
grip.zsh[33] = 0
grip.zsh[34] = 0
grip.zsh[35] = 0
grip.zsh[36] = 0
grip.zsh[37] = 0
grip.zsh[38] = 0
grip.zsh[39] = 0
grip.zsh[40] = 0
grip.zsh[41] = 0
grip.zsh[42] = 0
grip.zsh[43] = 0
grip.zsh[44] = 0
grip.zsh[45] = 0
grip.zsh[46] = 0
grip.zsh[47] = 0
grip.zsh[48] = 0
grip.zsh[49] = 0
grip.zsh[50] = 0
grip.zsh[51] = 0
grip.zsh[52] = 0
grip.zsh[53] = 0
grip.zsh[54] = 0
grip.zsh[55] = 0
grip.zsh[56] = 0
grip.zsh[57] = 0
grip.zsh[58] = 0
grip.zsh[59] = 0
grip.zsh[60] = 0
grip.zsh[61] = 0
grip.zsh[62] = 0
grip.zsh[63] = 0
grip.zsh[64] = 0
grip.180xsh[6] = 0
grip.180xsh[7] = 0
grip.180xsh[8] = 0
grip.180xsh[9] = 0
grip.180xsh[10] = 0
grip.180xsh[11] = 0
grip.180xsh[12] = 0
grip.180xsh[13] = 0
grip.180xsh[14] = 0
grip.180xsh[15] = 0
grip.180xsh[16] = 0
grip.180xsh[17] = 0
grip.180xsh[18] = 0
grip.180xsh[19] = 0
grip.180xsh[20] = 0
grip.180xsh[21] = 0
grip.180xsh[22] = 0
grip.180xsh[23] = 0
grip.180xsh[24] = 0
grip.180xsh[25] = 0
grip.180xsh[26] = 0
grip.180xsh[27] = 0
grip.180xsh[28] = 0
grip.180xsh[29] = 0
grip.180xsh[30] = 0
grip.180xsh[31] = 0
grip.180xsh[32] = 0
grip.180ysh[6] = 0
grip.180ysh[7] = 0
grip.180ysh[8] = 0
grip.180ysh[9] = 0
grip.180ysh[10] = 0
grip.180ysh[11] = 0
grip.180ysh[12] = 0
grip.180ysh[13] = 0
grip.180ysh[14] = 0
grip.180ysh[15] = 0
grip.180ysh[16] = 0
grip.180ysh[17] = 0
grip.180ysh[18] = 0
grip.180ysh[19] = 0
grip.180ysh[20] = 0
grip.180ysh[21] = 0
grip.180ysh[22] = 0
grip.180ysh[23] = 0
grip.180ysh[24] = 0
grip.180ysh[25] = 0
grip.180ysh[26] = 0
grip.180ysh[27] = 0
grip.180ysh[28] = 0
grip.180ysh[29] = 0
grip.180ysh[30] = 0
grip.180ysh[31] = 0
grip.180ysh[32] = 0
grip.ysh[6] = 5
grip.ysh[7] = 0
grip.ysh[8] = 0
grip.ysh[9] = 0
grip.ysh[10] = 0
grip.ysh[11] = 0
grip.ysh[12] = 0
grip.ysh[13] = 0
grip.ysh[14] = 0
grip.ysh[15] = 0
grip.ysh[16] = 0
grip.ysh[17] = 0
grip.ysh[18] = 0
grip.ysh[19] = 0
grip.ysh[20] = 0
grip.ysh[21] = 0
grip.ysh[22] = 0
grip.ysh[23] = 0
grip.ysh[24] = 0
grip.ysh[25] = 0
grip.ysh[26] = 0
grip.ysh[27] = 0
grip.ysh[28] = 0
grip.ysh[29] = 0
grip.ysh[30] = 0
grip.ysh[31] = 0
grip.ysh[32] = 0
grip.zsh[6] = 0
grip.zsh[7] = 0
grip.zsh[8] = 0
grip.zsh[9] = 0
grip.zsh[10] = 0
grip.zsh[11] = 0
grip.zsh[12] = 0
grip.zsh[13] = 0
grip.zsh[14] = 0
grip.zsh[15] = 0
grip.zsh[16] = 0
grip.zsh[17] = 0
grip.zsh[18] = 0
grip.zsh[19] = 0
grip.zsh[20] = 0
grip.zsh[21] = 0
grip.zsh[22] = 0
grip.zsh[23] = 0
grip.zsh[24] = 0
grip.zsh[25] = 0
grip.zsh[26] = 0
grip.zsh[27] = 0
grip.zsh[28] = 0
grip.zsh[29] = 0
grip.zsh[30] = 0
grip.zsh[31] = 0
grip.zsh[32] = 0
recv.etalon = 0
s.tcp.log = 2204
s.force.defect = 2227
s.etalon.ok = 2272
s.etalon.ret = 2273
s.etalon.ng = 2274
rs7.etalon.stop = 33
max.defect.cnt = 25
do.automatic = 2012
.END
.STRINGS
$log.entry[2] = "16:53:55 Put to OT detail 11"
$log.entry[1] = "16:53:54 State 3: Put detail to OT"
$log.entry[0] = "16:53:54 State 101: Calculating next step"
$action = "WaitingForStart"
$log.entry[3] = "16:53:56 Check if positioner is occupied"
$log.entry[4] = "16:53:57 State 101: Calculating next step"
$log.entry[5] = "16:53:57 State 1: Pick from positioner"
$log.entry[6] = "16:53:57 Pick detail from positioner (ID: 1)"
$log.entry[7] = "16:54:00 State 101: Calculating next step"
$log.entry[8] = "16:54:00 State 2: Measurement process"
$log.entry[9] = "16:54:00 Move to measure machine"
$log.entry[10] = "16:54:04 Waiting for measurement result"
$log.entry[11] = "16:54:04 Measurement result: OK"
$log.entry[12] = "16:54:06 State 101: Calculating next step"
$log.entry[13] = "16:54:06 State 3: Put detail to OT"
$log.entry[14] = "16:54:07 Put to OT detail 12"
$log.entry[15] = "16:54:08 Check if positioner is occupied"
$log.entry[16] = "16:54:10 State 101: Calculating next step"
$log.entry[17] = "16:54:10 State 1: Pick from positioner"
$log.entry[18] = "16:54:10 Pick detail from positioner (ID: 1)"
$log.entry[19] = "16:54:12 State 101: Calculating next step"
$log.entry[20] = "16:54:12 State 2: Measurement process"
$log.entry[21] = "16:54:12 Move to measure machine"
$log.entry[22] = "16:54:16 Waiting for measurement result"
$log.entry[23] = "16:54:17 Measurement result: OK"
$log.entry[24] = "16:54:19 State 101: Calculating next step"
$log.entry[25] = "16:54:40 State 3: Put detail to OT"
$log.entry[26] = "16:54:40 Put to OT detail 1"
$log.entry[27] = "16:54:40 Check if positioner is occupied"
$log.entry[28] = "16:54:42 State 101: Calculating next step"
$log.entry[29] = "16:55:45 State 1: Pick from positioner"
$log.entry[30] = "16:55:46 Pick detail from positioner (ID: 1)"
$log.entry[31] = "16:55:48 State 101: Calculating next step"
$log.entry[32] = "16:55:49 State 2: Measurement process"
$log.entry[33] = "16:55:49 Move to measure machine"
$log.entry[34] = "16:55:52 Waiting for measurement result"
$log.entry[35] = "16:55:53 Measurement result: OK"
$log.entry[36] = "16:55:55 State 101: Calculating next step"
$log.entry[37] = "16:55:55 State 3: Put detail to OT"
$log.entry[38] = "16:55:56 Put to OT detail 2"
$log.entry[39] = "16:55:56 Check if positioner is occupied"
$log.entry[40] = "16:55:58 State 101: Calculating next step"
$log.entry[41] = "16:55:58 State 1: Pick from positioner"
$log.entry[42] = "16:55:58 Pick detail from positioner (ID: 1)"
$log.entry[43] = "16:56:00 State 101: Calculating next step"
$log.entry[44] = "16:56:01 State 2: Measurement process"
$log.entry[45] = "16:56:01 Move to measure machine"
$log.entry[46] = "16:56:04 Waiting for measurement result"
$log.entry[47] = "16:56:05 Measurement result: OK"
$log.entry[48] = "16:56:07 State 101: Calculating next step"
$log.entry[49] = "16:56:07 State 3: Put detail to OT"
$log.entry[50] = "16:56:08 Put to OT detail 3"
$log.entry[51] = "16:56:08 Check if positioner is occupied"
$log.entry[52] = "16:56:10 State 101: Calculating next step"
$log.entry[53] = "16:56:10 State 1: Pick from positioner"
$log.entry[54] = "16:56:10 Pick detail from positioner (ID: 1)"
$log.entry[55] = "16:56:12 State 101: Calculating next step"
$log.entry[56] = "16:56:13 State 2: Measurement process"
$log.entry[57] = "16:56:13 Move to measure machine"
$log.entry[58] = "16:56:16 Waiting for measurement result"
$log.entry[59] = "16:56:17 Measurement result: DEFECT"
$log.entry[60] = "16:56:19 State 101: Calculating next step"
$log.entry[61] = "16:56:19 State 4: Put detail to defect tare"
$log.entry[62] = "16:56:20 Putting to defect tare with No: 8"
$log.entry[63] = "16:56:23 State 101: Calculating next step"
$log.entry[64] = "16:56:23 State 1: Pick from positioner"
$log.entry[65] = "16:56:23 Pick detail from positioner (ID: 1)"
$log.entry[66] = "16:56:26 State 101: Calculating next step"
$log.entry[67] = "16:56:26 State 2: Measurement process"
$log.entry[68] = "16:56:26 Move to measure machine"
$log.entry[69] = "16:56:29 Waiting for measurement result"
$log.entry[70] = "16:56:30 Measurement result: OK"
$log.entry[71] = "16:56:32 State 101: Calculating next step"
$log.entry[72] = "16:56:32 State 3: Put detail to OT"
$log.entry[73] = "16:56:33 Put to OT detail 4"
$log.entry[74] = "16:56:33 Check if positioner is occupied"
$log.entry[75] = "16:56:35 State 101: Calculating next step"
$log.entry[76] = "16:56:35 State 1: Pick from positioner"
$log.entry[77] = "16:56:36 Pick detail from positioner (ID: 1)"
$log.entry[78] = "16:56:38 State 101: Calculating next step"
$log.entry[79] = "16:56:38 State 2: Measurement process"
$log.entry[80] = "16:56:38 Move to measure machine"
$log.entry[81] = "16:56:42 Waiting for measurement result"
$log.entry[82] = "16:56:42 Measurement result: OK"
$log.entry[83] = "16:56:44 State 101: Calculating next step"
$log.entry[84] = "16:56:44 State 3: Put detail to OT"
$log.entry[85] = "16:56:45 Put to OT detail 5"
$log.entry[86] = "16:56:46 Check if positioner is occupied"
$log.entry[87] = "16:56:47 State 101: Calculating next step"
$log.entry[88] = "16:56:47 State 1: Pick from positioner"
$log.entry[89] = "16:56:48 Pick detail from positioner (ID: 1)"
$log.entry[90] = "16:56:50 State 101: Calculating next step"
$log.entry[91] = "16:56:50 State 2: Measurement process"
$log.entry[92] = "16:56:50 Move to measure machine"
$log.entry[93] = "16:56:54 Waiting for measurement result"
$log.entry[94] = "16:56:54 Measurement result: OK"
$log.entry[95] = "16:56:56 State 101: Calculating next step"
$log.entry[96] = "16:56:56 State 3: Put detail to OT"
$log.entry[97] = "16:56:57 Put to OT detail 6"
$log.entry[98] = "16:56:58 Check if positioner is occupied"
$log.entry[99] = "16:56:59 State 101: Calculating next step"
$log.entry[100] = "16:56:59 State 1: Pick from positioner"
$log.entry[101] = "16:56:59 Pick detail from positioner (ID: 1)"
$log.entry[102] = "16:57:02 State 101: Calculating next step"
$log.entry[103] = "16:57:02 State 2: Measurement process"
$log.entry[104] = "16:57:02 Move to measure machine"
$log.entry[105] = "16:57:06 Waiting for measurement result"
$log.entry[106] = "16:57:06 Measurement result: OK"
$log.entry[107] = "16:57:08 State 101: Calculating next step"
$log.entry[108] = "16:57:08 State 3: Put detail to OT"
$log.entry[109] = "16:57:09 Put to OT detail 7"
$log.entry[110] = "16:57:10 Check if positioner is occupied"
$log.entry[111] = "16:57:11 State 101: Calculating next step"
$log.entry[112] = "16:57:11 State 1: Pick from positioner"
$log.entry[113] = "16:57:12 Pick detail from positioner (ID: 1)"
$log.entry[114] = "16:57:14 State 101: Calculating next step"
$log.entry[115] = "16:57:14 State 2: Measurement process"
$log.entry[116] = "16:57:14 Move to measure machine"
$log.entry[117] = "16:57:18 Waiting for measurement result"
$log.entry[118] = "16:57:18 Measurement result: OK"
$log.entry[119] = "16:57:20 State 101: Calculating next step"
$log.entry[120] = "16:57:20 State 3: Put detail to OT"
$log.entry[121] = "16:57:21 Put to OT detail 8"
$log.entry[122] = "16:57:22 Check if positioner is occupied"
$log.entry[123] = "16:57:23 State 101: Calculating next step"
$log.entry[124] = "16:57:45 State 103: Ending sequence started"
$log.entry[125] = "16:57:45 State 255: Program complete"
$log.entry[126] = "16:57:46 State 0: Program reset. Initialization of parameters"
$log.entry[127] = "16:57:46 State 100: Waiting for start"
$pg.name = "312.229.002"
$tcp.ip = "192.168.7.100"
.END
