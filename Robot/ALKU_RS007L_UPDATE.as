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
N_INT201    "s.tcp.send.ena|Display TCP send prints"
N_INT202    "s.tcp.recv.ena|Display TCP receive prints"
N_INT203    "s.tcp.ena|Display TCP connect prints"
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
68,14,"action","  CURRENT","  ACTION",10,15,0
69,2,"","   RESET","   ACTION","",10,4,15,2262,0
76,4,1,"OFF     ON","","","  DEBUG",10,4,4,0,2300,0
77,2,"","   MAIN","<---------","",10,4,11,2001,0
79,7,"  RS013N"," COUNT PUT",10,15,4,0,0,25,8,1
80,7,"  RS007L","COUNT PICK",10,15,4,0,0,1025,8,1
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
.PROGRAM a.teach.etalon ()
  ;
  TOOL tool.pick[hmi.tool.no]
  ; Pick etalon
  POINT .temp = #et.pos.point[hmi.etalon.id]
  JMOVE .temp + TRANS (0, 0, 50)
  BREAK
  LMOVE #et.pos.point[hmi.etalon.id]
  POINT .temp = #et.pos.point[hmi.etalon.id]
  BREAK
  TWAIT 0.5
  LMOVE .temp + TRANS (0, 5, 10)
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  TWAIT 0.5
  ; Measure etalon
  IF FALSE THEN ; For round details
    TOOL tool.pick[hmi.tool.no]
    JMOVE #safe.machine
    JMOVE #before.machine[2]
    POINT .temp = #et.mac.point[hmi.etalon.id]
    JMOVE .temp + TRANS (0, 0, 10)
    BREAK
    LMOVE #et.mac.point[hmi.etalon.id]
    POINT .temp = #et.mac.point[hmi.etalon.id]
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
    POINT .temp = #et.mac.point[hmi.etalon.id]
    JMOVE .temp + TRANS (0, 10, 0)
    BREAK
    LMOVE #et.mac.point[hmi.etalon.id]
    POINT .temp = #et.mac.point[hmi.etalon.id]
    BREAK
    TWAIT 0.5
    LMOVE .temp + TRANS (0, 10, 0)
    BREAK
    TWAIT 0.5
    LMOVE #before.machine[1]
  END
.END
.PROGRAM etalon.measure (.id)
  IF FALSE THEN
    .id = hmi.etalon.id
  END
  ; Part 1. Pick etalon
  .$temp = "Pick detail from etalon (ID:" + $ENCODE (.id) + ")"
  CALL log (.$temp)
  ;
  TOOL tool.pick[current.gripper]
  ;
  SPEED 100 ALWAYS
  ACCURACY 10 ALWAYS
  ;
  POINT .temp = #et.pos.point[.id]
  ;
  LMOVE #etalon.safe
  LMOVE .temp + TRANS (0, 0, 30)
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
  LMOVE #et.pos.point[.id]
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  SIGNAL s.grip.full
  ;
  LMOVE .temp + TRANS (0, 5, 10)
  ACCURACY 100
  LMOVE .temp + TRANS (0, 0, 200)
  LMOVE #etalon.safe
  ACCURACY 100
  LMOVE #homyak
  BREAK
  ; Part 2. Put etalon
  ;
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
  CALL log ("Move to measure machine")
  ;$action = "TakingToMM"
  ;
  POINT .machine.pos = #et.mac.point[.id]
  ; Go to machine
  JMOVE #safe.machine
  JMOVE #before.machine[.p.idx]
  ACCURACY 10
  LMOVE .machine.pos + TRANS (0, .shift.y, .shift.z)
  ACCURACY 5
  LMOVE .machine.pos + TRANS (0, .shift.y * 0.2, .shift.z * 0.2)
  SPEED 250 MM/S
  ACCURACY 0.5
  LMOVE #et.mac.point[.id]
  BREAK
  CALL log ("Send command to enable vacuum")
  $action = "WaitingMMVacuum"
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
  ;
  IF SIG (s.measure.ok) THEN
    CALL log ("Measurement result: OK")
  ELSE
    CALL log ("Measurement result: DEFECT")
  END
  SIGNAL -s.measure.ok, -s.measure.ng
  ;
  ; Pick from machine
  ACCURACY 10
  LMOVE .machine.pos + TRANS (0, .shift.y, .shift.z)
  ACCURACY 5
  LMOVE .machine.pos + TRANS (0, .shift.y * 0.2, .shift.z * 0.2)
  SPEED 250 MM/S
  ACCURACY 0.5
  LMOVE #et.mac.point[.id]
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
  ;
  ; Part 3 Return Etalon
  JMOVE #safe.machine
  JMOVE #homyak
  LMOVE #etalon.safe
  LMOVE .temp + TRANS (0, 0, 30)
  ;
  SPEED 250 MM/S
  ACCURACY 0.02
  LMOVE #et.pos.point[.id]
  BREAK
  PULSE grip.unclamp
  TWAIT 0.5
  SIGNAL -s.grip.full
  ;
  LMOVE .temp + TRANS (0, 5, 10)
  ACCURACY 100
  LMOVE .temp + TRANS (0, 0, 200)
  LMOVE #etalon.safe
  ACCURACY 100
  LMOVE #homyak
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
.PROGRAM get.ot.point (.obj.id)
  ot.x = ms[.obj.id]
  ot.y = ns[.obj.id]
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
  LAPPRO ot.put[ot.x, ot.y], 50
  LMOVE ot.put[ot.x, ot.y]
  LAPPRO ot.put[ot.x, ot.y], 50
.END
.PROGRAM ot.put ()
  ;
  IF SIG(rs7.tare.chg) THEN
    CALL log ("Waiting for new OT")
  END
  ;
  CALL log ("Put to OT detail" + $ENCODE(count.put + 1))
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
  POINT .put = ot.put[ot.x, ot.y]
  ;
  SIGNAL rs7.locked.zone
  BREAK
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
  CALL log ("Send command to enable vacuum")
  $action = "WaitingMMVacuum"
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
  ;BREAK
  ;JMOVE #safe.machine
  ;JMOVE #homyak
.END
.PROGRAM id1 () ; 312.229.002
  ; Object ID
  object.id = 1
  etalon.id = 1 ; Can be object.id <> etalon.id
  ; Working gripper
  pg.gripper = 2
  ; Max objects in output tare
  max.tare.count = 8;147
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
.PROGRAM defect.put ()
  ;
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  TOOL tool.pick[current.gripper]
  ;
  POINT .temp = #defect.point[count.defect + 1]
  ;
  JMOVE #defect.safe
  ;
  IF count.defect > 50 THEN
    CALL log ("Defect tare is full. Waiting for tare clean")
    WAIT count.defect == 1
  END
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
  JMOVE #defect.safe
  LMOVE #homyak
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
.PROGRAM state0 () ; Initialization of parameters
  ;
  CALL log ("State 0: Program reset. Initialization of parameters")
  SIGNAL -s.grip.full, -s.measure.ok, -s.measure.ng, -rs7.tare.chg, -s.cmd.measured
  SIGNAL -s.cmd.start, -s.cmd.pick, -s.cmd.finish, -rs7.finish.ack, -rs7.locked.zone, -s.cmd.stop
  count.pick = 0
  BITS rs7.det.picked[0], 8 = count.pick
  count.put = 0
  ;
  state = 100
  ;
.END
.PROGRAM state1 ()
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
.PROGRAM state2 ()
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
.PROGRAM state3 ()
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
.PROGRAM state4 ()
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
.PROGRAM state5 ()
  CALL log ("State 5: Check etalon")
  CALL etalon.measure(etalon.id)
  state = 101
.END
.PROGRAM state6 ()
	; *******************************************************************
	;
	; Program:      state6
	; Comment:      
	; Author:       User
	;
	; Date:         11/23/2025
	;
	; *******************************************************************
	;
	
.END
.PROGRAM state7 () ; Deprecated
  state = 5
.END
.PROGRAM state8 () ; Check etalon by command
  CALL log ("State 8: Check etalon by start")
  CALL etalon.measure (etalon.id)
  state = 105
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
.PROGRAM state102 ()
  ; Priority 1
  IF SIG (s.cmd.pause) THEN
    state = 105
    RETURN
  END
  IF SIG(s.cmd.chk.etal) THEN
    state = 8
    RETURN
  END
  ; Priority 2
  IF SIG (s.cmd.stop) THEN
    state = 6
    RETURN
  END
  ; Priority 3
  IF NOT SIG (s.grip.full) THEN
    $action = "WaitPosFull"
    IF SIG (s.cmd.pick) AND NOT SIG (rs13.work[1]) AND BITS (rs13.det.put[0], 8) > count.pick THEN
      state = 1
      RETURN
    END
  END
  ; Priority 4
  IF SIG (s.grip.full) AND NOT SIG (s.cmd.measured) THEN
    state = 2
    RETURN
  END
  ; Priority 5
  IF SIG (s.grip.full) AND SIG (s.measure.ok) AND NOT SIG (rs7.tare.chg) THEN
    state = 3
    RETURN
  END
  ; Priority 6
  IF SIG (s.grip.full) AND SIG (s.measure.ng) THEN
    state = 4
    RETURN
  END
  ; Priority 7
  IF SIG (rs13.finish) THEN
    state = 103
    RETURN
  END
  ; Priority 8
  IF NOT SIG (s.grip.full); AND NOT SIG (s.cmd.pick) THEN
    JMOVE #homyak
    BREAK
    SIGNAL -rs7.locked.zone
    RETURN
  END
.END
.PROGRAM state103 ()
  CALL log ("State 103: Ending sequence started")
  state = 104
  ;
.END
.PROGRAM state104 ()
  SIGNAL rs7.finish.ack
  TWAIT 5
  CALL log ("Program complete")
  state = 0
  RETURN
  ;
.END
.PROGRAM state105 ()
  CALL log("State 105: Program paused")
  $action = "Paused"
  SWAIT s.cmd.resume
  $action = " " 
  CALL log("Program resumed")
  SIGNAL -s.cmd.pause
  state = 101
  
.END
.PROGRAM state106 ()
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
.PROGRAM state255 ()
  CALL log ("State 255: Program complete")
  state = 0
  ;
.END
.PROGRAM a.home ()
  ;
  SPEED 250 MM/S ALWAYS
  JMOVE #homyak
  ;
.END
.PROGRAM a.align ()
	;
	SPEED 250 MM/S ALWAYS
	ALIGN
	;
.END
.PROGRAM safe.home ()
	;
	IF SIG (do.home) THEN
		CALL log ("Robot already in home position")
	ELSE
		CALL log ("Performing safe motion to home position")
		JMOVE #homyak
		BREAK
		CALL log ("Robot in home position")
	END
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
.PROGRAM pg.select ()
  SCASE $pg.name OF
    SVALUE "312.229.002":
      CASE detail.spec OF
        VALUE 1:
          CALL id1; idX_1
        ANY :
          $pg.name = "NULL"
      END
      ;
    SVALUE "0401.17.02.023":
      CASE detail.spec OF
        VALUE 1:
          CALL id2; idX_1
        VALUE 2:
          CALL id2
        ANY :
          $pg.name = "NULL"
      END
      ;
    SVALUE "312.229.001":
      CASE detail.spec OF
        VALUE 1:
          CALL id3; idX_1
        ANY :
          $pg.name = "NULL"
      END
      ;
    SVALUE "440.00.026":
      CASE detail.spec OF
        VALUE 1:
          CALL id4; idX_1
        ANY :
          $pg.name = "NULL"
      END
      ;
    SVALUE "440.00.111":
      CASE detail.spec OF
        VALUE 1:
          CALL id5; idX_1
        VALUE 2:
          CALL id5
        ANY :
          $pg.name = "NULL"
      END
      ;
    SVALUE "0401.28.02.063":
      CASE detail.spec OF
        VALUE 1:
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
      count.put = 0
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
.PROGRAM set.vars.pc ()
  ;
  ; Constants
  ;
  ; Initialize once
  ;
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
    count.defect = 1
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
  ;
  ;
  ; Internal logic 2201 - 2960
  ;
  ; TCP/IP display flags
  s.tcp.send.ena = 2201
  s.tcp.recv.ena = 2202
  s.tcp.ena = 2203
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
  ;
  s.opt.spacer = 2223
  s.opt.flip = 2224
  ;s.stock.ot.ok = 2223
  ;s.stock.ot.ng = 2224
  ;s.stock.opt.ok = 2225
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
  ;s.hmi.pneum.op = 2258
  ;s.hmi.pneum.cl = 2259
  ;s.hmi.get.cv = 2260
  s.hmi.res.state = 2261
  s.hmi.res.act = 2262
  ;
  s.debug.mode = 2300
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
    .$data[2] = .$data[2] + "\n"
    ;
    CALL tcp.send.pc (.$data[], 2)
    TWAIT tcp.sender.dly
  END
  ;
.END
.PROGRAM tcp.callback.pc(.$data[],.data.length)@25/11/18 16:27 #1195
  .$temp = "Received " + $ENCODE (.data.length) + " strings:"
  PRINT tcp.recv.ena: .$temp
  FOR .i = 1 TO .data.length
    PRINT tcp.recv.ena: .$data[.i]
  END
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
    detail.spec = VAL($DECODE (.$data[1], ";",0))
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
    ;etalon.id = VAL($DECODE (.$data[1], ";",0))
    ;
    SIGNAL s.cmd.chk.etal
  END
  ;
  ; CLEANDEFECT COMMAND
  ; String format:
  ; CLEANDEFECT;
  ;
  IF INSTR (.$data[1] , "CLEANDEFECT") THEN
    count.defect = 1
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
  ; RESET COMMAND
  ; String format:
  ; RESET;
  ;
  IF INSTR (.$data[1] , "RESET") THEN
    state = 0
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
.PROGRAM Comment___ () ; Comments for IDE. Do not use.
	; @@@ PROJECT @@@
	; @@@ PROJECTNAME @@@
	; ALKU_RS007L_UPDATE
	; @@@ HISTORY @@@
	; @@@ INSPECTION @@@
	; s.cmd.pick
	; s.grip.full
	; count.pick
	; @@@ CONNECTION @@@
	; KROSET R02
	; 127.0.0.1
	; 9205
	; @@@ PROGRAM @@@
	; Group:Etalon:1
	; 1:a.teach.etalon:F
	; .temp 
	; 1:etalon.measure:F
	; .id 
	; .temp 
	; .shift.y 
	; .shift.z 
	; .p.idx 
	; .machine.pos 
	; Group:OT:2
	; 2:a.teach.ot:F
	; .ot.down.left 
	; .ot.down.right 
	; .ot.up.right 
	; .ot.orig 
	; 2:calc.grid:F
	; .max 
	; .obj.len 
	; .obj.len.w.spc 
	; .i 
	; .j 
	; 2:calc.grid.rnd:F
	; .max 
	; .obj.shift 
	; .i 
	; .j 
	; 2:get.ot.point:F
	; .i 
	; .x 
	; .y 
	; .obj.id 
	; 2:a.test.ot:F
	; 2:ot.put:F
	; .tare.chg 
	; .x 
	; .y 
	; .z 
	; .put 
	; .locked.zone 
	; 2:calc.ot:F
	; .center.col 
	; .center.row 
	; .cell 
	; .i 
	; .j 
	; .dist 
	; .dists 
	; .array.size 
	; .result 
	; .cornerA 
	; .cornerB 
	; .tmp.dist 
	; .tmp.m 
	; .tmp.n 
	; .n 
	; .m 
	; .filled 
	; .obj.id 
	; Group:MeasureMachine:3
	; 3:a.teach.machine:F
	; .temp 
	; 3:measure:F
	; .pos 
	; .shift.y 
	; .shift.z 
	; .p.idx 
	; .machine.pos 
	; Group:Objects:4
	; 4:id1:F
	; 4:id2:F
	; 4:id3:F
	; 4:id4:F
	; 4:id5:F
	; 4:id6:F
	; Group:Positioner:5
	; 5:pos.pick:F
	; .temp 
	; .locked.zone 
	; .det.picked 
	; 5:a.teach.pos:F
	; .temp 
	; Group:Defect:6
	; 6:defect.put:F
	; .temp 
	; 6:a.teach.defect:F
	; .x 
	; .y 
	; .o 
	; .k 
	; .i 
	; .j 
	; .defect.pos 
	; Group:States:7
	; 7:state0:F
	; .tare.chg 
	; .finish.ack 
	; .locked.zone 
	; .det.picked 
	; 7:state1:F
	; 7:state2:F
	; 7:state3:F
	; 7:state4:F
	; 7:state5:F
	; 7:state6:F
	; 7:state7:F
	; 7:state8:F
	; 7:state100:F
	; 7:state101:F
	; 7:state102:F
	; .work 
	; .det.put 
	; .finish 
	; .tare.chg 
	; .locked.zone 
	; 7:state103:F
	; 7:state104:F
	; .finish.ack 
	; 7:state105:F
	; 7:state106:F
	; 7:state255:F
	; Group:Utilities:8
	; 8:a.home:F
	; 8:a.align:F
	; 8:safe.home:F
	; 8:log:F
	; .i 
	; 8:pg.select:F
	; 0:a.main:F
	; Group:Watchdog:9
	; 9:check.teach.pc:B
	; 9:check.zone.pc:B
	; 9:check.disp.pc:B
	; 9:check.tasks.pc:B
	; 9:watchdog.pc:B
	; .tare.ack 
	; .tare.chg 
	; Group:Initialization:10
	; 10:set.vars.pc:B
	; .i 
	; .n 
	; 10:set.io.pc:B
	; .work 
	; .tare.ack 
	; .detail.put 
	; .finish 
	; .tare.chg 
	; .locked.zone 
	; .finish.ack 
	; .put.ack 
	; .det.put 
	; .det.picked 
	; Group:TCPIP:11
	; 11:get.state.pc:B
	; 11:tcp.sender.pc:B
	; 11:tcp.callback.pc:B
	; .data.length 
	; .i 
	; .speed 
	; 11:tcp.client.pc:B
	; .tcp.retry.count 
	; .tcp.connect.tmo 
	; .tcp.receive.tmo 
	; .number 
	; .ports 
	; .sockets 
	; .errors 
	; .suberrors 
	; .i 
	; .status 
	; .connected 
	; .tcp.error.cnt 
	; .request.size 
	; .ip 
	; 11:tcp.send.pc:B
	; .data.length 
	; .tcp.send.tmo 
	; .status 
	; .i 
	; 0:autostart.pc:B
	; 0:errstart.pc:B
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
	; #safe.defect Safe point before defect tare
	; #ot.up.right OT up.right point
	; #ot.orig OT up right point
	; #ot.down.right OT down right point
	; #ot.down.left OT down left point
	; #machine.pos[] Point in measure machine for object i
	; #etalon.safe Safe point to move to positioner
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
	; object.id Object data: object id
	; ot.x OT put coordinate X
	; ot.y OT put coordinate Y
	; round.no ID for round detail
	; spc.tare.count Object data: Max details in tare with spacer
	; detail.spec Detail specification
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
ot.frame -145.551819 540.507935 -3.450490 -85.560913 2.096370 85.437073
ot.put[0,0] -145.551819 540.507935 -3.450485 -85.560913 2.096370 -94.562935
ot.put[0,1] -145.487640 569.488586 -2.393016 -85.560913 2.096370 -94.562935
ot.put[0,2] -145.423447 598.469238 -1.335546 -85.560913 2.096370 -94.562935
ot.put[0,3] -145.359268 627.449890 -0.278077 -85.560913 2.096370 -94.562935
ot.put[0,4] -145.295090 656.430542 0.779393 -85.560913 2.096370 -94.562935
ot.put[0,5] -145.230896 685.411133 1.836862 -85.560913 2.096370 -94.562935
ot.put[0,6] -145.166718 714.391846 2.894331 -85.560913 2.096370 -94.562935
ot.put[0,7] -145.939117 365.624725 -9.831766 -85.560913 2.096370 85.437073
ot.put[1,0] -129.551926 540.474182 -3.497047 -85.560913 2.096370 -94.562935
ot.put[1,1] -129.487732 569.454834 -2.439578 -85.560913 2.096370 -94.562935
ot.put[1,2] -129.423553 598.435486 -1.382108 -85.560913 2.096370 -94.562935
ot.put[1,3] -129.359375 627.416138 -0.324639 -85.560913 2.096370 -94.562935
ot.put[1,4] -129.295197 656.396790 0.732831 -85.560913 2.096370 -94.562935
ot.put[1,5] -129.231003 685.377441 1.790300 -85.560913 2.096370 -94.562935
ot.put[1,6] -129.166824 714.358093 2.847770 -85.560913 2.096370 -94.562935
ot.put[1,7] -161.939011 365.658447 -9.785205 -85.560913 2.096370 85.437073
ot.put[2,0] -113.552025 540.440491 -3.543609 -85.560913 2.096370 -94.562935
ot.put[2,1] -113.487839 569.421082 -2.486140 -85.560913 2.096370 -94.562935
ot.put[2,2] -113.423660 598.401733 -1.428670 -85.560913 2.096370 -94.562935
ot.put[2,3] -113.359474 627.382385 -0.371201 -85.560913 2.096370 -94.562935
ot.put[2,4] -113.295288 656.363037 0.686269 -85.560913 2.096370 -94.562935
ot.put[2,5] -113.231110 685.343689 1.743738 -85.560913 2.096370 -94.562935
ot.put[2,6] -113.166931 714.324341 2.801208 -85.560913 2.096370 -94.562935
ot.put[2,7] -177.938904 365.692200 -9.738644 -85.560913 2.096370 85.437073
ot.put[3,0] -97.552124 540.406738 -3.590171 -85.560913 2.096370 -94.562935
ot.put[3,1] -97.487946 569.387390 -2.532701 -85.560913 2.096370 -94.562935
ot.put[3,2] -97.423767 598.368042 -1.475232 -85.560913 2.096370 -94.562935
ot.put[3,3] -97.359573 627.348694 -0.417763 -85.560913 2.096370 -94.562935
ot.put[3,4] -97.295395 656.329346 0.639707 -85.560913 2.096370 -94.562935
ot.put[3,5] -97.231216 685.309937 1.697176 -85.560913 2.096370 -94.562935
ot.put[3,6] -97.167030 714.290588 2.754646 -85.560913 2.096370 -94.562935
ot.put[3,7] -193.938812 365.725922 -9.692081 -85.560913 2.096370 85.437073
ot.put[4,0] -81.552231 540.372986 -3.636733 -85.560913 2.096370 -94.562935
ot.put[4,1] -81.488045 569.353638 -2.579263 -85.560913 2.096370 -94.562935
ot.put[4,2] -81.423866 598.334290 -1.521794 -85.560913 2.096370 -94.562935
ot.put[4,3] -81.359680 627.314941 -0.464324 -85.560913 2.096370 -94.562935
ot.put[4,4] -81.295502 656.295593 0.593145 -85.560913 2.096370 -94.562935
ot.put[4,5] -81.231316 685.276245 1.650615 -85.560913 2.096370 -94.562935
ot.put[4,6] -81.167130 714.256836 2.708084 -85.560913 2.096370 -94.562935
ot.put[4,7] -209.938705 365.759644 -9.645519 -85.560913 2.096370 85.437073
ot.put[5,0] -65.552338 540.339233 -3.683295 -85.560913 2.096370 -94.562935
ot.put[5,1] -65.488152 569.319885 -2.625825 -85.560913 2.096370 -94.562935
ot.put[5,2] -65.423973 598.300537 -1.568356 -85.560913 2.096370 -94.562935
ot.put[5,3] -65.359787 627.281189 -0.510886 -85.560913 2.096370 -94.562935
ot.put[5,4] -65.295609 656.261841 0.546583 -85.560913 2.096370 -94.562935
ot.put[5,5] -65.231422 685.242493 1.604053 -85.560913 2.096370 -94.562935
ot.put[5,6] -65.167236 714.223145 2.661522 -85.560913 2.096370 -94.562935
ot.put[5,7] -225.938599 365.793396 -9.598957 -85.560913 2.096370 85.437073
ot.put[6,0] -49.552437 540.305542 -3.729856 -85.560913 2.096370 -94.562935
ot.put[6,1] -49.488251 569.286194 -2.672387 -85.560913 2.096370 -94.562935
ot.put[6,2] -49.424072 598.266785 -1.614917 -85.560913 2.096370 -94.562935
ot.put[6,3] -49.359886 627.247437 -0.557448 -85.560913 2.096370 -94.562935
ot.put[6,4] -49.295708 656.228088 0.500021 -85.560913 2.096370 -94.562935
ot.put[6,5] -49.231522 685.208740 1.557491 -85.560913 2.096370 -94.562935
ot.put[6,6] -49.167336 714.189392 2.614960 -85.560913 2.096370 -94.562935
ot.put[6,7] -241.938507 365.827148 -9.552396 -85.560913 2.096370 85.437073
ot.put[7,0] -33.552536 540.271790 -3.776418 -85.560913 2.096370 -94.562935
ot.put[7,1] -33.488350 569.252441 -2.718949 -85.560913 2.096370 -94.562935
ot.put[7,2] -33.424171 598.233093 -1.661479 -85.560913 2.096370 -94.562935
ot.put[7,3] -33.359985 627.213745 -0.604010 -85.560913 2.096370 -94.562935
ot.put[7,4] -33.295807 656.194336 0.453460 -85.560913 2.096370 -94.562935
ot.put[7,5] -33.231621 685.175049 1.510929 -85.560913 2.096370 -94.562935
ot.put[7,6] -33.167435 714.155640 2.568398 -85.560913 2.096370 -94.562935
ot.put[7,7] -257.938416 365.860870 -9.505835 -85.560913 2.096370 85.437073
ot.put[8,0] -17.552643 540.238037 -3.822980 -85.560913 2.096370 -94.562935
ot.put[8,1] -17.488464 569.218689 -2.765511 -85.560913 2.096370 -94.562935
ot.put[8,2] -17.424271 598.199341 -1.708041 -85.560913 2.096370 -94.562935
ot.put[8,3] -17.360092 627.179993 -0.650572 -85.560913 2.096370 -94.562935
ot.put[8,4] -17.295914 656.160645 0.406898 -85.560913 2.096370 -94.562935
ot.put[8,5] -17.231720 685.141296 1.464367 -85.560913 2.096370 -94.562935
ot.put[8,6] -17.167542 714.121948 2.521837 -85.560913 2.096370 -94.562935
ot.put[8,7] -273.938293 365.894592 -9.459272 -85.560913 2.096370 85.437073
ot.put[9,0] -1.552750 540.204285 -3.869542 -85.560913 2.096370 -94.562935
ot.put[9,1] -1.488571 569.184937 -2.812073 -85.560913 2.096370 -94.562935
ot.put[9,2] -1.424377 598.165588 -1.754603 -85.560913 2.096370 -94.562935
ot.put[9,3] -1.360199 627.146240 -0.697134 -85.560913 2.096370 -94.562935
ot.put[9,4] -1.296021 656.126892 0.360336 -85.560913 2.096370 -94.562935
ot.put[9,5] -1.231827 685.107544 1.417805 -85.560913 2.096370 -94.562935
ot.put[9,6] -1.167648 714.088196 2.475275 -85.560913 2.096370 -94.562935
ot.put[9,7] -289.938171 365.928345 -9.412710 -85.560913 2.096370 85.437073
ot.put[10,0] 14.447144 540.170593 -3.916104 -85.560913 2.096370 -94.562935
ot.put[10,1] 14.511322 569.151245 -2.858634 -85.560913 2.096370 -94.562935
ot.put[10,2] 14.575516 598.131836 -1.801165 -85.560913 2.096370 -94.562935
ot.put[10,3] 14.639694 627.112549 -0.743695 -85.560913 2.096370 -94.562935
ot.put[10,4] 14.703873 656.093140 0.313774 -85.560913 2.096370 -94.562935
ot.put[10,5] 14.768066 685.073792 1.371243 -85.560913 2.096370 -94.562935
ot.put[10,6] 14.832245 714.054443 2.428713 -85.560913 2.096370 -94.562935
ot.put[10,7] -305.938080 365.962067 -9.366148 -85.560913 2.096370 85.437073
ot.put[11,0] 30.447052 540.136841 -3.962666 -85.560913 2.096370 -94.562935
ot.put[11,1] 30.511230 569.117493 -2.905196 -85.560913 2.096370 -94.562935
ot.put[11,2] 30.575424 598.098145 -1.847727 -85.560913 2.096370 -94.562935
ot.put[11,3] 30.639603 627.078796 -0.790257 -85.560913 2.096370 -94.562935
ot.put[11,4] 30.703781 656.059448 0.267212 -85.560913 2.096370 -94.562935
ot.put[11,5] 30.767975 685.040039 1.324682 -85.560913 2.096370 -94.562935
ot.put[11,6] 30.832153 714.020752 2.382151 -85.560913 2.096370 -94.562935
ot.put[11,7] -321.937988 365.995789 -9.319587 -85.560913 2.096370 85.437073
ot.put[12,0] 46.446945 540.103088 -4.009228 -85.560913 2.096370 -94.562935
ot.put[12,1] 46.511124 569.083740 -2.951758 -85.560913 2.096370 -94.562935
ot.put[12,2] 46.575317 598.064392 -1.894289 -85.560913 2.096370 -94.562935
ot.put[12,3] 46.639496 627.045044 -0.836819 -85.560913 2.096370 -94.562935
ot.put[12,4] 46.703674 656.025696 0.220650 -85.560913 2.096370 -94.562935
ot.put[12,5] 46.767868 685.006348 1.278120 -85.560913 2.096370 -94.562935
ot.put[12,6] 46.832047 713.987000 2.335589 -85.560913 2.096370 -94.562935
ot.put[12,7] -337.937866 366.029541 -9.273026 -85.560913 2.096370 85.437073
ot.put[13,0] 62.446838 540.069397 -4.055789 -85.560913 2.096370 -94.562935
ot.put[13,1] 62.511017 569.049988 -2.998320 -85.560913 2.096370 -94.562935
ot.put[13,2] 62.575211 598.030640 -1.940850 -85.560913 2.096370 -94.562935
ot.put[13,3] 62.639389 627.011292 -0.883381 -85.560913 2.096370 -94.562935
ot.put[13,4] 62.703568 655.991943 0.174088 -85.560913 2.096370 -94.562935
ot.put[13,5] 62.767761 684.972595 1.231558 -85.560913 2.096370 -94.562935
ot.put[13,6] 62.831940 713.953247 2.289027 -85.560913 2.096370 -94.562935
ot.put[13,7] -353.937775 366.063293 -9.226463 -85.560913 2.096370 85.437073
ot.put[14,0] 78.446747 540.035645 -4.102351 -85.560913 2.096370 -94.562935
ot.put[14,1] 78.510925 569.016296 -3.044882 -85.560913 2.096370 -94.562935
ot.put[14,2] 78.575119 597.996948 -1.987412 -85.560913 2.096370 -94.562935
ot.put[14,3] 78.639297 626.977539 -0.929943 -85.560913 2.096370 -94.562935
ot.put[14,4] 78.703476 655.958191 0.127527 -85.560913 2.096370 -94.562935
ot.put[14,5] 78.767670 684.938843 1.184996 -85.560913 2.096370 -94.562935
ot.put[14,6] 78.831848 713.919495 2.242465 -85.560913 2.096370 -94.562935
ot.put[14,7] -369.937683 366.097015 -9.179901 -85.560913 2.096370 85.437073
ot.put[15,0] 94.446640 540.001892 -4.148913 -85.560913 2.096370 -94.562935
ot.put[15,1] 94.510818 568.982544 -3.091444 -85.560913 2.096370 -94.562935
ot.put[15,2] 94.575012 597.963196 -2.033974 -85.560913 2.096370 -94.562935
ot.put[15,3] 94.639191 626.943848 -0.976505 -85.560913 2.096370 -94.562935
ot.put[15,4] 94.703369 655.924500 0.080965 -85.560913 2.096370 -94.562935
ot.put[15,5] 94.767563 684.905151 1.138434 -85.560913 2.096370 -94.562935
ot.put[15,6] 94.831741 713.885742 2.195903 -85.560913 2.096370 -94.562935
ot.put[15,7] -385.937561 366.130737 -9.133339 -85.560913 2.096370 85.437073
ot.put[16,0] 110.446533 539.968140 -4.195475 -85.560913 2.096370 -94.562935
ot.put[16,1] 110.510712 568.948792 -3.138005 -85.560913 2.096370 -94.562935
ot.put[16,2] 110.574890 597.929443 -2.080536 -85.560913 2.096370 -94.562935
ot.put[16,3] 110.639069 626.910095 -1.023067 -85.560913 2.096370 -94.562935
ot.put[16,4] 110.703278 655.890747 0.034403 -85.560913 2.096370 -94.562935
ot.put[16,5] 110.767456 684.871399 1.091872 -85.560913 2.096370 -94.562935
ot.put[16,6] 110.831635 713.852051 2.149342 -85.560913 2.096370 -94.562935
ot.put[16,7] -401.937469 366.164490 -9.086778 -85.560913 2.096370 85.437073
ot.put[17,0] 126.446442 539.934448 -4.242037 -85.560913 2.096370 -94.562935
ot.put[17,1] 126.510620 568.915100 -3.184567 -85.560913 2.096370 -94.562935
ot.put[17,2] 126.574799 597.895691 -2.127098 -85.560913 2.096370 -94.562935
ot.put[17,3] 126.638977 626.876343 -1.069628 -85.560913 2.096370 -94.562935
ot.put[17,4] 126.703186 655.856995 -0.012159 -85.560913 2.096370 -94.562935
ot.put[17,5] 126.767365 684.837646 1.045310 -85.560913 2.096370 -94.562935
ot.put[17,6] 126.831543 713.818298 2.102780 -85.560913 2.096370 -94.562935
ot.put[17,7] -417.937378 366.198212 -9.040216 -85.560913 2.096370 85.437073
ot.put[18,0] 142.446320 539.900696 -4.288599 -85.560913 2.096370 -94.562935
ot.put[18,1] 142.510498 568.881348 -3.231129 -85.560913 2.096370 -94.562935
ot.put[18,2] 142.574677 597.862000 -2.173660 -85.560913 2.096370 -94.562935
ot.put[18,3] 142.638855 626.842651 -1.116190 -85.560913 2.096370 -94.562935
ot.put[18,4] 142.703064 655.823242 -0.058721 -85.560913 2.096370 -94.562935
ot.put[18,5] 142.767242 684.803955 0.998749 -85.560913 2.096370 -94.562935
ot.put[18,6] 142.831421 713.784546 2.056218 -85.560913 2.096370 -94.562935
ot.put[18,7] -433.937256 366.231934 -8.993654 -85.560913 2.096370 85.437073
ot.put[19,0] 158.446228 539.866943 -4.335161 -85.560913 2.096370 -94.562935
ot.put[19,1] 158.510406 568.847595 -3.277691 -85.560913 2.096370 -94.562935
ot.put[19,2] 158.574585 597.828247 -2.220222 -85.560913 2.096370 -94.562935
ot.put[19,3] 158.638763 626.808899 -1.162752 -85.560913 2.096370 -94.562935
ot.put[19,4] 158.702972 655.789551 -0.105283 -85.560913 2.096370 -94.562935
ot.put[19,5] 158.767151 684.770203 0.952187 -85.560913 2.096370 -94.562935
ot.put[19,6] 158.831329 713.750854 2.009656 -85.560913 2.096370 -94.562935
ot.put[19,7] -449.937164 366.265686 -8.947092 -85.560913 2.096370 85.437073
ot.put[20,0] 174.446106 539.833191 -4.381722 -85.560913 2.096370 -94.562935
ot.put[20,1] 174.510284 568.813843 -3.324253 -85.560913 2.096370 -94.562935
ot.put[20,2] 174.574463 597.794495 -2.266783 -85.560913 2.096370 -94.562935
ot.put[20,3] 174.638641 626.775146 -1.209314 -85.560913 2.096370 -94.562935
ot.put[20,4] 174.702850 655.755798 -0.151845 -85.560913 2.096370 -94.562935
ot.put[20,5] 174.767029 684.736450 0.905625 -85.560913 2.096370 -94.562935
ot.put[20,6] 174.831207 713.717102 1.963094 -85.560913 2.096370 -94.562935
ot.put[20,7] -465.937042 366.299408 -8.900530 -85.560913 2.096370 85.437073
.END
.JOINTS
#homyak 13.751370 -37.185059 -123.196098 -0.000880 -93.838348 7.315490
#pos.point[1] -15.713965 35.412598 -67.587135 20.550589 -72.001648 121.858429
#pos.point[4] -21.391262 18.831665 -91.545250 16.562988 -62.277378 126.711113
#def.up.right 96.007767 47.274536 -59.097469 -0.012305 -71.775055 109.124313
#def.up.left 80.256454 48.302124 -57.362587 -0.444727 -72.541359 125.001823
#def.down.right 97.141563 30.778561 -86.732826 0.026370 -60.681606 107.972900
#before.machine[1] -121.615997 4.829000 -127.328003 -137.613007 -51.009998 -8.870000
#defect.point[50] 79.791443 47.037457 -59.593079 -0.403593 -71.823288 124.406555
#safe.machine -104.177643 -37.185425 -123.196983 -0.000879 -93.836975 -146.334885
#safe.defect 96.363724 -37.185425 -123.196983 -0.001758 -93.836296 7.313338
#defect.point[49] 83.799706 45.730595 -61.840870 -0.290479 -70.859146 120.369057
#defect.point[48] 87.885941 44.976620 -63.127308 -0.171942 -70.310989 116.247017
#defect.point[47] 92.010063 44.762142 -63.487003 -0.050480 -70.158150 112.083687
#defect.point[46] 96.129723 45.083885 -62.928925 0.071170 -70.395195 107.924606
#defect.point[45] 79.364075 43.408451 -65.914101 -0.422699 -69.134277 124.858429
#defect.point[44] 83.512871 42.144524 -68.044273 -0.303924 -68.243263 120.673187
#defect.point[43] 87.748436 41.411434 -69.269196 -0.179043 -67.734688 116.394379
#defect.point[42] 92.026268 41.202221 -69.612419 -0.050874 -67.592636 112.069748
#defect.point[41] 96.299110 41.515308 -69.080032 0.077487 -67.812881 107.749893
#defect.point[40] 78.905067 40.012432 -71.720665 -0.443409 -66.727051 125.341934
#defect.point[39] 83.204224 38.768398 -73.773575 -0.318498 -65.891678 120.999168
#defect.point[38] 87.600311 38.043755 -74.958328 -0.186718 -65.413689 116.552292
#defect.point[37] 92.043724 37.836407 -75.290833 -0.051244 -65.280029 112.054337
#defect.point[36] 96.481552 38.146091 -74.775177 0.084427 -65.487190 107.561752
#defect.point[35] 78.410835 36.787594 -77.128227 -0.465811 -64.547997 125.860992
#defect.point[34] 82.871208 35.546398 -79.131592 -0.334270 -63.757431 121.349785
#defect.point[33] 87.440285 34.820709 -80.291161 -0.194999 -63.304401 116.722183
#defect.point[32] 92.062599 34.612583 -80.617043 -0.051572 -63.177639 112.037300
#defect.point[31] 96.678619 34.922935 -80.111740 0.092053 -63.374062 107.358543
#defect.point[30] 77.877251 33.691010 -82.214455 -0.490015 -62.562458 126.419983
#defect.point[29] 82.510818 32.438667 -84.188866 -0.351326 -61.809872 121.728203
#defect.point[28] 87.266861 31.703936 -85.334579 -0.203925 -61.378300 116.905617
#defect.point[27] 92.083054 31.492790 -85.656937 -0.051842 -61.257515 112.018517
#defect.point[26] 96.892136 31.807266 -85.157150 0.100437 -61.444641 107.138359
#defect.point[25] 77.299522 30.690861 -87.034370 -0.516151 -60.747292 127.023964
#defect.point[24] 82.119583 29.414921 -88.996071 -0.369764 -60.028629 122.138046
#defect.point[23] 87.078293 28.663771 -90.137131 -0.213543 -59.616543 117.104439
#defect.point[22] 92.105316 28.447508 -90.458504 -0.052036 -59.501205 111.997742
#defect.point[21] 97.124245 28.769339 -89.960220 0.109663 -59.679878 106.898972
#defect.point[20] 76.672081 27.762259 -91.628426 -0.544365 -59.087006 127.678642
#defect.point[19] 81.693405 26.450764 -93.590981 -0.389698 -58.400372 122.583549
#defect.point[18] 86.872498 25.676094 -94.734924 -0.223906 -58.007111 117.320770
#defect.point[17] 92.129616 25.452637 -95.057457 -0.052132 -57.897110 111.974747
#defect.point[16] 97.377472 25.784889 -94.557533 0.119824 -58.067455 106.637833
#defect.point[15] 75.988373 24.884937 -96.026833 -0.574816 -57.571766 128.390717
#defect.point[14] 81.227455 23.525702 -98.002144 -0.411251 -56.917099 123.069626
#defect.point[13] 86.647026 22.719944 -99.155968 -0.235073 -56.542999 117.557144
#defect.point[12] 92.156250 22.487078 -99.481636 -0.052107 -56.438469 111.949219
#defect.point[11] 97.654846 22.833172 -98.976913 0.131026 -56.600323 106.351822
#defect.point[10] 75.240715 22.041428 -100.252991 -0.607675 -56.195755 129.167984
#defect.point[9] 80.715935 20.621418 -102.251945 -0.434560 -55.574825 123.602150
#defect.point[8] 86.398911 19.776346 -103.422112 -0.247110 -55.221348 117.816513
#defect.point[7] 92.185593 19.531656 -103.752724 -0.051933 -55.122780 111.920776
#defect.point[6] 97.959946 19.895241 -103.240402 0.143387 -55.275391 106.037285
#defect.point[5] 74.419975 19.216248 -104.324867 -0.643125 -54.956657 130.019669
#defect.point[4] 80.151932 17.720953 -106.357857 -0.459774 -54.373089 124.188110
#defect.point[3] 86.124573 16.827234 -107.550613 -0.260089 -54.042984 118.102524
#defect.point[2] 92.218063 16.567932 -107.887985 -0.051579 -53.951233 111.888985
#defect.point[1] 98.297157 16.953238 -107.365265 0.157040 -54.093266 105.689781
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
#defect.safe 109.729698 -37.185059 -123.196548 -0.002640 -93.839722 38.109039
#pos.point[5] -27.062403 3.609741 -109.914543 17.690626 -57.549133 128.931549
#pos.point[6] -24.266603 11.206055 -101.154915 16.572657 -59.693531 126.417831
#machine.pos[5] -120.855339 35.200932 -129.580521 -148.420029 -76.970901 12.493420
#machine.pos[6] -120.808754 34.013309 -129.783554 -148.398056 -76.117401 12.009513
#etalon.safe 89.266120 -4.592290 -112.841700 2.308890 -66.337510 21.642370
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
count.defect = 1
count.pick = 2
count.put = 1
current.gripper = 1
detail.count = 10
grip.180xsh[1] = 0
grip.180xsh[2] = 0
grip.180xsh[3] = 0
grip.180ysh[1] = 0
grip.180ysh[2] = 0
grip.180ysh[3] = 0
grip.xsh[1] = -3
grip.xsh[2] = -3
grip.xsh[3] = 0
grip.ysh[1] = 3
grip.ysh[2] = 15
grip.ysh[3] = 0
grip.zsh[1] = 0
grip.zsh[2] = 0
grip.zsh[3] = 0
hmi.defect.pos = 1
hmi.etalon.id = 1
hmi.g180x = 0
hmi.g180y = 0
hmi.gx = -3
hmi.gy = 15
hmi.gz = 0
hmi.obj.id = 2
hmi.tool.no = 1
keep.object = 2
line.width = 210
lines.count = 21
lines.shift = 16
max.tare.count = 126
obj.in.line = 7
obj.spacer = 1.5
object.length = 27.5
pg.gripper = 2
rs13.work[1] = 1017
state = 0
tcp.ena = -1
tcp.port = 9007
tcp.recv.ena = -1
tcp.send.ena = -1
tcp.sender.dly = 0.25
tcp.socket = 35
tyterm = 0
s.cmd.pick = 2233
s.opt.spacer = 2223
s.opt.flip = 2224
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
grip.xsh[4] = -3
grip.xsh[5] = -3
grip.ysh[4] = 3
grip.ysh[5] = 0
grip.zsh[4] = 0
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
ot.x = 10
ot.y = 3
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
etalon.id = -1
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
.END
.STRINGS
$log.entry[2] = " "
$log.entry[1] = " "
$log.entry[0] = " "
$action = "Default"
$log.entry[3] = " "
$log.entry[4] = " "
$log.entry[5] = " "
$log.entry[6] = " "
$log.entry[7] = " "
$log.entry[8] = " "
$log.entry[9] = " "
$log.entry[10] = " "
$log.entry[11] = " "
$log.entry[12] = " "
$log.entry[13] = " "
$log.entry[14] = " "
$log.entry[15] = " "
$log.entry[16] = " "
$log.entry[17] = " "
$log.entry[18] = " "
$log.entry[19] = " "
$log.entry[20] = " "
$log.entry[21] = " "
$log.entry[22] = " "
$log.entry[23] = " "
$log.entry[24] = " "
$log.entry[25] = " "
$log.entry[26] = " "
$log.entry[27] = " "
$log.entry[28] = " "
$log.entry[29] = " "
$log.entry[30] = " "
$log.entry[31] = " "
$log.entry[32] = " "
$log.entry[33] = " "
$log.entry[34] = " "
$log.entry[35] = " "
$log.entry[36] = " "
$log.entry[37] = " "
$log.entry[38] = " "
$log.entry[39] = " "
$log.entry[40] = " "
$log.entry[41] = " "
$log.entry[42] = " "
$log.entry[43] = " "
$log.entry[44] = " "
$log.entry[45] = " "
$log.entry[46] = " "
$log.entry[47] = " "
$log.entry[48] = " "
$log.entry[49] = " "
$log.entry[50] = " "
$log.entry[51] = " "
$log.entry[52] = " "
$log.entry[53] = " "
$log.entry[54] = " "
$log.entry[55] = " "
$log.entry[56] = " "
$log.entry[57] = " "
$log.entry[58] = " "
$log.entry[59] = " "
$log.entry[60] = " "
$log.entry[61] = " "
$log.entry[62] = " "
$log.entry[63] = " "
$log.entry[64] = " "
$log.entry[65] = " "
$log.entry[66] = " "
$log.entry[67] = " "
$log.entry[68] = " "
$log.entry[69] = " "
$log.entry[70] = " "
$log.entry[71] = " "
$log.entry[72] = " "
$log.entry[73] = " "
$log.entry[74] = " "
$log.entry[75] = " "
$log.entry[76] = " "
$log.entry[77] = " "
$log.entry[78] = " "
$log.entry[79] = " "
$log.entry[80] = " "
$log.entry[81] = " "
$log.entry[82] = " "
$log.entry[83] = " "
$log.entry[84] = " "
$log.entry[85] = " "
$log.entry[86] = " "
$log.entry[87] = " "
$log.entry[88] = " "
$log.entry[89] = " "
$log.entry[90] = " "
$log.entry[91] = " "
$log.entry[92] = " "
$log.entry[93] = " "
$log.entry[94] = " "
$log.entry[95] = " "
$log.entry[96] = " "
$log.entry[97] = " "
$log.entry[98] = " "
$log.entry[99] = " "
$log.entry[100] = " "
$log.entry[101] = " "
$log.entry[102] = " "
$log.entry[103] = " "
$log.entry[104] = " "
$log.entry[105] = " "
$log.entry[106] = " "
$log.entry[107] = " "
$log.entry[108] = " "
$log.entry[109] = " "
$log.entry[110] = " "
$log.entry[111] = " "
$log.entry[112] = " "
$log.entry[113] = " "
$log.entry[114] = " "
$log.entry[115] = " "
$log.entry[116] = " "
$log.entry[117] = " "
$log.entry[118] = " "
$log.entry[119] = " "
$log.entry[120] = " "
$log.entry[121] = " "
$log.entry[122] = " "
$log.entry[123] = "13:35:28 Main program executed"
$log.entry[124] = "13:35:28 Performing safe motion to home position"
$log.entry[125] = "13:35:28 Robot in home position"
$log.entry[126] = "13:35:28 State 1: Pick from positioner"
$log.entry[127] = "13:35:28 Pick detail from positioner (ID: 1)"
$pg.name = "Default"
$tcp.ip = "192.168.7.100"
.END
