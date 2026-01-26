.AUXDATA
N_OX1    "!Release gripper!"
N_OX2    "Capture gripper"
N_OX3    "Unclamp gripper"
N_OX4    "Clamp gripper"
N_OX17    "Robot in workspace i"
N_OX18    "Request tare change"
N_OX19    "RS007L Blocked positioner zone"
N_OX20    "RS007L finished work"
N_OX21    "RS007L picked detail"
N_OX25    "Picked details count from RS007L"
N_OX26    "Picked details count from RS007L"
N_OX27    "Picked details count from RS007L"
N_OX28    "Picked details count from RS007L"
N_OX29    "Picked details count from RS007L"
N_OX30    "Picked details count from RS007L"
N_OX31    "Picked details count from RS007L"
N_OX32    "Picked details count from RS007L"
N_OX33    "Etalon measurement was bad, need to stop"
N_WX1    "Gripper unclamped"
N_WX2    "Gripper clamped"
N_WX17    "Robot in workspace 1"
N_WX18    "Acknowledge of tare change"
N_WX19    "RS013N put detail to positioner"
N_WX20    "RS013N finish process"
N_WX25    "Put details count from RS0013N"
N_WX26    "Put details count from RS0013N"
N_WX27    "Put details count from RS0013N"
N_WX28    "Put details count from RS0013N"
N_WX29    "Put details count from RS0013N"
N_WX30    "Put details count from RS0013N"
N_WX31    "Put details count from RS0013N"
N_WX32    "Put details count from RS0013N"
N_INT1    "Open IFP page i"
N_INT2    "Open IFP page i"
N_INT3    "Open IFP page i"
N_INT4    "Open IFP page i"
N_INT5    "Open IFP page i"
N_INT6    "Open IFP page i"
N_INT7    "Open IFP page i"
N_INT8    "Open IFP page i"
N_INT9    "Set hold mode"
N_INT10    "Robot in home position"
N_INT11    "Battery low alarm"
N_INT12    "Robot in automatic mode"
N_INT201    "Display TCP send prints"
N_INT202    "Display TCP receive prints"
N_INT203    "Display TCP connect prints"
N_INT204    "Add log record for tcp.log"
N_INT209    "RS007L first in common zone"
N_INT212    "Robot in workspace i"
N_INT213    "Robot in workspace i"
N_INT214    "Robot in workspace i"
N_INT215    "Robot in workspace i"
N_INT216    "Robot in workspace i"
N_INT217    "Robot in workspace i"
N_INT218    "Robot in workspace i"
N_INT221    "Force input signal i"
N_INT222    "Force input signal i"
N_INT223    "Defect pallet sensor OK"
N_INT224    "Defect pallet sensor NG"
N_INT225    "Measurement result OK"
N_INT226    "Measurement result NG"
N_INT227    "Force measure defect"
N_INT231    "Gripper is full"
N_INT232    "Start command"
N_INT233    "Pick from positioner command"
N_INT234    "Detail measured"
N_INT237    "Check etalon command"
N_INT238    "Finish program"
N_INT239    "Pause program command"
N_INT240    "Resume program command"
N_INT241    "Stop program command"
N_INT249    "Prime test OT program"
N_INT250    "Prime a.home"
N_INT251    "Prime teach OT"
N_INT252    "Prime teach defect"
N_INT253    "Prime teach measure machine"
N_INT254    "Prime teach Etalon"
N_INT255    "Prime teach positioner"
N_INT256    "Apply object shifts"
N_INT261    "Reset state from HMI"
N_INT262    "Reset action from hmi"
N_INT270    "Option for put to OT with spacer"
N_INT271    "Option to put to OT with flip"
N_INT272    "Etalon result: OK"
N_INT273    "Etalon result: RETRY"
N_INT274    "Etalon result: NG"
N_INT300    "Debug mode"
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
81,8,"count.defect","Current","defect",10,15,2,1,0
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
.PROGRAM a.teach.etalon()@25/12/11 10:43 #0
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
  JMOVE .et.pos.point+TRANS(0,0,50)
  BREAK
  LMOVE #et.pos.point[hmi.etalon.id]; *** TEACH POINT ***
  POINT .et.pos.point = #et.pos.point[hmi.etalon.id]
  BREAK
  TWAIT 0.5
  LMOVE .et.pos.point+TRANS(.eshift.x,.eshift.y,10)
  LMOVE .et.pos.point+TRANS(0,0,50)
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
  LMOVE .et.pos.point+TRANS(0,0,50)
  LMOVE .et.pos.point+TRANS(.eshift.x,.eshift.y,10)
  LMOVE #et.pos.point[hmi.etalon.id]
  LMOVE .et.pos.point+TRANS(0,0,50)
.END
<<<<<<< HEAD
=======
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
  ; If you need to put details by max.tare.count
  ;obj.in.line = INT(max.tare.count/21);
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
.PROGRAM calc.ot()@26/01/21 14:55 #17
  ; Get matrix center
  .center.col = INT (lines.count / 2)
  .center.row = INT (obj.in.line / 2)
  .cell = 0
  ;
  IF direction == 1 THEN
    ;
    FOR .offset = 0 TO lines.count
      .left = .center.col - .offset
      .right = .center.col + .offset
      ; Left column
      IF .left >= 0 THEN
        FOR .row = 0 TO obj.in.line - 1
          ms[.cell] = .left
          ns[.cell] = .row
          .cell = .cell + 1
        END
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
  ELSE
    ;
    FOR .offset = 0 TO lines.count
      .left = .center.col - .offset
      .right = .center.col + .offset
      ; Left column
      IF .left >= 0 THEN
        FOR .row = obj.in.line - 1 TO 0 STEP -1
          ms[.cell] = .left
          ns[.cell] = .row
          .cell = .cell + 1
        END
      END
      ; Right column
      IF .right < lines.count AND .right <> .left THEN
        FOR .row = obj.in.line - 1 TO 0 STEP -1
          ms[.cell] = .right
          ns[.cell] = .row
          .cell = .cell + 1
        END
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
  ;    FOR .i = 0 TO hmi.obj.id
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
.PROGRAM calc.ot.old ()
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
>>>>>>> 4e56ed6 (Another update (points and one fix))
.PROGRAM etalon.measure(.id)@26/01/15 13:04 #15
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
  IF .id==round.no THEN
    .eshift.x = 0
    .eshift.y = 0
  ELSE
    IF .id==pawn.no THEN
      .eshift.x = 0
      .eshift.y = 0
    ELSE
      .eshift.x = 0
      .eshift.y = 5
    END
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
  LMOVE .etalon.pos.pt+TRANS(0,0,50)
  LMOVE .etalon.pos.pt+TRANS(0,0,30)
  SPEED 250 MM/S
  ACCURACY 0.02
  LMOVE #et.pos.point[.id]
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  SIGNAL s.grip.full
  LMOVE .etalon.pos.pt+TRANS(.eshift.x,.eshift.y,10)
  ACCURACY 100
  LMOVE .etalon.pos.pt+TRANS(0,0,50)
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
  ;
  ; Wait for zone FREE
  SWAIT -rs13.work[1]
; Part 3 Return Etalon
  .$temp = "Return etalon to positioner (ID:"+$ENCODE(.id)+")"
  CALL log(.$temp)
  JMOVE #safe.machine
  JMOVE #homyak
  LMOVE #safe.etalon
  LMOVE .etalon.pos.pt+TRANS(0,0,50)
  LMOVE .etalon.pos.pt+TRANS(.eshift.x,.eshift.y,30)
  LMOVE .etalon.pos.pt+TRANS(.eshift.x,.eshift.y,10)
  SPEED 250 MM/S
  ACCURACY 0.02
  LMOVE #et.pos.point[.id]
  BREAK
  PULSE grip.unclamp
  TWAIT 0.5
  SIGNAL -s.grip.full
  LMOVE .etalon.pos.pt+TRANS(0,0,30)
  ACCURACY 100
  LMOVE .etalon.pos.pt+TRANS(0,0,50)
  LMOVE #safe.etalon
  ACCURACY 100
  LMOVE #homyak
.END
<<<<<<< HEAD
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
=======
.PROGRAM get.ot.point(.obj.id)@26/01/21 14:55 #684
  ot.x = ms[.obj.id]
  ot.y = ns[.obj.id]
.END
.PROGRAM get.ot.point.ol (.obj.id)
  IF object.id == pawn.no THEN
    ot.x = .obj.id MOD lines.count
    ot.y = INT(.obj.id/lines.count)
    RETURN
>>>>>>> 4e56ed6 (Another update (points and one fix))
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
.PROGRAM get.ot.point(.obj.id)@26/01/15 08:27 #597
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
<<<<<<< HEAD
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
.PROGRAM calc.ot.old ()
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
.PROGRAM calc.ot ()
  ; Get matrix center
  .center.col = INT (lines.count / 2)
  .center.row = INT (obj.in.line / 2)
  .cell = 0
=======
.PROGRAM id1()@26/01/21 14:55 #52; 312.229.002
; Object ID
  object.id = 1
  etalon.id = 1 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 2
; Max objects in output tare
  max.tare.count = 2 ;126
  spc.tare.count = 50
; Object length
  object.length = 27.5
  ;
  direction = 1; -1 for reverse
>>>>>>> 4e56ed6 (Another update (points and one fix))
;
  FOR .offset = 0 TO lines.count
    .left  = .center.col - .offset
    .right = .center.col + .offset
    ; Left column
    IF .left >= 0 THEN
      FOR .row = obj.in.line - 1 TO 0 STEP -1
        ms[.cell] = .left
        ns[.cell] = .row
        .cell = .cell + 1
      END
    END
    ; Right column
    IF .right < lines.count AND .right <> .left THEN
      FOR .row = obj.in.line - 1 TO 0 STEP -1
        ms[.cell] = .right
        ns[.cell] = .row
        .cell = .cell + 1
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
  ;    FOR .i = 0 TO hmi.obj.id
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
<<<<<<< HEAD
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
=======
.PROGRAM id2()@26/01/21 14:55 #5; 0401.17.02.023-02
; Object ID
  object.id = 2
  etalon.id = 2 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 2
; Max objects in output tare
  max.tare.count = 10 ;84
  spc.tare.count = 50
; Object length
  object.length = 40
  ;
  direction = 1; -1 for reverse
;
.END
.PROGRAM id3()@26/01/21 14:55 #3; 312.229.001
; Object ID
  object.id = 3
  etalon.id = 3 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 3
; Max objects in output tare
  max.tare.count = 10 ;77
  spc.tare.count = 77
; Object length
  object.length = 40
  ;
  direction = 1; -1 for reverse
;
.END
.PROGRAM id4()@26/01/21 14:55 #5; 440.00.026
; Object ID
  object.id = 4
  etalon.id = 4 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 1
; Max objects in output tare
  max.tare.count = 10 ;147
  spc.tare.count = 50
; Object length
  object.length = 23.5
  ;
  direction = 1; -1 for reverse
;
.END
.PROGRAM id5()@26/01/21 14:55 #2; 440.00.111
; Object ID
  object.id = 5
  etalon.id = 5 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 1
; Max objects in output tare
  max.tare.count = 10 ;231
  spc.tare.count = 50
; Object length
  object.length = 16
  ;
  direction = 1; -1 for reverse
;
.END
.PROGRAM id6()@26/01/21 14:55 #8; 0401.28.02.063
; Object ID
  object.id = 6
  etalon.id = 6 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 1
; Max objects in output tare
  max.tare.count = 10 ;126
  spc.tare.count = 50
; Object length
  object.length = 28.5
  ;
  direction = 1; -1 for reverse
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
>>>>>>> 4e56ed6 (Another update (points and one fix))
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
<<<<<<< HEAD
.PROGRAM id1()@26/01/15 08:27 #34; 312.229.002
; Object ID
  object.id = 1
  etalon.id = 1 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 2
; Max objects in output tare
  max.tare.count = 3 ;126
  spc.tare.count = 50
; Object length
  object.length = 27.5
;
=======
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
  max.count.put = max.count.put + 1
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
>>>>>>> 4e56ed6 (Another update (points and one fix))
.END
.PROGRAM id2()@26/01/15 08:27 #0; 0401.17.02.023-02
; Object ID
  object.id = 2
  etalon.id = 2 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 2
; Max objects in output tare
  max.tare.count = 84 ;84
  spc.tare.count = 50
; Object length
  object.length = 40
;
.END
.PROGRAM id3()@26/01/15 08:27 #0; 312.229.001
; Object ID
  object.id = 3
  etalon.id = 3 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 3
; Max objects in output tare
  max.tare.count = 77 ;77
  spc.tare.count = 77
; Object length
  object.length = 40
;
.END
.PROGRAM id4()@26/01/15 08:27 #3; 440.00.026
; Object ID
  object.id = 4
  etalon.id = 4 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 1
; Max objects in output tare
  max.tare.count = 147 ;147
  spc.tare.count = 50
; Object length
  object.length = 23.5
;
.END
.PROGRAM id5()@26/01/15 08:27 #0; 440.00.111
; Object ID
  object.id = 5
  etalon.id = 5 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 1
; Max objects in output tare
  max.tare.count = 231 ;231
  spc.tare.count = 50
; Object length
  object.length = 15
;
.END
.PROGRAM id6()@26/01/15 08:27 #0; 0401.28.02.063
; Object ID
  object.id = 6
  etalon.id = 6 ; Can be object.id <> etalon.id
; Working gripper
  pg.gripper = 1
; Max objects in output tare
  max.tare.count = 126 ;126
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
.PROGRAM a.teach.pos ()
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
.PROGRAM state5()@26/01/15 08:27 #561; Check etalon
  CALL log("State 5: Check etalon")
  ; TEMPORARY!!!!!!!!
   state = 101
    SIGNAL -s.cmd.chk.etal
    RETURN
  SIGNAL -s.etalon.ok,-s.etalon.ret,-s.etalon.ng
  IF recv.etalon==99 THEN
    CALL etalon.measure(99)
  ELSE
    CALL etalon.measure(etalon.id)
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
.PROGRAM state100 () ; Waiting for start
  ;
  CALL log ("State 100: Waiting for start")
  $action = "WaitingForStart"
  ;
  WHILE NOT SIG (s.cmd.start)
    TWAIT 0.5
  END
  SIGNAL -s.cmd.start
  SIGNAL -s.cmd.stop
  SIGNAL -rs7.finish.ack
  ;
  CALL log ("START with Name:" + $pg.name + "-" + $ENCODE (/L, detail.spec) + " Count:" + $ENCODE (detail.count) + " OT:" + $ot.data + " OPT:" + $opt.data)
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
.PROGRAM pg0 ()
  state = 0
  CALL a.main
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
.PROGRAM tcp.sender.pc ()
  ;
<<<<<<< HEAD
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
=======
  CALL log ("State 0: Program reset. Initialization of parameters")
  SIGNAL -s.grip.full, -s.measure.ok, -s.measure.ng, -rs7.tare.chg, -s.cmd.measured
  SIGNAL -s.cmd.start, -s.cmd.pick, -s.cmd.finish, -rs7.locked.zone, -s.cmd.stop
  SIGNAL -s.cmd.chk.etal, -rs7.etalon.stop, -s.cmd.pause
  SIGNAL -s.etalon.ok, -s.etalon.ret, -s.etalon.ng
  count.pick = 0
  BITS rs7.det.picked[0], 8 = count.pick
  count.put = 0
  max.count.put = 0
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
  SIGNAL -s.cmd.stop
  SIGNAL -rs7.finish.ack
  ;
  CALL log ("START with Name:" + $pg.name + "-" + $ENCODE (/L, detail.spec) + " Count:" + $ENCODE (detail.count) + " OT:" + $ot.data + " OPT:" + $opt.data)
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
>>>>>>> 4e56ed6 (Another update (points and one fix))
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
.PROGRAM tcp.callback.pc(.$data[],.data.length)@26/01/15 10:51 #14121
  .$temp = "Received "+$ENCODE(.data.length)+" strings:"
  PRINT tcp.recv.ena: .$temp
  FOR .i = 1 TO .data.length
    PRINT tcp.recv.ena: .$data[.i]
  END
;
  CALL tcp.log.pc(.$data[1])
; Strings for parsing
;
; START COMMAND
; String format:
; START;DETAILNAME;DETAILSPEC;DETAILCOUNT;[INTAREID1,INTAREID2,..];[OTAREID1,INTAREID2,..];
  IF INSTR(.$data[1] , "START") THEN
; Decode command
    .$temp = $DECODE(.$data[1],";",0)
    .$temp = $DECODE(.$data[1],";",1)
; Decode detail type
    $pg.name = $DECODE(.$data[1],";",0)
    .$temp = $DECODE(.$data[1],";",1)
; Decode detail spec
    detail.spec = VAL($DECODE(.$data[1],";",0))
    .$temp = $DECODE(.$data[1],";",1)
; Decode detail count
    detail.count = VAL($DECODE(.$data[1],";",0))
    .$temp = $DECODE(.$data[1],";",1)
; Decode intare ids
    $ot.data = $DECODE(.$data[1],";",0)
; Decode outtare ids
    .$temp = $DECODE(.$data[1],";",1)
    $opt.data = $DECODE(.$data[1],";",0)
    PULSE s.cmd.start,5
  END
;
; SENSOR COMMAND
; String format:
; SENSOR;SENSORNAME;STATE;
  IF INSTR(.$data[1] , "SENSOR") THEN
; Decode command
    .$temp = $DECODE(.$data[1],";",0)
    .$temp = $DECODE(.$data[1],";",1)
; Decode sensor name
    .$sensor.name = $DECODE(.$data[1],";",0)
    .$temp = $DECODE(.$data[1],";",1)
; Decode sensor state
    .$sensor.state = $DECODE(.$data[1],";",0)
;
    IF INSTR(.$sensor.state , "TRUE") THEN
      IF .$sensor.name=="DEFECTPALLETSENSOR" THEN
        PULSE s.defect.pal.ok,5
      END
    ELSE
      IF .$sensor.name=="DEFECTPALLETSENSOR" THEN
        PULSE s.defect.pal.ng,5
      END
    END
  END
;
;ETALONRESULT COMMAND
; String format:
;ETALONRESULT;RESULT;
  IF INSTR(.$data[1] , "ETALONRESULT") THEN
; Decode command
    .$temp = $DECODE(.$data[1],";",0)
    .$temp = $DECODE(.$data[1],";",1)
; Decode state
    .$state = $DECODE(.$data[1],";",0)
    .$temp = $DECODE(.$data[1],";",1)
;
    IF .$state=="OK" THEN
      SIGNAL s.etalon.ok
    END
    IF .$state=="RETRY" THEN
      SIGNAL s.etalon.ret
    END
    IF .$state=="FAILED" THEN
      SIGNAL s.etalon.ng
    END
  END
;
; MEASUREMENT COMMAND
; String format:
; MEASUREMENT;STATE;
  IF INSTR(.$data[1] , "MEASUREMENT") THEN
; Decode command
    .$temp = $DECODE(.$data[1],";",0)
    .$temp = $DECODE(.$data[1],";",1)
; Decode measurement result
    .$measurement.sta = $DECODE(.$data[1],";",0)
    IF INSTR(.$measurement.sta , "TRUE") THEN
      SIGNAL s.measure.ok
    END
    IF INSTR(.$measurement.sta , "FALSE") THEN
      SIGNAL s.measure.ng
    END
  END
;
; SPEED COMMAND
; String format:
; SPEED;VALUE;
;
  IF INSTR(.$data[1] , "SPEED") THEN
    .$temp = $DECODE(.$data[1],";",0)
    .$temp = $DECODE(.$data[1],";",1)
    .$spd = $DECODE(.$data[1],";",0)
    .speed = VAL(.$spd)
    IF .speed<=0 THEN
      .speed = 1
    END
    IF .speed>100 THEN
      .speed = 100
    END
    MON_SPEED (.speed)
  END
;
; POSITIONERFULL COMMAND
; String format
; POSITIONERFULL;
  IF INSTR(.$data[1] , "POSITIONERFULL") THEN
    PULSE s.cmd.pick,5
  END
;
; ETALON COMMAND
; String format:
; ETALON;ID;
;
  IF INSTR(.$data[1] , "ETALON") THEN
; Decode command
    .$temp = $DECODE(.$data[1],";",0)
    .$temp = $DECODE(.$data[1],";",1)
; Need to decide where to check etalon!!!!
; Decode etalon id
    recv.etalon = VAL($DECODE(.$data[1],";",0))
;
    SIGNAL s.cmd.chk.etal
  END
;
; CLEANDEFECT COMMAND
; String format:
; CLEANDEFECT;
;
  IF INSTR(.$data[1] , "CLEANDEFECT") THEN
    count.defect = 0
  END
;
; PAUSE COMMAND
; String format:
; PAUSE;
;
  IF INSTR(.$data[1] , "PAUSE") THEN
    SIGNAL s.cmd.pause
  END
;
; RESUME COMMAND
; String format:
; RESUME;
;
  IF INSTR(.$data[1] , "RESUME") THEN
    PULSE s.cmd.resume,5
  END
;
; STOP COMMAND
; String format:
; STOP;
;
  IF INSTR(.$data[1] , "STOP") THEN
    SIGNAL s.cmd.stop
  END
;
; STOP COMMAND
; String format:
; STOP;
;
  IF INSTR(.$data[1] , "STOP") THEN
    SIGNAL s.cmd.stop
  END
;
; CYCLEON COMMAND
; String format:
; CYCLEON;
;
  IF INSTR(.$data[1] , "CYCLEON") THEN
    IF SIG(do.automatic) AND NOT SWITCH(CS) THEN
      MC CONTINUE
    END
  END
;
; STEPMODE COMMAND
; String format:
; STEPMODE;VALUE
;
  IF INSTR(.$data[1] , "STEPMODE") THEN
; Decode command
    .$temp = $DECODE(.$data[1],";",0)
    .$temp = $DECODE(.$data[1],";",1)
; Decode measurement result
    .$state = $DECODE(.$data[1],";",0)
    IF INSTR(.$state , "TRUE") THEN
      STP_ONCE ON
    END
    IF INSTR(.$state , "FALSE") THEN
      STP_ONCE OFF
    END
  END
;
; NEXTSTEP COMMAND
; String format:
; NEXTSTEP;
;
  IF INSTR(.$data[1] , "NEXTSTEP") THEN
    STPNEXT
  END
;
; ERESET COMMAND
; String format:
; ERESET;
;
  IF INSTR(.$data[1] , "ERESET") THEN
    MC ERESET
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
<<<<<<< HEAD
.PROGRAM tcp.log.pc (.$msg)
  IF NOT SIG(s.tcp.log) THEN
    RETURN
=======
.PROGRAM tcp.sender.pc ()
  ;
  WHILE TRUE DO
    ;
    CALL get.state.pc (.$data[1])
    .$data[2] = "ACTION:" + $action + ";"
    .$data[2] = .$data[2] + "GRIPPER:" + $ENCODE (current.gripper) + ";"
    .$data[2] = .$data[2] + "PICKCOUNT:" + $ENCODE (count.pick) + ";"
    .$data[2] = .$data[2] + "DEFECTCOUNT:" + $ENCODE (count.defect) + ";"
    .$data[2] = .$data[2] + "PUTCOUNT:" + $ENCODE (max.count.put) + ";"
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
>>>>>>> 4e56ed6 (Another update (points and one fix))
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
	; count.pick
	; max.count.put
	; count.defect
	; @@@ CONNECTION @@@
	; RS007L
	; 192.168.7.103
	; 23
	; @@@ PROGRAM @@@
<<<<<<< HEAD
	; Group:Etalon:1
	; 1:a.teach.etalon:F
	; .eshift.x 
	; .eshift.y 
	; .et.pos.point 
	; .et.mac.poin 
	; 1:etalon.measure:F
	; .id 
	; .etalon.pos.pt 
	; .etalon.mac.pt 
	; .shift.y 
	; .shift.z 
	; .p.idx 
	; .eshift.x 
	; .eshift.y 
	; .$temp 
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
	; .obj.id 
	; 2:a.test.ot:F
	; .$pg 
	; .x 
	; .y 
	; .z 
	; .put 
	; 2:ot.put:F
	; .x 
	; .y 
	; .z 
	; .put 
	; .tare.chg 
	; .locked.zone 
	; .lock.zone 
	; 2:calc.ot.old:F
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
	; 2:calc.ot:F
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
	; .$temp 
	; .temp 
	; .shift.x 
	; .shift.y 
	; .locked.zone 
	; .det.picked 
	; .lock.zone 
	; 5:a.teach.pos:F
	; .shift.x 
	; .shift.y 
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
	; .locked.zone 
	; .det.picked 
	; .etalon.stop 
	; 7:state1:F
	; 7:state2:F
	; 7:state3:F
	; 7:state4:F
	; 7:state5:F
	; .etalon.stop 
	; 7:state6:F
	; 7:state7:F
	; 7:state8:F
	; 7:state100:F
	; .finish.ack 
	; 7:state101:F
	; 7:state102:F
	; .work 
	; .det.put 
	; .finish 
	; .tare.chg 
	; .locked.zone 
	; .etalon.stop 
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
	; .idx 
	; .temp 
	; .s 
	; .c 
	; .dz 
	; 8:log:F
	; .$msg 
	; .i 
	; 8:pg.select:F
	; 0:a.main:F
	; .$pg.string 
	; 0:pg0:F
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
	; .$name 
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
	; .lock.zone 
	; .etalon.stop 
	; Group:TCPIP:11
	; 11:get.state.pc:B
	; .$state 
	; 11:tcp.sender.pc:B
	; .$data 
	; 11:tcp.callback.pc:B
	; .$data 
	; .data.length 
	; .$temp 
	; .i 
	; .$sensor.name 
	; .$sensor.state 
	; .$state 
	; .$measurement.sta 
	; .$spd 
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
	; .$ips 
	; .i 
	; .$temp 
	; .status 
	; .$tcp.ip.copy 
	; .$ip 
	; .ip 
	; .connected 
	; .tcp.error.cnt 
	; .$tcp.request 
	; .request.size 
	; 11:tcp.send.pc:B
	; .$data 
	; .data.length 
	; .tcp.send.tmo 
	; .status 
	; .$temp 
	; .i 
	; 11:tcp.log.pc:B
	; .$msg 
	; .i 
	; 0:autostart.pc:B
	; 0:errstart.pc:B
=======
	;   Group:Etalon:1
	;     1:a.teach.etalon:F
	;       .eshift.x 
	;       .eshift.y 
	;       .et.pos.point 
	;       .et.mac.poin 
	;     1:etalon.measure:F
	;       .id 
	;       .etalon.pos.pt 
	;       .etalon.mac.pt 
	;       .shift.y 
	;       .shift.z 
	;       .p.idx 
	;       .eshift.x 
	;       .eshift.y 
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
	;       .offset 
	;       .left 
	;       .right 
	;       .row 
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
	;     2:calc.ot.old:F
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
	;     2:get.ot.point.ol:F
	;       .obj.id 
	;       .i 
	;       .x 
	;       .y 
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
	;       .shift.x 
	;       .shift.y 
	;       .locked.zone 
	;       .det.picked 
	;       .lock.zone 
	;     5:a.teach.pos:F
	;       .shift.x 
	;       .shift.y 
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
	;       .$measurement.sta 
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
>>>>>>> 4e56ed6 (Another update (points and one fix))
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
	; #ot.up.right OT up.right point
	; #ot.orig OT up right point
	; #ot.down.right OT down right point
	; #ot.down.left OT down left point
	; #machine.pos[] Point in measure machine for object i
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
	; object.id Object data: object id
	; ot.x OT put coordinate X
	; ot.y OT put coordinate Y
	; round.no ID for round detail
	; spc.tare.count Object data: Max details in tare with spacer
	; detail.spec Detail specification
	; recv.etalon Received etalon id
	; max.defect.cnt Maximum value of defect cell
	; pawn.no Number of pawn detail
	; hmi.gmidy HMI panel mid y shift
<<<<<<< HEAD
=======
	; grip.midysh[] 
	; max.count.put Maximum number of put details per count
>>>>>>> 4e56ed6 (Another update (points and one fix))
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
ot.put[0,1] -145.123871 557.097839 -5.036800 -84.510590 1.748546 -95.627464
ot.put[0,2] -145.080933 574.589722 -4.505394 -84.510590 1.748546 -95.627464
ot.put[0,3] -145.037994 592.081604 -3.973987 -84.510590 1.748546 -95.627464
ot.put[0,4] -144.995056 609.573486 -3.442580 -84.510590 1.748546 -95.627464
ot.put[0,5] -144.952103 627.065369 -2.911173 -84.510590 1.748546 -95.627464
ot.put[0,6] -144.909164 644.557251 -2.379767 -84.510590 1.748546 -95.627464
ot.put[0,7] -144.866226 662.049072 -1.848360 -84.510590 1.748546 -95.627464
ot.put[1,0] -129.166931 539.568115 -5.616081 -84.510590 1.748546 -95.627464
ot.put[1,1] -129.123993 557.059998 -5.084674 -84.510590 1.748546 -95.627464
ot.put[1,2] -129.081039 574.551880 -4.553267 -84.510590 1.748546 -95.627464
ot.put[1,3] -129.038101 592.043762 -4.021861 -84.510590 1.748546 -95.627464
ot.put[1,4] -128.995163 609.535645 -3.490454 -84.510590 1.748546 -95.627464
ot.put[1,5] -128.952225 627.027527 -2.959047 -84.510590 1.748546 -95.627464
ot.put[1,6] -128.909286 644.519409 -2.427640 -84.510590 1.748546 -95.627464
ot.put[1,7] -128.866348 662.011292 -1.896234 -84.510590 1.748546 -95.627464
ot.put[2,0] -113.167038 539.530334 -5.663955 -84.510590 1.748546 -95.627464
ot.put[2,1] -113.124100 557.022217 -5.132548 -84.510590 1.748546 -95.627464
ot.put[2,2] -113.081161 574.514038 -4.601141 -84.510590 1.748546 -95.627464
ot.put[2,3] -113.038223 592.005920 -4.069735 -84.510590 1.748546 -95.627464
ot.put[2,4] -112.995285 609.497803 -3.538328 -84.510590 1.748546 -95.627464
ot.put[2,5] -112.952339 626.989685 -3.006921 -84.510590 1.748546 -95.627464
ot.put[2,6] -112.909401 644.481567 -2.475514 -84.510590 1.748546 -95.627464
ot.put[2,7] -112.866463 661.973450 -1.944108 -84.510590 1.748546 -95.627464
ot.put[3,0] -97.167160 539.492493 -5.711828 -84.510590 1.748546 -95.627464
ot.put[3,1] -97.124222 556.984375 -5.180422 -84.510590 1.748546 -95.627464
ot.put[3,2] -97.081276 574.476257 -4.649015 -84.510590 1.748546 -95.627464
ot.put[3,3] -97.038338 591.968140 -4.117608 -84.510590 1.748546 -95.627464
ot.put[3,4] -96.995392 609.459961 -3.586202 -84.510590 1.748546 -95.627464
ot.put[3,5] -96.952454 626.951904 -3.054795 -84.510590 1.748546 -95.627464
ot.put[3,6] -96.909515 644.443726 -2.523388 -84.510590 1.748546 -95.627464
ot.put[3,7] -96.866577 661.935608 -1.991982 -84.510590 1.748546 -95.627464
ot.put[4,0] -81.167267 539.454651 -5.759702 -84.510590 1.748546 -95.627464
ot.put[4,1] -81.124329 556.946533 -5.228295 -84.510590 1.748546 -95.627464
ot.put[4,2] -81.081390 574.438416 -4.696889 -84.510590 1.748546 -95.627464
ot.put[4,3] -81.038452 591.930298 -4.165482 -84.510590 1.748546 -95.627464
ot.put[4,4] -80.995514 609.422180 -3.634075 -84.510590 1.748546 -95.627464
ot.put[4,5] -80.952568 626.914063 -3.102669 -84.510590 1.748546 -95.627464
ot.put[4,6] -80.909630 644.405945 -2.571262 -84.510590 1.748546 -95.627464
ot.put[4,7] -80.866692 661.897827 -2.039855 -84.510590 1.748546 -95.627464
ot.put[5,0] -65.167389 539.416870 -5.807576 -84.510590 1.748546 -95.627464
ot.put[5,1] -65.124451 556.908691 -5.276169 -84.510590 1.748546 -95.627464
ot.put[5,2] -65.081512 574.400574 -4.744762 -84.510590 1.748546 -95.627464
ot.put[5,3] -65.038567 591.892456 -4.213356 -84.510590 1.748546 -95.627464
ot.put[5,4] -64.995628 609.384338 -3.681949 -84.510590 1.748546 -95.627464
ot.put[5,5] -64.952690 626.876221 -3.150543 -84.510590 1.748546 -95.627464
ot.put[5,6] -64.909752 644.368103 -2.619136 -84.510590 1.748546 -95.627464
ot.put[5,7] -64.866814 661.859985 -2.087729 -84.510590 1.748546 -95.627464
ot.put[6,0] -49.167503 539.379028 -5.855450 -84.510590 1.748546 -95.627464
ot.put[6,1] -49.124565 556.870911 -5.324043 -84.510590 1.748546 -95.627464
ot.put[6,2] -49.081627 574.362793 -4.792636 -84.510590 1.748546 -95.627464
ot.put[6,3] -49.038681 591.854675 -4.261230 -84.510590 1.748546 -95.627464
ot.put[6,4] -48.995743 609.346558 -3.729823 -84.510590 1.748546 -95.627464
ot.put[6,5] -48.952805 626.838379 -3.198416 -84.510590 1.748546 -95.627464
ot.put[6,6] -48.909866 644.330261 -2.667010 -84.510590 1.748546 -95.627464
ot.put[6,7] -48.866928 661.822144 -2.135603 -84.510590 1.748546 -95.627464
ot.put[7,0] -33.167618 539.341187 -5.903324 -84.510590 1.748546 -95.627464
ot.put[7,1] -33.124680 556.833069 -5.371917 -84.510590 1.748546 -95.627464
ot.put[7,2] -33.081741 574.324951 -4.840510 -84.510590 1.748546 -95.627464
ot.put[7,3] -33.038795 591.816833 -4.309104 -84.510590 1.748546 -95.627464
ot.put[7,4] -32.995857 609.308716 -3.777697 -84.510590 1.748546 -95.627464
ot.put[7,5] -32.952919 626.800598 -3.246290 -84.510590 1.748546 -95.627464
ot.put[7,6] -32.909981 644.292480 -2.714884 -84.510590 1.748546 -95.627464
ot.put[7,7] -32.867043 661.784363 -2.183477 -84.510590 1.748546 -95.627464
ot.put[8,0] -17.167732 539.303345 -5.951198 -84.510590 1.748546 -95.627464
ot.put[8,1] -17.124786 556.795227 -5.419791 -84.510590 1.748546 -95.627464
ot.put[8,2] -17.081848 574.287109 -4.888384 -84.510590 1.748546 -95.627464
ot.put[8,3] -17.038910 591.778992 -4.356977 -84.510590 1.748546 -95.627464
ot.put[8,4] -16.995972 609.270874 -3.825571 -84.510590 1.748546 -95.627464
ot.put[8,5] -16.953033 626.762756 -3.294164 -84.510590 1.748546 -95.627464
ot.put[8,6] -16.910095 644.254639 -2.762758 -84.510590 1.748546 -95.627464
ot.put[8,7] -16.867157 661.746521 -2.231351 -84.510590 1.748546 -95.627464
ot.put[9,0] -1.167847 539.265564 -5.999072 -84.510590 1.748546 -95.627464
ot.put[9,1] -1.124908 556.757446 -5.467665 -84.510590 1.748546 -95.627464
ot.put[9,2] -1.081970 574.249329 -4.936258 -84.510590 1.748546 -95.627464
ot.put[9,3] -1.039032 591.741211 -4.404851 -84.510590 1.748546 -95.627464
ot.put[9,4] -0.996094 609.233032 -3.873445 -84.510590 1.748546 -95.627464
ot.put[9,5] -0.953140 626.724915 -3.342038 -84.510590 1.748546 -95.627464
ot.put[9,6] -0.910202 644.216797 -2.810631 -84.510590 1.748546 -95.627464
ot.put[9,7] -0.867264 661.708679 -2.279225 -84.510590 1.748546 -95.627464
ot.put[10,0] 14.832031 539.227722 -6.046946 -84.510590 1.748546 -95.627464
ot.put[10,1] 14.874969 556.719604 -5.515539 -84.510590 1.748546 -95.627464
ot.put[10,2] 14.917908 574.211487 -4.984132 -84.510590 1.748546 -95.627464
ot.put[10,3] 14.960846 591.703369 -4.452725 -84.510590 1.748546 -95.627464
ot.put[10,4] 15.003784 609.195251 -3.921319 -84.510590 1.748546 -95.627464
ot.put[10,5] 15.046738 626.687134 -3.389912 -84.510590 1.748546 -95.627464
ot.put[10,6] 15.089676 644.179016 -2.858505 -84.510590 1.748546 -95.627464
ot.put[10,7] 15.132614 661.670898 -2.327099 -84.510590 1.748546 -95.627464
ot.put[11,0] 30.831924 539.189880 -6.094819 -84.510590 1.748546 -95.627464
ot.put[11,1] 30.874863 556.681763 -5.563413 -84.510590 1.748546 -95.627464
ot.put[11,2] 30.917801 574.173645 -5.032006 -84.510590 1.748546 -95.627464
ot.put[11,3] 30.960739 591.665527 -4.500599 -84.510590 1.748546 -95.627464
ot.put[11,4] 31.003677 609.157410 -3.969193 -84.510590 1.748546 -95.627464
ot.put[11,5] 31.046631 626.649292 -3.437786 -84.510590 1.748546 -95.627464
ot.put[11,6] 31.089569 644.141174 -2.906379 -84.510590 1.748546 -95.627464
ot.put[11,7] 31.132507 661.633057 -2.374972 -84.510590 1.748546 -95.627464
ot.put[12,0] 46.831802 539.152100 -6.142693 -84.510590 1.748546 -95.627464
ot.put[12,1] 46.874741 556.643982 -5.611286 -84.510590 1.748546 -95.627464
ot.put[12,2] 46.917679 574.135864 -5.079880 -84.510590 1.748546 -95.627464
ot.put[12,3] 46.960617 591.627686 -4.548473 -84.510590 1.748546 -95.627464
ot.put[12,4] 47.003555 609.119568 -4.017066 -84.510590 1.748546 -95.627464
ot.put[12,5] 47.046509 626.611450 -3.485660 -84.510590 1.748546 -95.627464
ot.put[12,6] 47.089447 644.103333 -2.954253 -84.510590 1.748546 -95.627464
ot.put[12,7] 47.132385 661.595215 -2.422846 -84.510590 1.748546 -95.627464
ot.put[13,0] 62.831696 539.114258 -6.190567 -84.510590 1.748546 -95.627464
ot.put[13,1] 62.874634 556.606140 -5.659160 -84.510590 1.748546 -95.627464
ot.put[13,2] 62.917572 574.098022 -5.127753 -84.510590 1.748546 -95.627464
ot.put[13,3] 62.960510 591.589905 -4.596347 -84.510590 1.748546 -95.627464
ot.put[13,4] 63.003448 609.081787 -4.064940 -84.510590 1.748546 -95.627464
ot.put[13,5] 63.046402 626.573669 -3.533534 -84.510590 1.748546 -95.627464
ot.put[13,6] 63.089340 644.065552 -3.002127 -84.510590 1.748546 -95.627464
ot.put[13,7] 63.132278 661.557373 -2.470720 -84.510590 1.748546 -95.627464
ot.put[14,0] 78.831573 539.076416 -6.238441 -84.510590 1.748546 -95.627464
ot.put[14,1] 78.874512 556.568298 -5.707034 -84.510590 1.748546 -95.627464
ot.put[14,2] 78.917450 574.060181 -5.175627 -84.510590 1.748546 -95.627464
ot.put[14,3] 78.960388 591.552063 -4.644221 -84.510590 1.748546 -95.627464
ot.put[14,4] 79.003326 609.043945 -4.112814 -84.510590 1.748546 -95.627464
ot.put[14,5] 79.046280 626.535828 -3.581407 -84.510590 1.748546 -95.627464
ot.put[14,6] 79.089218 644.027710 -3.050001 -84.510590 1.748546 -95.627464
ot.put[14,7] 79.132156 661.519592 -2.518594 -84.510590 1.748546 -95.627464
ot.put[15,0] 94.831467 539.038635 -6.286314 -84.510590 1.748546 -95.627464
ot.put[15,1] 94.874405 556.530518 -5.754908 -84.510590 1.748546 -95.627464
ot.put[15,2] 94.917343 574.022339 -5.223501 -84.510590 1.748546 -95.627464
ot.put[15,3] 94.960281 591.514221 -4.692095 -84.510590 1.748546 -95.627464
ot.put[15,4] 95.003220 609.006104 -4.160688 -84.510590 1.748546 -95.627464
ot.put[15,5] 95.046173 626.497986 -3.629281 -84.510590 1.748546 -95.627464
ot.put[15,6] 95.089111 643.989868 -3.097875 -84.510590 1.748546 -95.627464
ot.put[15,7] 95.132050 661.481750 -2.566468 -84.510590 1.748546 -95.627464
ot.put[16,0] 110.831345 539.000793 -6.334188 -84.510590 1.748546 -95.627464
ot.put[16,1] 110.874298 556.492676 -5.802782 -84.510590 1.748546 -95.627464
ot.put[16,2] 110.917236 573.984558 -5.271375 -84.510590 1.748546 -95.627464
ot.put[16,3] 110.960175 591.476440 -4.739968 -84.510590 1.748546 -95.627464
ot.put[16,4] 111.003113 608.968323 -4.208562 -84.510590 1.748546 -95.627464
ot.put[16,5] 111.046051 626.460205 -3.677155 -84.510590 1.748546 -95.627464
ot.put[16,6] 111.088989 643.952026 -3.145748 -84.510590 1.748546 -95.627464
ot.put[16,7] 111.131927 661.443970 -2.614342 -84.510590 1.748546 -95.627464
ot.put[17,0] 126.831238 538.962952 -6.382062 -84.510590 1.748546 -95.627464
ot.put[17,1] 126.874176 556.454834 -5.850656 -84.510590 1.748546 -95.627464
ot.put[17,2] 126.917114 573.946716 -5.319249 -84.510590 1.748546 -95.627464
ot.put[17,3] 126.960052 591.438599 -4.787842 -84.510590 1.748546 -95.627464
ot.put[17,4] 127.002991 608.930481 -4.256435 -84.510590 1.748546 -95.627464
ot.put[17,5] 127.045929 626.422363 -3.725029 -84.510590 1.748546 -95.627464
ot.put[17,6] 127.088867 643.914246 -3.193622 -84.510590 1.748546 -95.627464
ot.put[17,7] 127.131805 661.406128 -2.662216 -84.510590 1.748546 -95.627464
ot.put[18,0] 142.831116 538.925171 -6.429936 -84.510590 1.748546 -95.627464
ot.put[18,1] 142.874054 556.417053 -5.898530 -84.510590 1.748546 -95.627464
ot.put[18,2] 142.916992 573.908875 -5.367123 -84.510590 1.748546 -95.627464
ot.put[18,3] 142.959930 591.400757 -4.835716 -84.510590 1.748546 -95.627464
ot.put[18,4] 143.002869 608.892639 -4.304309 -84.510590 1.748546 -95.627464
ot.put[18,5] 143.045807 626.384521 -3.772903 -84.510590 1.748546 -95.627464
ot.put[18,6] 143.088745 643.876404 -3.241496 -84.510590 1.748546 -95.627464
ot.put[18,7] 143.131683 661.368286 -2.710089 -84.510590 1.748546 -95.627464
ot.put[19,0] 158.830994 538.887329 -6.477810 -84.510590 1.748546 -95.627464
ot.put[19,1] 158.873932 556.379211 -5.946404 -84.510590 1.748546 -95.627464
ot.put[19,2] 158.916870 573.871094 -5.414997 -84.510590 1.748546 -95.627464
ot.put[19,3] 158.959808 591.362976 -4.883590 -84.510590 1.748546 -95.627464
ot.put[19,4] 159.002747 608.854858 -4.352183 -84.510590 1.748546 -95.627464
ot.put[19,5] 159.045685 626.346680 -3.820776 -84.510590 1.748546 -95.627464
ot.put[19,6] 159.088623 643.838562 -3.289370 -84.510590 1.748546 -95.627464
ot.put[19,7] 159.131561 661.330444 -2.757963 -84.510590 1.748546 -95.627464
ot.put[20,0] 174.830872 538.849487 -6.525684 -84.510590 1.748546 -95.627464
ot.put[20,1] 174.873810 556.341370 -5.994277 -84.510590 1.748546 -95.627464
ot.put[20,2] 174.916748 573.833252 -5.462871 -84.510590 1.748546 -95.627464
ot.put[20,3] 174.959686 591.325134 -4.931464 -84.510590 1.748546 -95.627464
ot.put[20,4] 175.002625 608.817017 -4.400057 -84.510590 1.748546 -95.627464
ot.put[20,5] 175.045563 626.308899 -3.868650 -84.510590 1.748546 -95.627464
ot.put[20,6] 175.088501 643.800781 -3.337244 -84.510590 1.748546 -95.627464
ot.put[20,7] 175.131439 661.292664 -2.805837 -84.510590 1.748546 -95.627464
.END
.JOINTS
#homyak 13.751370 -37.185059 -123.196098 -0.000880 -93.838348 7.315490
#pos.point[1] -15.731983 35.304565 -67.762489 20.557617 -71.934357 121.850998
#pos.point[4] -21.510353 18.792847 -91.561760 16.545412 -62.268452 126.837639
#def.up.right 95.497124 60.880005 -34.419159 -0.026367 -82.819756 109.634010
#def.up.left 81.402985 65.901131 -25.071423 -0.397266 -87.192314 123.740898
#def.down.right 96.876129 30.063354 -87.202248 0.017578 -60.928806 108.241516
#before.machine[1] -121.615997 4.829000 -127.328003 -137.613007 -51.009998 -8.870000
#defect.point[50] 79.791443 47.037457 -59.593079 -0.403593 -71.823288 124.406555
#safe.machine -95.088432 -19.149536 -113.268288 -0.002637 -85.693367 -155.432388
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
#pos.point[3] -14.150831 43.650146 -55.638863 18.434181 -76.634453 31.826199
#machine.pos[1] -120.949371 34.905396 -129.671097 -148.149338 -76.963348 13.025310
#machine.pos[2] -121.163826 32.506714 -129.904922 -147.218567 -75.263901 11.481661
#machine.pos[3] -108.353333 28.362671 -91.546143 0.006152 -59.827423 -142.175323
#machine.pos[4] -120.879936 34.424194 -129.780426 -148.328629 -76.511543 12.364180
#et.mac.point[99] -116.219101 48.973022 -118.426521 -153.258408 -78.901749 15.482635
#et.pos.point[99] 42.590481 27.213867 -85.643173 19.667286 -94.327240 -118.745911
#safe.defect 85.116364 -1.856690 -101.774261 -0.002637 -81.495209 25.192118
#pos.point[5] -27.177980 3.375732 -110.184494 17.676563 -57.491459 129.040359
#pos.point[6] -24.299122 11.133912 -101.249069 16.570900 -59.667442 126.440331
#machine.pos[5] -120.899719 35.180420 -129.649246 -148.381348 -77.014160 12.506836
#machine.pos[6] -120.854446 33.975590 -129.856735 -148.358505 -76.151733 12.022010
#safe.etalon 89.266121 -4.592290 -112.841698 2.308890 -66.337509 21.642370
#et.mac.point[1] -120.963432 34.931763 -129.659500 -148.136139 -76.977768 13.028316
#et.mac.point[2] -121.172615 32.299805 -129.927231 -147.186050 -75.110779 11.377057
#et.mac.point[3] -108.412216 28.074831 -91.393982 0.006152 -60.268940 -142.117126
#et.mac.point[4] -120.930481 34.692265 -129.674683 -148.143173 -76.775215 12.918110
#et.mac.point[5] -120.886536 35.369019 -129.605957 -148.409485 -77.136391 12.587888
#et.mac.point[6] -120.843903 33.930908 -129.819702 -148.358505 -76.080322 11.975099
#et.pos.point[1] 31.180521 49.063847 -54.365814 26.111427 -91.069794 77.397720
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
count.defect = 48
count.pick = 12
count.put = 0
current.gripper = 1
detail.count = 20
grip.180xsh[1] = 0
grip.180xsh[2] = 0
grip.180xsh[3] = 0
grip.180ysh[1] = 0
grip.180ysh[2] = 0
grip.180ysh[3] = 0
grip.xsh[1] = 16
grip.xsh[2] = 14
grip.xsh[3] = -11
grip.ysh[1] = 2
grip.ysh[2] = 2
grip.ysh[3] = -5
grip.zsh[1] = -15
grip.zsh[2] = -17
grip.zsh[3] = -18
hmi.defect.pos = 1
hmi.etalon.id = 3
hmi.g180x = 0
hmi.g180y = 0
hmi.gx = 16
hmi.gy = 2
hmi.gz = -15
hmi.obj.id = 1
hmi.tool.no = 1
keep.object = 1
line.width = 210
lines.count = 21
lines.shift = 16
max.tare.count = 10
obj.in.line = 11
obj.spacer = 1.5
object.length = 16
pg.gripper = 1
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
grip.xsh[5] = 14
grip.ysh[4] = 2
grip.ysh[5] = 7
grip.zsh[4] = -16
grip.zsh[5] = -18
s.cmd.measured = 2234
hmi.gripper = 1
ms[0] = 10
ms[1] = 10
ms[2] = 10
ms[3] = 10
ms[4] = 10
ms[5] = 10
ms[6] = 10
ms[7] = 10
ms[8] = 10
ms[9] = 10
ms[10] = 10
ms[11] = 9
ms[12] = 9
ms[13] = 9
ms[14] = 9
ms[15] = 9
ms[16] = 9
ms[17] = 9
ms[18] = 9
ms[19] = 9
ms[20] = 9
ms[21] = 9
ms[22] = 11
ms[23] = 11
ms[24] = 11
ms[25] = 11
ms[26] = 11
ms[27] = 11
ms[28] = 11
ms[29] = 11
ms[30] = 11
ms[31] = 11
ms[32] = 11
ms[33] = 8
ms[34] = 8
ms[35] = 8
ms[36] = 8
ms[37] = 8
ms[38] = 8
ms[39] = 8
ms[40] = 8
ms[41] = 8
ms[42] = 8
ms[43] = 8
ms[44] = 12
ms[45] = 12
ms[46] = 12
ms[47] = 12
ms[48] = 12
ms[49] = 12
ms[50] = 12
ms[51] = 12
ms[52] = 12
ms[53] = 12
ms[54] = 12
ms[55] = 7
ms[56] = 7
ms[57] = 7
ms[58] = 7
ms[59] = 7
ms[60] = 7
ms[61] = 7
ms[62] = 7
ms[63] = 7
ms[64] = 7
ms[65] = 7
ms[66] = 13
ms[67] = 13
ms[68] = 13
ms[69] = 13
ms[70] = 13
ms[71] = 13
ms[72] = 13
ms[73] = 13
ms[74] = 13
ms[75] = 13
ms[76] = 13
ms[77] = 6
ms[78] = 6
ms[79] = 6
ms[80] = 6
ms[81] = 6
ms[82] = 6
ms[83] = 6
ms[84] = 6
ms[85] = 6
ms[86] = 6
ms[87] = 6
ms[88] = 14
ms[89] = 14
ms[90] = 14
ms[91] = 14
ms[92] = 14
ms[93] = 14
ms[94] = 14
ms[95] = 14
ms[96] = 14
ms[97] = 14
ms[98] = 14
ms[99] = 5
ms[100] = 5
ms[101] = 5
ms[102] = 5
ms[103] = 5
ms[104] = 5
ms[105] = 5
ms[106] = 5
ms[107] = 5
ms[108] = 5
ms[109] = 5
ms[110] = 15
ms[111] = 15
ms[112] = 15
ms[113] = 15
ms[114] = 15
ms[115] = 15
ms[116] = 15
ms[117] = 15
ms[118] = 15
ms[119] = 15
ms[120] = 15
ms[121] = 4
ms[122] = 4
ms[123] = 4
ms[124] = 4
ms[125] = 4
ms[126] = 4
ms[127] = 4
ms[128] = 4
ms[129] = 4
ms[130] = 4
ms[131] = 4
ms[132] = 16
ms[133] = 16
ms[134] = 16
ms[135] = 16
ms[136] = 16
ms[137] = 16
ms[138] = 16
ms[139] = 16
ms[140] = 16
ms[141] = 16
ms[142] = 16
ms[143] = 3
ms[144] = 3
ms[145] = 3
ms[146] = 3
ns[0] = 0
ns[1] = 1
ns[2] = 2
ns[3] = 3
ns[4] = 4
ns[5] = 5
ns[6] = 6
ns[7] = 7
ns[8] = 8
ns[9] = 9
ns[10] = 10
ns[11] = 0
ns[12] = 1
ns[13] = 2
ns[14] = 3
ns[15] = 4
ns[16] = 5
ns[17] = 6
ns[18] = 7
ns[19] = 8
ns[20] = 9
ns[21] = 10
ns[22] = 0
ns[23] = 1
ns[24] = 2
ns[25] = 3
ns[26] = 4
ns[27] = 5
ns[28] = 6
ns[29] = 7
ns[30] = 8
ns[31] = 9
ns[32] = 10
ns[33] = 0
ns[34] = 1
ns[35] = 2
ns[36] = 3
ns[37] = 4
ns[38] = 5
ns[39] = 6
ns[40] = 7
ns[41] = 8
ns[42] = 9
ns[43] = 10
ns[44] = 0
ns[45] = 1
ns[46] = 2
ns[47] = 3
ns[48] = 4
ns[49] = 5
ns[50] = 6
ns[51] = 7
ns[52] = 8
ns[53] = 9
ns[54] = 10
ns[55] = 0
ns[56] = 1
ns[57] = 2
ns[58] = 3
ns[59] = 4
ns[60] = 5
ns[61] = 6
ns[62] = 7
ns[63] = 8
ns[64] = 9
ns[65] = 10
ns[66] = 0
ns[67] = 1
ns[68] = 2
ns[69] = 3
ns[70] = 4
ns[71] = 5
ns[72] = 6
ns[73] = 7
ns[74] = 8
ns[75] = 9
ns[76] = 10
ns[77] = 0
ns[78] = 1
ns[79] = 2
ns[80] = 3
ns[81] = 4
ns[82] = 5
ns[83] = 6
ns[84] = 7
ns[85] = 8
ns[86] = 9
ns[87] = 10
ns[88] = 0
ns[89] = 1
ns[90] = 2
ns[91] = 3
ns[92] = 4
ns[93] = 5
ns[94] = 6
ns[95] = 7
ns[96] = 8
ns[97] = 9
ns[98] = 10
ns[99] = 0
ns[100] = 1
ns[101] = 2
ns[102] = 3
ns[103] = 4
ns[104] = 5
ns[105] = 6
ns[106] = 7
ns[107] = 8
ns[108] = 9
ns[109] = 10
ns[110] = 0
ns[111] = 1
ns[112] = 2
ns[113] = 3
ns[114] = 4
ns[115] = 5
ns[116] = 6
ns[117] = 7
ns[118] = 8
ns[119] = 9
ns[120] = 10
ns[121] = 0
ns[122] = 1
ns[123] = 2
ns[124] = 3
ns[125] = 4
ns[126] = 5
ns[127] = 6
ns[128] = 7
ns[129] = 8
ns[130] = 9
ns[131] = 10
ns[132] = 0
ns[133] = 1
ns[134] = 2
ns[135] = 3
ns[136] = 4
ns[137] = 5
ns[138] = 6
ns[139] = 7
ns[140] = 8
ns[141] = 9
ns[142] = 10
ns[143] = 0
ns[144] = 1
ns[145] = 2
ns[146] = 3
object.id = 5
ot.x = 9
ot.y = 1
round.no = 3
spc.tare.count = 50
detail.spec = 0
grip.xsh[6] = 14
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
etalon.id = 5
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
grip.ysh[6] = 2
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
grip.zsh[6] = -15
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
recv.etalon = -1
s.tcp.log = 2204
s.force.defect = 2227
s.etalon.ok = 2272
s.etalon.ret = 2273
s.etalon.ng = 2274
rs7.etalon.stop = 33
max.defect.cnt = 50
do.automatic = 2012
pawn.no = 5
hmi.gmidy = 0
grip.midysh[1] = 0
grip.midysh[2] = 0
grip.midysh[3] = 0
grip.midysh[4] = 0
grip.midysh[5] = 0
grip.midysh[6] = 0
grip.midysh[7] = 0
grip.midysh[8] = 0
grip.midysh[9] = 0
grip.midysh[10] = 0
grip.midysh[11] = 0
grip.midysh[12] = 0
grip.midysh[13] = 0
grip.midysh[14] = 0
grip.midysh[15] = 0
grip.midysh[16] = 0
grip.midysh[17] = 0
grip.midysh[18] = 0
grip.midysh[19] = 0
grip.midysh[20] = 0
grip.midysh[21] = 0
grip.midysh[22] = 0
grip.midysh[23] = 0
grip.midysh[24] = 0
grip.midysh[25] = 0
grip.midysh[26] = 0
grip.midysh[27] = 0
grip.midysh[28] = 0
grip.midysh[29] = 0
grip.midysh[30] = 0
grip.midysh[31] = 0
grip.midysh[32] = 0
grip.midysh[33] = 0
grip.midysh[34] = 0
grip.midysh[35] = 0
grip.midysh[36] = 0
grip.midysh[37] = 0
grip.midysh[38] = 0
grip.midysh[39] = 0
grip.midysh[40] = 0
grip.midysh[41] = 0
grip.midysh[42] = 0
grip.midysh[43] = 0
grip.midysh[44] = 0
grip.midysh[45] = 0
grip.midysh[46] = 0
grip.midysh[47] = 0
grip.midysh[48] = 0
grip.midysh[49] = 0
grip.midysh[50] = 0
grip.midysh[51] = 0
grip.midysh[52] = 0
grip.midysh[53] = 0
grip.midysh[54] = 0
grip.midysh[55] = 0
grip.midysh[56] = 0
grip.midysh[57] = 0
grip.midysh[58] = 0
grip.midysh[59] = 0
grip.midysh[60] = 0
grip.midysh[61] = 0
grip.midysh[62] = 0
grip.midysh[63] = 0
grip.midysh[64] = 0
max.count.put = 0
.END
.STRINGS
$log.entry[2] = "16:29:24 POSITIONERFULL;\n"
$log.entry[1] = "16:29:24 POSITIONERFULL;\n"
$log.entry[0] = "16:29:24 POSITIONERFULL;\n"
$action = " "
$log.entry[3] = "16:29:25 POSITIONERFULL;\n"
$log.entry[4] = "16:29:25 POSITIONERFULL;\n"
$log.entry[5] = "16:29:25 POSITIONERFULL;\n"
$log.entry[6] = "16:29:25 POSITIONERFULL;\n"
$log.entry[7] = "16:29:26 POSITIONERFULL;\n"
$log.entry[8] = "16:29:26 POSITIONERFULL;\n"
$log.entry[9] = "16:29:26 POSITIONERFULL;\n"
$log.entry[10] = "16:29:26 POSITIONERFULL;\n"
$log.entry[11] = "16:29:27 POSITIONERFULL;\n"
$log.entry[12] = "16:29:27 POSITIONERFULL;\n"
$log.entry[13] = "16:29:27 POSITIONERFULL;\n"
$log.entry[14] = "16:29:27 POSITIONERFULL;\n"
$log.entry[15] = "16:29:28 POSITIONERFULL;\n"
$log.entry[16] = "16:29:28 POSITIONERFULL;\n"
$log.entry[17] = "16:29:28 POSITIONERFULL;\n"
$log.entry[18] = "16:29:28 POSITIONERFULL;\n"
$log.entry[19] = "16:29:29 POSITIONERFULL;\n"
$log.entry[20] = "16:29:29 POSITIONERFULL;\n"
$log.entry[21] = "16:29:29 POSITIONERFULL;\n"
$log.entry[22] = "16:29:30 POSITIONERFULL;\n"
$log.entry[23] = "16:29:30 POSITIONERFULL;\n"
$log.entry[24] = "16:29:30 POSITIONERFULL;\n"
$log.entry[25] = "16:29:30 POSITIONERFULL;\n"
$log.entry[26] = "16:29:31 POSITIONERFULL;\n"
$log.entry[27] = "16:29:31 POSITIONERFULL;\n"
$log.entry[28] = "16:29:31 POSITIONERFULL;\n"
$log.entry[29] = "16:29:31 POSITIONERFULL;\n"
$log.entry[30] = "16:29:32 POSITIONERFULL;\n"
$log.entry[31] = "16:29:32 POSITIONERFULL;\n"
$log.entry[32] = "16:29:32 POSITIONERFULL;\n"
$log.entry[33] = "16:29:32 POSITIONERFULL;\n"
$log.entry[34] = "16:29:33 POSITIONERFULL;\n"
$log.entry[35] = "16:29:33 POSITIONERFULL;\n"
$log.entry[36] = "16:29:33 POSITIONERFULL;\n"
$log.entry[37] = "16:29:33 POSITIONERFULL;\n"
$log.entry[38] = "16:29:34 POSITIONERFULL;\n"
$log.entry[39] = "16:29:34 POSITIONERFULL;\n"
$log.entry[40] = "16:29:34 POSITIONERFULL;\n"
$log.entry[41] = "16:29:34 POSITIONERFULL;\n"
$log.entry[42] = "16:29:35 POSITIONERFULL;\n"
$log.entry[43] = "16:29:35 POSITIONERFULL;\n"
$log.entry[44] = "16:29:35 POSITIONERFULL;\n"
$log.entry[45] = "16:29:35 POSITIONERFULL;\n"
$log.entry[46] = "16:29:36 POSITIONERFULL;\n"
$log.entry[47] = "16:29:36 POSITIONERFULL;\n"
$log.entry[48] = "16:29:36 POSITIONERFULL;\n"
$log.entry[49] = "16:29:36 POSITIONERFULL;\n"
$log.entry[50] = "16:29:37 POSITIONERFULL;\n"
$log.entry[51] = "16:29:37 POSITIONERFULL;\n"
$log.entry[52] = "16:29:37 POSITIONERFULL;\n"
$log.entry[53] = "16:29:37 POSITIONERFULL;\n"
$log.entry[54] = "16:29:38 POSITIONERFULL;\n"
$log.entry[55] = "16:29:38 POSITIONERFULL;\n"
$log.entry[56] = "16:29:38 POSITIONERFULL;\n"
$log.entry[57] = "16:29:38 POSITIONERFULL;\n"
$log.entry[58] = "16:29:39 POSITIONERFULL;\n"
$log.entry[59] = "16:29:39 POSITIONERFULL;\n"
$log.entry[60] = "16:29:39 POSITIONERFULL;\n"
$log.entry[61] = "16:29:39 POSITIONERFULL;\n"
$log.entry[62] = "16:29:40 POSITIONERFULL;\n"
$log.entry[63] = "16:29:40 POSITIONERFULL;\n"
$log.entry[64] = "16:29:40 POSITIONERFULL;\n"
$log.entry[65] = "16:29:43 POSITIONERFULL;\n"
$log.entry[66] = "16:29:43 POSITIONERFULL;\n"
$log.entry[67] = "16:29:43 POSITIONERFULL;\n"
$log.entry[68] = "16:29:43 POSITIONERFULL;\n"
$log.entry[69] = "16:29:44 POSITIONERFULL;\n"
$log.entry[70] = "16:29:44 POSITIONERFULL;\n"
$log.entry[71] = "16:29:44 POSITIONERFULL;\n"
$log.entry[72] = "16:29:44 POSITIONERFULL;\n"
$log.entry[73] = "16:29:45 POSITIONERFULL;\n"
$log.entry[74] = "16:29:45 POSITIONERFULL;\n"
$log.entry[75] = "16:29:45 POSITIONERFULL;\n"
$log.entry[76] = "16:29:45 POSITIONERFULL;\n"
$log.entry[77] = "16:29:46 POSITIONERFULL;\n"
$log.entry[78] = "16:29:46 POSITIONERFULL;\n"
$log.entry[79] = "16:29:46 POSITIONERFULL;\n"
$log.entry[80] = "16:29:46 POSITIONERFULL;\n"
$log.entry[81] = "16:29:47 POSITIONERFULL;\n"
$log.entry[82] = "16:29:47 POSITIONERFULL;\n"
$log.entry[83] = "16:29:47 POSITIONERFULL;\n"
$log.entry[84] = "16:29:47 POSITIONERFULL;\n"
$log.entry[85] = "16:29:48 POSITIONERFULL;\n"
$log.entry[86] = "16:29:48 POSITIONERFULL;\n"
$log.entry[87] = "16:29:48 POSITIONERFULL;\n"
$log.entry[88] = "16:29:48 POSITIONERFULL;\n"
$log.entry[89] = "16:29:49 POSITIONERFULL;\n"
$log.entry[90] = "16:29:49 POSITIONERFULL;\n"
$log.entry[91] = "16:29:49 POSITIONERFULL;\n"
$log.entry[92] = "16:29:49 POSITIONERFULL;\n"
$log.entry[93] = "16:29:50 POSITIONERFULL;\n"
$log.entry[94] = "16:29:50 POSITIONERFULL;\n"
$log.entry[95] = "16:29:50 POSITIONERFULL;\n"
$log.entry[96] = "16:29:50 POSITIONERFULL;\n"
$log.entry[97] = "16:29:51 POSITIONERFULL;\n"
$log.entry[98] = "16:29:51 POSITIONERFULL;\n"
$log.entry[99] = "16:29:51 POSITIONERFULL;\n"
$log.entry[100] = "16:29:51 POSITIONERFULL;\n"
$log.entry[101] = "16:29:52 POSITIONERFULL;\n"
$log.entry[102] = "16:29:52 POSITIONERFULL;\n"
$log.entry[103] = "16:29:52 POSITIONERFULL;\n"
$log.entry[104] = "16:29:52 POSITIONERFULL;\n"
$log.entry[105] = "16:29:53 POSITIONERFULL;\n"
$log.entry[106] = "16:29:53 POSITIONERFULL;\n"
$log.entry[107] = "16:29:53 POSITIONERFULL;\n"
$log.entry[108] = "16:29:54 POSITIONERFULL;\n"
$log.entry[109] = "16:29:54 POSITIONERFULL;\n"
$log.entry[110] = "16:29:54 POSITIONERFULL;\n"
$log.entry[111] = "16:29:54 POSITIONERFULL;\n"
$log.entry[112] = "16:29:55 POSITIONERFULL;\n"
$log.entry[113] = "16:29:55 POSITIONERFULL;\n"
$log.entry[114] = "16:29:55 POSITIONERFULL;\n"
$log.entry[115] = "16:29:55 POSITIONERFULL;\n"
$log.entry[116] = "12:03:23 CYCLEON;\n"
$log.entry[117] = "12:03:33 CYCLEON;\n"
$log.entry[118] = "12:03:43 CYCLEON;\n"
$log.entry[119] = "12:03:53 CYCLEON;\n"
$log.entry[120] = "12:04:03 CYCLEON;\n"
$log.entry[121] = "12:04:14 CYCLEON;\n"
$log.entry[122] = "12:04:24 CYCLEON;\n"
$log.entry[123] = "12:04:34 CYCLEON;\n"
$log.entry[124] = "12:04:44 CYCLEON;\n"
$log.entry[125] = "12:04:54 CYCLEON;\n"
$log.entry[126] = "12:05:04 CYCLEON;\n"
$log.entry[127] = "12:05:14 CYCLEON;\n"
$pg.name = "440.00.111"
$tcp.ip = "192.168.7.100"
$opt.data = "9"
$ot.data = "9"
.END
