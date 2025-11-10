.AUXDATA
N_OX1    "release.tare|"
N_OX2    "capture.tare|"
N_OX3    "grip.unclamp|"
N_OX4    "grip.clamp|"
N_OX5    "release.grip|"
N_OX6    "capture.grip|"
N_OX17    "do.home1|"
N_OX18    "do.work[1]|"
N_OX19    "rs13.det.put|"
N_OX20    "rs13.tare.ack|"
N_WX1    "grip.unclamped|"
N_WX2    "grip.clamped|"
N_WX17    "rs7.home1|"
N_WX18    "rs7.work[1]|"
N_WX19    "rs7.det.picked|"
N_WX20    "rs7.tare.chg|"
N_INT1    "di.ifp.page[1]|"
N_INT2    "di.ifp.page[2]|"
N_INT3    "di.ifp.page[3]|"
N_INT4    "di.ifp.page[4]|"
N_INT5    "di.ifp.page[5]|"
N_INT6    "di.ifp.page[6]|"
N_INT7    "di.ifp.page[7]|"
N_INT8    "di.ifp.page[8]|"
N_INT10    "do.bat.alm|"
N_INT11    "s.tcp.send.ena|"
N_INT12    "s.tcp.recv.ena|"
N_INT13    "s.tcp.ena|"
N_INT14    "s.apply.coord|"
N_INT15    "s.close.pneumo|"
N_INT16    "s.open.pneumo|"
N_INT17    "s.in1.disable|"
N_INT18    "s.in2.disable|"
N_INT19    "s.sensor.iss|"
N_INT20    "s.sensor.oss|"
N_INT21    "s.sensor.ot|"
N_INT22    "s.pneumo.open|"
N_INT23    "s.pneumo.close|"
N_INT24    "s.debug|"
N_INT102    "do.work[2]|"
.END
.INTER_PANEL_D
0,9,1,6,15
6,10,"","PCEXECUTE","AUTOSTART","",10,4,15,1,"PCEXECUTE autostart.pc",0
7,9,2,6,15
13,2,""," GRIPPERS","--------->","",10,4,15,2002,0
14,9,3,6,15
20,2,""," NETWORK","--------->","",10,4,15,2003,0
21,9,8,6,15
27,2,""," TEACH","--------->","",10,4,15,2004,0
28,1,"  Gripper","","","  opened",10,15,4,10,1001,0
29,1,"  Gripper","","","  closed",10,15,4,10,1002,0
33,2,"","  Release ","  gripper","",10,4,6,5,-1
34,2,"","  Capture","  gripper","",10,4,6,6,0
35,2,"","   Open ","  gripper","",10,4,5,3,0
36,2,"","   Close","  gripper","",10,4,5,4,0
42,4,1,"OFF     ON","","","FORCE IN 1",10,4,4,0,2017,0
43,4,1,"OFF     ON","","","FORCE IN 2",10,4,4,0,2018,0
47,2,"","  Release ","   tare","",10,4,6,1,-1
48,2,"","  Capture","   tare","",10,4,6,2,0
49,2,"","   MAIN","<---------","",10,4,15,2001,0
56,14,"tcp.ip","Server IP","",10,15,0
57,8,"tcp.port","Server","port",10,15,5,1,0
69,4,1,"OFF     ON","","","TCP COMMON",10,4,4,0,2013,0
76,4,1,"OFF     ON","",""," TCP SEND",10,4,4,0,2011,0
77,2,"","   MAIN","<---------","",10,4,15,2001,0
83,4,1,"OFF     ON","",""," TCP RECV",10,4,4,0,2012,0
84,8,"hmi.st.in.i","IN STOCKER","SELECT COL",10,15,4,2,0
85,8,"hmi.st.in.j","IN STOCKER","SELECT ROW",10,15,4,2,0
88,8,"hmi.tool.no","   TOOL","  NUMBER",10,15,2,1,0
90,2,"","   CLOSE","PNEUMATICS","",10,4,15,2015,0
91,8,"hmi.st.out.i","OUTSTOCKER","SELECT COL",10,15,4,2,0
92,8,"hmi.st.out.j","OUTSTOCKER","SELECT ROW",10,15,4,2,0
95,8,"hmi.t.pos","TOOL CHANG"," POSITION",10,15,2,1,0
97,2,"","   OPEN","PNEUMATICS","",10,4,15,2016,0
102,8,"hmi.obj.id","  OBJECT","    ID",10,15,2,1,0
104,4,1,"OFF     ON","","","  DEBUG ",10,4,4,0,2024,0
105,2,"","   MAIN","<---------","",10,4,15,2001,0
111,2,"","   STZ","--------->","",10,4,15,2005,0
112,8,"dist.xp","DISTORTION"," X+ COEFF",10,15,4,2,0
113,8,"dist.yp","DISTORTION"," Y+ COEFF",10,15,4,2,0
115,8,"hmi.tool.no","   TOOL","  NUMBER",10,15,2,1,0
116,8,"hmi.gx","GRIPPER N"," X SHIFT",10,15,4,2,0
117,8,"hmi.gy","GRIPPER N"," Y SHIFT",10,15,4,2,0
118,8,"hmi.gz","GRIPPER N"," Z SHIFT",10,15,4,2,0
119,8,"dist.xn","DISTORTION"," X- COEFF",10,15,4,2,0
120,8,"dist.yn","DISTORTION"," Y- COEFF",10,15,4,2,0
123,8,"hmi.g180x","GRIPPER N","180X SHIFT",10,15,4,2,0
124,8,"hmi.g180y","GRIPPER N","180Y SHIFT",10,15,4,2,0
125,2,""," APPLY FOR"," N GRIPPER","",10,4,15,2014,0
126,8,"center.x","CENTER OF","  X AXIS",10,15,4,2,0
127,8,"center.y","CENTER OF","  Y AXIS",10,15,4,2,0
133,2,"","   TEACH","<---------","",10,4,15,2004,0
135,8,"hmi.a","   STZ ","  ANGLE",10,15,4,2,0
136,8,"hmi.x","   STZ X","COORDINATE",10,15,4,2,0
137,8,"hmi.y","   STZ Y","COORDINATE",10,15,4,2,0
139,2,"","   MAIN","<---------","",10,4,15,2001,0
.END
.INTER_PANEL_TITLE
"MAIN",1
"GRIPPER",1
"NETWORK",1
"TEACH",1
"STZ",1
"",0
"",0
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
  ALIGN
.END
.PROGRAM a.home ()
  JMOVE #homep1
.END
.PROGRAM a.main ()
  ;
  CALL safe.home
  ;
  SIGNAL -rs13.det.put
  ;
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  ;
  CALL log ("Main cycle started. State: WaitingForCommand")
  $action = "WaitingForCommand"
  ;
  WHILE TRUE DO
    SCASE $command OF
      SVALUE "START":
        CALL log ("Received START command. State: StartingProgram")
        $action = "StartingProgram"
        CALL pg.start
        BREAK
        $action = "WaitingForCommand"
      ANY :
        BREAK
    END
  END
  ;
.END
.PROGRAM a.tch.stock.in ()
  ; Use this for first teach
  IF FALSE THEN
    TOOL tool.pin
    JMOVE stocker.in[1, 1] + TRANS (0, 0, 50)
    LMOVE stocker.in[1, 1]
    FOR .i = 0 TO 2
      FOR .j = 0 TO 9
        PRINT 0: .i, .j
        POINT stocker.in[.i + 1, .j + 1] = stocker.in[1, 1] + TRANS (-80 * .j, -610 * .i)
      END
    END
  END
  ; Correct point
  TOOL tool.pin
  .i = hmi.st.in.i
  .j = hmi.st.in.j
  JMOVE stocker.in[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.in[.i, .j] ; *** TEACH POINT ***
  LMOVE stocker.in[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.in[.i, .j]
  LMOVE stocker.in[.i, .j] + TRANS (0, 0, 50)
  ;
  
.END
.PROGRAM a.tch.stock.out ()
  ; Use this for first teach
  IF FALSE THEN
    JMOVE stocker.out[1, 1] + TRANS (0, 0, 50)
    LMOVE stocker.out[1, 1]
    FOR .i = 0 TO 3
      FOR .j = 0 TO 11
        PRINT 0: .i, .j
        POINT stocker.out[.i + 1, .j + 1] = stocker.out[1, 1] + TRANS (-100 * .j, -490 * .i)
      END
    END
  END
  ; Correct point
  .i = hmi.st.out.i
  .j = hmi.st.out.j
  JMOVE stocker.out[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.out[.i, .j] ; *** TEACH POINT ***
  LMOVE stocker.out[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.out[.i, .j]
  LMOVE stocker.out[.i, .j] + TRANS (0, 0, 50)
.END
.PROGRAM a.teach.gripper ()
  TOOL tool.pick[hmi.tool.no]
  ;
  POINT .temp = #tool.pos[hmi.t.pos]
  JMOVE .temp + TRANS (0, 0, 50)
  BREAK
  ;
  LMOVE #tool.pos[hmi.t.pos]
  BREAK
  PULSE capture.grip
  TWAIT 0.5
  ;
  LMOVE .temp + TRANS (0, 0, 200)
  BREAK
  JMOVE #wait.pick
  ;
  LMOVE .temp + TRANS (0, 0, 200)
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  LMOVE #tool.pos[hmi.t.pos]
  BREAK
  PULSE release.grip
  TWAIT 0.5
  ;
  LMOVE .temp + TRANS (0, 0, 50)
.END
.PROGRAM a.teach.pos ()
  TOOL tool.pick[hmi.tool.no]
  ;
  POINT .temp = #pos.pos[hmi.obj.id]
  JMOVE .temp + TRANS (10, 0, 50)
  LMOVE .temp + TRANS (10, 0, 20)
  BREAK
  LMOVE #pos.pos[hmi.obj.id]
  BREAK
  TWAIT 0.5
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  TWAIT 0.5

.END
.PROGRAM a.teach.stz()@25/10/21 15:36 #0
  SPEED 250 MM/S ALWAYS
  ACCURACY 0 ALWAYS
  TOOL tool.pin
  ;
  LMOVE #plb ; *** TEACH POINT *** Left bottom 
  LMOVE #plt ; *** TEACH POINT *** Left top
  LMOVE #prt ; *** TEACH POINT *** Right top
  LMOVE #prb ; *** TEACH POINT *** Right bottom
  ;
  POINT .plb = #plb
  POINT .plt = #plt
  POINT .prt = #prt
  POINT .prb = #prb
  ;
  .dx1 = DISTANCE(.plt, .plb) ; DX1
  .dx2 = DISTANCE(.prt, .prb) ; DX2
  .dy1 = DISTANCE(.plt, .prt) ; DY1
  .dy2 = DISTANCE(.plb, .prb) ; DY2
  ;
  PRINT 0: "DX1 =", .dx1
  PRINT 0: "DX2 =", .dx2 
  PRINT 0: "DY1 =", .dy1
  PRINT 0: "DY2 =", .dy2
  PRINT 0: "AVEX =", (.dx1+.dx2)/2
  PRINT 0: "AVEY =", (.dy1+.dy2)/2
  ;
  BREAK
  POINT stz.frame = FRAME (.plb, .prb, .prt, .plt)
  POINT stz.frame = stz.frame + RZ (-90)
  ; CIR1 = 100, 100 CIR2 = 148, 250
  ; CIR3 = 248, 300 CIR4 = 148; 450
  BREAK
  LMOVE stz.frame + TRANS (hmi.x, hmi.y, 10)
.END
.PROGRAM a.test ()
  ;
  SIGNAL -rs13.det.put
  JMOVE #homep1
  CALL stock.in.take (1, 1)
  JMOVE #wait.pick
  CALL gripper.pick (1, 1)
  JMOVE #wait.pick
  FOR .i = 1 TO 50
    CALL stz.pick
    CALL stz.put(4)
  END
  LMOVE #wait.pick
  CALL gripper.put (1, 1)
  CALL stock.in.back (1, 1)
  ;
  JMOVE #homep1
.END
.PROGRAM a.test.pick()@25/10/29 15:55 #0
  IF FALSE THEN
    JMOVE #pick.in
  END
  SPEED 100 ALWAYS
  ACCURACY 0.1 ALWAYS
  TOOL tool.pick[hmi.tool.no]
;
  cx = hmi.x
  cy = hmi.y
  a = hmi.a
  .ysh = 0
  .xsh = 0
  IF a>=100 THEN
    .xsh = grip.180xsh[hmi.tool.no]
    .ysh = grip.180ysh[hmi.tool.no]
  END
  IF cx>center.x+1 THEN
    cx = cx-dist.xp*(cx-center.x)
  END
  IF cx<center.x-1 THEN
    cx = cx+dist.xn*(-cx+center.x)
  END
  IF cy>center.y+1 THEN
    cy = cy-dist.yp*(cy-center.y)
  END
  IF cy<center.y-1 THEN
    cy = cy+dist.yn*(-cy+center.y)
  END
  POINT .pick = stz.frame+TRANS(cx+grip.xsh[hmi.tool.no]+.xsh,cy+grip.ysh[hmi.tool.no]+.ysh,grip.zsh[hmi.tool.no])+RZ(a)
  DECOMPOSE .c[1] = #pick.in
  POINT .#pick.in = #PPOINT(.c[1],.c[2],.c[3],.c[4],.c[5],.c[6] - a)
;
  JMOVE #wait.pick
  LMOVE .#pick.in
;
  BREAK
  LAPPRO .pick,-30
  BREAK
  SPEED 30 MM/S
  LMOVE .pick
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  LAPPRO .pick,-30
;
  LMOVE .#pick.in
  LMOVE #wait.pick
  LMOVE #before.pos
.END
.PROGRAM autostart.pc()@25/10/10 14:59 #0
  ; System switches
  CP ON
  PREFETCH.SIGINS OFF
  QTOOL OFF
  REP_ONCE ON
  HOLD.STEP ON
  DISP.EXESTEP ON
  PROG.DATE ON
  autostart.pc ON
  errstart.pc ON  ;
  ;
  IFPWPRINT 8, 1, 1, 5, 10 = "Robot: RS013N S/N: C2392", "Controller: F60 S/N: C10632"," ", "Powered by Robowizard Co.Ltd."
  ;
  CALL set.io.pc
  CALL set.vars.pc
  CALL watchdog.pc
  ;
.END
.PROGRAM errstart.pc()
  IF ERROR == -34021 OR ERROR == -10100 THEN
    tcp.socket = -1
    MC ERESET
    TWAIT 1
    ;PCABORT 2:
    ;PCABORT 3:
    ;TWAIT 3
    ;PCEXECUTE 2: tcp.client.pc
    ;PCEXECUTE 3: sender.pc
    ;TWAIT 1
  END
  TWAIT 5
  errstart.pc ON
.END
.PROGRAM get.state.pc (.$state)
  .$state = "POWER:"
  IF SWITCH (POWER) THEN
    .$state = .$state + "TRUE;"
  ELSE
    .$state = .$state + "FALSE;"
  END
  ; MAX: 12
  ;
  .$state = .$state + "CS:"
  IF SWITCH (CS) THEN
    .$state = .$state + "TRUE;"
  ELSE
    .$state = .$state + "FALSE;"
  END
  ; MAX 9
  ;
  .$state = .$state + "TEACH:"
  IF SWITCH (REPEAT) THEN
    .$state = .$state + "FALSE;"
  ELSE
    .$state = .$state + "TRUE;"
  END
  ; MAX 12
  ;
  .$state = .$state + "TEACHL:"
  IF SWITCH (TEACH_LOCK) THEN
    .$state = .$state + "TRUE;"
  ELSE
    .$state = .$state + "FALSE;"
  END
  ; MAX 13
  ;
  .$state = .$state + "TPEMG:"
  IF SWITCH (TP_EMG) THEN
    .$state = .$state + "TRUE;"
  ELSE
    .$state = .$state + "FALSE;"
  END
  ; MAX 12
  ;
  .$state = .$state + "OPEMG:"
  IF SWITCH (OP_EMG) THEN
    .$state = .$state + "TRUE;"
  ELSE
    .$state = .$state + "FALSE;"
  END
  ; MAX 12
  ;
  .$state = .$state + "EXEMG:"
  IF SWITCH (EX_EMG) THEN
    .$state = .$state + "TRUE;"
  ELSE
    .$state = .$state + "FALSE;"
  END
  ; MAX 12
  ;
  .$state = .$state + "ERROR:"
  IF SWITCH (ERROR) THEN
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
  IF SIG (do.home1) THEN
    .$state = .$state + "TRUE;"
  ELSE
    .$state = .$state + "FALSE;"
  END
  ; MAX 12
  ;
  .$state = .$state + "BATALM:"
  IF SIG (do.bat.alm) THEN
    .$state = .$state + "TRUE;"
  ELSE
    .$state = .$state + "FALSE;"
  END
  ; MAX 12
  .$state = .$state + "\n"
.END
.PROGRAM gripper.pick (.pos,.tool.no)
  IF FALSE THEN
    .pos = hmi.t.pos
    .tool.no = hmi.tool.no
  END
  ;
  .$temp = "Pick tool" + $ENCODE(.pos) + " from" + $ENCODE (.tool.no)
  CALL log (.$temp)
  CALL log ("State: PickTool")
  $action = "PickTool"
  ;
  SPEED 100 ALWAYS
  ACCURACY 0 ALWAYS
  TOOL tool.pick[.tool.no]
  ;
  POINT .temp = #tool.pos[.pos]
  JMOVE .temp + TRANS (0, 0, 200)
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  ;
  SPEED 50 MM/S ALWAYS
  LMOVE #tool.pos[.pos]
  BREAK
  PULSE capture.grip
  TWAIT 0.5
  ;
  SPEED 100 ALWAYS
  LMOVE .temp + TRANS (0, 0, 200)
.END
.PROGRAM gripper.put(.pos,.tool.no)@25/10/27 15:57 #0
  IF FALSE THEN
    .pos = hmi.t.pos
    .tool.no = hmi.tool.no
  END
  ;
  .$temp = "Put tool" + $ENCODE (.pos) + " to" + $ENCODE (.tool.no)
  CALL log (.$temp)
  CALL log ("State: PutTool")
  $action = "PutTool"
  ;
  SPEED 100 ALWAYS
  ACCURACY 0 ALWAYS
  TOOL tool.pick[.tool.no]
  ;
  POINT .temp = #tool.pos[.pos]
  JMOVE .temp + TRANS (0, 0, 200)
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  ;
  SPEED 50 MM/S ALWAYS
  LMOVE #tool.pos[.pos]
  BREAK
  PULSE release.grip
  TWAIT 0.5
  ;
  SPEED 100 ALWAYS
  LMOVE .temp + TRANS (0, 0, 200)
.END
.PROGRAM id4 () ; 312.229.002_1
    ; Object ID (Use in stz.put)
    object.id = 4
    ; Working gripper
    gripper.type = 1
    ; Max objects in output tare
    max.tare.count = 99
    ;
.END
.PROGRAM log (.$msg)
  FOR .i = 0 TO 10
    $log.entry[.i] = $log.entry[.i + 1]
  END
  $log.entry[11] = $TIME + " " + .$msg
  ;
  IFPWPRINT 1, 1, 1, 9, 10 = $log.entry[0], $log.entry[1], $log.entry[2], $log.entry[3]
  IFPWPRINT 2, 1, 1, 9, 10 = $log.entry[4], $log.entry[5], $log.entry[6], $log.entry[7]
  IFPWPRINT 3, 1, 1, 9, 10 = $log.entry[8], $log.entry[9], $log.entry[10], $log.entry[11]
.END
.PROGRAM pg.start ()
  $command = ""
  CALL process.data (.state)
  IF NOT .state THEN
    CALL log ("Wrong program name. State: WrongProgramName")
    $action = "WrongProgramName"
    TWAIT 5
    RETURN
  END
  ; Change gripper if required
  IF current.gripper <> gripper.type THEN
    CALL log ("Required gripper change")
    JMOVE #wait.pick
    IF current.gripper <> 0 THEN
      CALL gripper.put (current.gripper, current.gripper)
    END
    CALL gripper.pick (gripper.type, gripper.type)
    current.gripper = gripper.type
  END
  current.intare = 1
  current.outtare = 1
  tare.counter = 0
  full.counter = 0
  ; First tare pick
  CALL stock.out.take (outtare.i[1], outtare.j[1])
  JMOVE #homep1
  CALL stock.in.take (intare.i[1], intare.j[1])
  JMOVE #homep1
  JMOVE #wait.pick
  ;
  .keep.pick = TRUE
  $action = "WaitForPick"
  CALL log ("Wait for new pick. State: WaitForPick")
  WHILE .keep.pick DO
    ;
    IF SIG (rs7.tare.chg) THEN
      PULSE rs13.tare.ack, 10
      JMOVE #homep1
      CALL stock.out.back (outtare.i[current.outtare], outtare.j[current.outtare])
      current.outtare = current.outtare + 1
      CALL stock.out.take (outtare.i[current.outtare], outtare.j[current.outtare])
      JMOVE #homep1
      JMOVE #wait.pick
      $action = "WaitForPick"
      CALL log ("Wait for new pick. State: WaitForPick")
    END
    ;
    IF $cycle.command == "PICK" AND NOT SIG (rs7.tare.chg) THEN
      $cycle.command = ""
      JMOVE #wait.pick
      CALL stz.pick
      CALL stz.put (object.id)
      tare.counter = tare.counter + 1
      full.counter = full.counter + 1
      $action = "WaitForPick"
      CALL log ("Wait for new pick. State: WaitForPick")
    END
    ;
    IF $cycle.command == "NOPICK" THEN
      $cycle.command = ""
      IF current.intare <> intare.count THEN
        CALL stock.in.back (intare.i[current.intare], intare.j[current.intare])
        JMOVE #homep1
        current.intare = current.intare + 1
        CALL stock.in.take (intare.i[current.intare], intare.j[current.intare])
      ELSE
        .keep.pick = FALSE
      END
      $action = "WaitForPick"
      CALL log ("Wait for new pick. State: WaitForPick")
    END
  END
  ; Last tare put
  JMOVE #wait.pick
  CALL stock.in.back (intare.i[outtare.count], intare.j[outtare.count])
  JMOVE #homep1
  CALL stock.out.back (outtare.i[intare.count], outtare.j[intare.count])
  ;
  JMOVE #homep1
  
.END
.PROGRAM process.data (.state)
  ;
  intare.count = 1
  outtare.count = 1
  ;
  .break = FALSE
  WHILE NOT .break DO
    ;TYPE 0: "intares", $intare.ids
    IF INSTR ($intare.ids, ",")
      .id = VAL ($DECODE ($intare.ids, ",", 0))
      CALL s.in.table (.id, intare.i[intare.count], intare.j[intare.count])
      ; TYPE 0: "idx", intare.i[intare.count], intare.j[intare.count]
      .$temp = $DECODE ($intare.ids, ",", 1)
      intare.count = intare.count + 1
     
    ELSE
      .id = VAL ($intare.ids)
      CALL s.in.table (.id, intare.i[intare.count], intare.j[intare.count])
      ;TYPE 0: "idx", intare.i[intare.count], intare.j[intare.count]
      .break = TRUE
    END
  END
  ;
  .break = FALSE
  WHILE NOT .break DO
    ;TYPE 0: "intares", $intare.ids
    IF INSTR ($outtare.ids, ",")
      .id =  VAL ($DECODE ($outtare.ids, ",", 0))
      CALL s.out.table (.id, outtare.i[outtare.count], outtare.j[outtare.count])
      ;TYPE 0: "idx", intare.i[intare.count], intare.j[intare.count]
      .$temp = $DECODE ($outtare.ids, ",", 1)
      outtare.count = outtare.count + 1
    ELSE
      .id = VAL ($outtare.ids)
      CALL s.out.table (.id, outtare.i[outtare.count], outtare.j[outtare.count]) 
 ;TYPE 0: "idx", intare.i[intare.count], intare.j[intare.count]     
      .break = TRUE
    END
  END
  ;
  ;
  SCASE $detail.type OF
    SVALUE "312.229.002_1":
      CALL id4
      .state = TRUE
      RETURN
  END
ANY:
  .state = FALSE
  RETURN
  
.END
.PROGRAM s.in.table (.no,.i,.j)
  .j = INT((.no-1)/3) + 1
  .i = INT((.no-1) MOD 3) + 1
.END
.PROGRAM s.out.table (.no,.i,.j)
  .j = INT((.no-1)/4) + 1
  .i = INT((.no-1) MOD 4) + 1
.END
.PROGRAM safe.home ()
  ; IMPLEMENT SAFE RETURN TO HOME POSITION
  CALL log("Moving to home position. State: MoveToHome")
  $action = "MoveToHome"
  SPEED 250 MM/S ALWAYS 
  ACCURACY 10 ALWAYS
  JMOVE #homep1
.END
.PROGRAM sender.pc ()
  ;
  ; 0 - FALSE
  ; 1 - TRUE
  ;
  ; POWER;REPEAT;CS;ERROR;ERRORCODE;TEACH_LOCK;TP_EMG;OP_EMG;EX_EMG;
  ;
  WHILE TRUE DO
;
    CALL get.state.pc(.$data[1])
    .$data[2] = "action:" + $action + "\n"
    ;
    CALL tcp.send3.pc (.$data[], 2)
    TWAIT 0.250
  END
.END
.PROGRAM set.io.pc ()
  ; Gripper IO
  release.tare = 1
  capture.tare = 2
  ;
  release.grip = 5
  capture.grip = 6
  ;
  grip.unclamped = 1001
  grip.clamped = 1002
  grip.unclamp = 3
  grip.clamp = 4
  ;
  ; Dedicated IO
  do.home1 = 17 ; EIP
  do.work[1] = 18 ; EIP
  do.bat.alm = 2010
  ;
  rs13.det.put = 19; EIP
  rs7.det.picked = 1019; EIP
  ;
  rs7.home1 = 1017 ; EIP
  rs7.work[1] = 1018 ; EIP
  rs13.tare.ack = 20
  rs7.tare.chg = 1020
  di.ifp.page[1] = 2001
  di.ifp.page[2] = 2002
  di.ifp.page[3] = 2003
  di.ifp.page[4] = 2004
  di.ifp.page[5] = 2005
  di.ifp.page[6] = 2006
  di.ifp.page[7] = 2007
  di.ifp.page[8] = 2008
  ;
  ;Internal signals
  s.tcp.send.ena = 2011
  s.tcp.recv.ena = 2012
  s.tcp.ena = 2013
  s.apply.coord = 2014
  s.close.pneumo = 2015
  s.open.pneumo = 2016
  s.in1.disable = 2017
  s.in2.disable = 2018
  ;
  s.sensor.iss = 2019
  s.sensor.oss = 2020
  s.sensor.ot = 2021
  ;
  s.pneumo.open = 2022
  s.pneumo.close = 2023
  ;
  s.debug = 2024
.END
.PROGRAM set.vars.pc ()
  ;
  IF NOT EXISTREAL("grip.xsh[8]")  THEN
    FOR .i = 1 TO 9
      grip.xsh[.i] = 0
      grip.ysh[.i] = 0
      grip.zsh[.i] = 0
      grip.180xsh[.i] = 0
      grip.180ysh[.i] = 0
      ;
      keep.tool.no = -1
    END
    FOR .i = 0 TO 12
      $log.entry[.i] = " "
    END
  END
  ;
  IF NOT EXISTREAL("current.gripper")
    current.gripper = 0
  END
  ; Variables init
  ;
  ;tcp.socket = 0
  tcp.connect.tmo = 5
  tcp.receive.tmo = 5
  tcp.send.tmo = 5
  ;
  tyterm = 0
  ;
  $command = ""
  $cycle.command = ""

.END
.PROGRAM stock.in.back (.i,.j)
  IF FALSE THEN
    .i = hmi.st.in.i
    .j = hmi.st.in.j
  END
  .$temp = "Return pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") to input stocker."
  CALL log (.$temp)
  CALL log ("State: ReturnToInStocker")
  $action = "ReturnToInStocker"
  ;
  TOOL tool.pin
  ;
  POINT .post.tare.in = #post.tare.in
  DECOMPOSE .ct1[1] = .post.tare.in
  DECOMPOSE .ct2[1] = stocker.in[.i, .j]
  POINT .mid.point = TRANS (.ct2[1], .ct1[2], .ct2[3], .ct1[4], .ct1[5], .ct1[6])
  POINT .put.stz = #put.stz
  ;
  ACCURACY 20 ALWAYS
  SPEED 100 ALWAYS
  ;JMOVE #before.stz
  ACCURACY 5
  LMOVE .put.stz + TRANS (, , 50)
  ;
  ;
  CALL log ("Wait stz pneumatic open. State: WaitPneumaticOpen")
  $action = "WaitPneumaticOpen"
  SWAIT s.pneumo.open
  TWAIT 0.5
  SIGNAL -s.pneumo.open
  ;
  .$temp = "Return pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") to input stocker."
  CALL log (.$temp)
  CALL log ("State: ReturnToInStocker")
  $action = "ReturnToInStocker"
  ;
  ACCURACY 0
  SPEED 50 MM/S
  LMOVE #put.stz
  BREAK
  PULSE capture.tare
  TWAIT 0.5
  ;
  ACCURACY 0
  SPEED 20
  LMOVE .put.stz + TRANS (50)
  ;
  SPEED 80 ALWAYS
  ACCURACY 5
  LMOVE #before.stz
  LMOVE #post.tare.in
  LMOVE stocker.in[.i, .j] + TRANS (20, 0, 500)
  ;
  ACCURACY 0
  SPEED 20
  LMOVE stocker.in[.i, .j] + TRANS (20)
  BREAK
  ;
  ACCURACY 0
  SPEED 10
  LMOVE stocker.in[.i, .j]
  BREAK
  PULSE release.tare
  TWAIT 0.5
  ;
  LMOVE stocker.in[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.in[.i, .j] + TRANS (0, 0, 200)
.END
.PROGRAM stock.in.take (.i,.j)
  IF FALSE THEN
    .i = hmi.st.in.i
    .j = hmi.st.in.j
  END
  .$temp = "Take pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") from input stocker."
  CALL log (.$temp)
  CALL log ("State: TakingFromInStocker")
  $action = "TakingFromInStocker"
  ;
  TOOL tool.pin
  ;
  POINT .post.tare.in = #post.tare.in
  DECOMPOSE .ct1[1] = .post.tare.in
  DECOMPOSE .ct2[1] = stocker.in[.i, .j]
  POINT .mid.point = TRANS (.ct2[1], .ct1[2], .ct2[3], .ct1[4], .ct1[5], .ct1[6])
  POINT .put.stz = #put.stz
  ;
  ACCURACY 20 ALWAYS
  SPEED 100 ALWAYS
  JMOVE stocker.in[.i, .j] + TRANS (0, 0, 200)
  ACCURACY 5
  JMOVE stocker.in[.i, .j] + TRANS (0, 0, 50)
  ;
  ACCURACY 0
  SPEED 50 MM/S
  LMOVE stocker.in[.i, .j]
  BREAK
  PULSE capture.tare
  TWAIT 0.5
  ;
  ACCURACY 0
  SPEED 20
  LMOVE stocker.in[.i, .j] + TRANS (20)
  ;
  SPEED 20
  ACCURACY 0
  LMOVE stocker.in[.i, .j] + TRANS (20, 0, 40)
  BREAK
  CALL log ("Wait sensor state. State: WaitInStockerSensor")
  $action = "WaitInStockerSensor"
  SWAIT s.sensor.iss
  SIGNAL -s.sensor.iss
  .$temp = "Take pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") from input stocker."
  CALL log (.$temp)
  CALL log ("State: TakingFromInStocker")
  $action = "TakingFromInStocker"
  ;
  SPEED 80 ALWAYS
  ACCURACY 5
  LMOVE stocker.in[.i, .j] + TRANS (20, 0, 500)
  ACCURACY 5
  LMOVE .mid.point
  ACCURACY 5
  LMOVE #post.tare.in
  ; Put to stz
  LMOVE #before.stz
  ACCURACY 1
  LMOVE .put.stz + TRANS (50)
  BREAK
  ACCURACY 0
  SPEED 50 MM/S
  LMOVE #put.stz
  BREAK
  PULSE release.tare
  TWAIT 0.5
  ; Go back
  SPEED 50 MM/S
  LMOVE .put.stz + TRANS (, , 50)
  BREAK
  ;
  CALL log ("Wait stz pneumatic close. State: WaitPneumaticClose")
  $action = "WaitPneumaticClose"
  SWAIT s.pneumo.close
  TWAIT 0.5
  SIGNAL -s.pneumo.close
  ;
  LMOVE #before.stz
  ;
  LMOVE #wait.pick
  ;
.END
.PROGRAM stock.out.back (.i,.j)
  IF FALSE THEN
    .i = hmi.st.out.i
    .j = hmi.st.out.j
  END
  .$temp = "Return pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") to output stocker."
  CALL log (.$temp)
  CALL log ("State: ReturnToOutStocker")
  $action = "ReturnToOutStocker"
  ;
  TOOL tool.pin
  ;
  POINT .post.tare.out = #post.tare.out
  DECOMPOSE .ct1[1] = .post.tare.out
  DECOMPOSE .ct2[1] = stocker.out[.i, .j]
  POINT .mid.point = TRANS (.ct2[1], .ct1[2], .ct2[3], .ct1[4], .ct1[5], .ct1[6])
  POINT .put.outpal = #put.outpal
  ;
  ACCURACY 20 ALWAYS
  SPEED 100 ALWAYS
  JMOVE #before.outpal
  ACCURACY 5
  LMOVE .put.outpal + TRANS (, , 50)
  ;
  ACCURACY 0
  SPEED 50 MM/S
  LMOVE #put.outpal
  BREAK
  PULSE capture.tare
  TWAIT 0.5
  ;
  ACCURACY 0
  SPEED 20
  LMOVE .put.outpal + TRANS (50)
  ;
  SPEED 80 ALWAYS
  ACCURACY 5
  LMOVE #before.outpal
  LMOVE #post.tare.out
  LMOVE stocker.out[.i, .j] + TRANS (20, 0, 500)
  ;
  ACCURACY 0
  SPEED 20
  LMOVE stocker.out[.i, .j] + TRANS (20)
  BREAK
  ;
  ACCURACY 0
  SPEED 10
  LMOVE stocker.out[.i, .j]
  BREAK
  PULSE release.tare
  TWAIT 0.5
  ;
  LMOVE stocker.out[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.out[.i, .j] + TRANS (0, 0, 200)
  
.END
.PROGRAM stock.out.take (.i,.j)
  IF FALSE THEN
    .i = hmi.st.out.i
    .j = hmi.st.out.j
  END
  .$temp = "Take pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") from output stocker."
  CALL log (.$temp)
  CALL log ("State: TakingFromOutStocker")
  $action = "TakingFromOutStocker"
  ;
  TOOL tool.pin
  ;
  POINT .post.tare.out = #post.tare.out
  DECOMPOSE .ct1[1] = .post.tare.out
  DECOMPOSE .ct2[1] = stocker.out[.i, .j]
  POINT .mid.point = TRANS (.ct1[1], .ct2[2], .ct2[3], .ct1[4], .ct1[5], .ct1[6])
  POINT .put.outpal = #put.outpal
  ;
  ACCURACY 20 ALWAYS
  SPEED 100 ALWAYS
  JMOVE stocker.out[.i, .j] + TRANS (0, 0, 200)
  ACCURACY 5
  JMOVE stocker.out[.i, .j] + TRANS (0, 0, 50)
  ;
  ACCURACY 0
  SPEED 50 MM/S
  LMOVE stocker.out[.i, .j]
  BREAK
  TWAIT 0.5;
  ;
  ACCURACY 0
  SPEED 20
  LMOVE stocker.out[.i, .j] + TRANS (20)
  ;
  SPEED 20
  ACCURACY 0
  LMOVE stocker.out[.i, .j] + TRANS (20, 0, 40)
  BREAK
  CALL log ("Wait sensor state. State: WaitOutStockerSensor")
  $action = "WaitOutStockerSensor"
  SWAIT s.sensor.oss
  SIGNAL -s.sensor.oss
  .$temp = "Take pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") from output stocker."
  CALL log (.$temp)
  CALL log ("State: TakingFromOutStocker")
  $action = "TakingFromOutStocker"
  ;
  SPEED 80 ALWAYS
  ACCURACY 5
  LMOVE stocker.out[.i, .j] + TRANS (20, 0, 500)
  ACCURACY 5
  LMOVE .mid.point
  ACCURACY 5
  LMOVE #post.tare.out
  ; Put to output pallet
  LMOVE #before.outpal
  ACCURACY 1
  LMOVE .put.outpal + TRANS (50)
  ACCURACY 0
  SPEED 50 MM/S
  LMOVE #put.outpal
  BREAK
  PULSE release.tare
  TWAIT 0.5
  ; Go back
  SPEED 50 MM/S
  LMOVE .put.outpal + TRANS (50)
  BREAK
  LMOVE #before.outpal
  LMOVE #post.tare.out
  ;
  ;LMOVE #homep1
.END
.PROGRAM stz.pick()@25/10/27 15:45 #1
  ;
  .$temp = "Pick detail from stz (" + $ENCODE (/L, hmi.x) + ", " + $ENCODE(/L, hmi.y) + ", " + $ENCODE(/L, hmi.a) + ")"
  CALL log (.$temp)
  CALL log ("State: PickDetail")
  $action = "PickDetail"
  ;
  SPEED 100 ALWAYS
  ACCURACY 0.1 ALWAYS
  TOOL tool.pick[current.gripper]
  ;
  cx = hmi.x
  cy = hmi.y
  a = hmi.a
  .ysh = 0
  .xsh = 0
  IF a == 180 THEN
    .xsh = grip.180xsh[current.gripper]
    .ysh = grip.180ysh[current.gripper]
  END
  IF hmi.x > center.x + 40 THEN
    cx = hmi.x - dist.xp * (hmi.x - center.x)
  END
  IF hmi.x < center.x - 40 THEN
    cx = hmi.x + dist.xn * (-hmi.x + center.x)
  END
  IF hmi.y > center.y + 20 THEN
    cy = hmi.y - dist.yp * (hmi.y - center.y)
  END
  IF hmi.y < center.y - 20 THEN
    cy = hmi.y + dist.yn * (-hmi.y + center.y)
  END
  POINT .pick = stz.frame + TRANS (cx + hmi.gx + .xsh, cy + hmi.gy + .ysh, hmi.gz) + RZ (a)
  DECOMPOSE .c[1] = #pick.in
  POINT .#pick.in = #PPOINT (.c[1], .c[2], .c[3], .c[4], .c[5], .c[6] - a)
  ;
  JMOVE #wait.pick
  LMOVE .#pick.in
  IF NOT SIG (grip.unclamped) THEN
    PULSE grip.unclamp
    CALL log ("Wait for unclamp gripper. State: WaitingGripUnclamped")
    $action = "WaitingGripUnclamped"
    WAIT SIG(grip.unclamped) OR SIG(s.in1.disable)
  END
  BREAK
  ;
  BREAK
  LAPPRO .pick, -30
  BREAK
  SPEED 30 MM/S
  LMOVE .pick
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  LAPPRO .pick, -30
  ;
  LMOVE .#pick.in
  LMOVE #wait.pick
  LMOVE #before.pos
.END
.PROGRAM stz.put (.pos)
  ;
  CALL log ("Waiting for free positioner. State: WaitPosFree")
  $action = "WaitPosFree"
  SWAIT -rs13.det.put
  ;
  .$temp = "Put detail to positioner" + $ENCODE (.pos)
  CALL log (.$temp)
  CALL log ("State: PutToPositioner")
  $action = "PutToPositioner"
  ;
  SPEED 100 ALWAYS
  ACCURACY 0 ALWAYS
  TOOL tool.pick[current.gripper]
  ;
  POINT .temp = #pos.pos[.pos]
  JMOVE .temp + TRANS (10, 0, 50)
  LMOVE .temp + TRANS (10, 0, 20)
  BREAK
  ;
  SPEED 20 MM/S
  LMOVE #pos.pos[.pos]
  BREAK
  PULSE grip.unclamp
  TWAIT 0.5
  ;
  LMOVE .temp + TRANS (0, 0, 200)
  SIGNAL rs13.det.put
  LMOVE #before.pos
  LMOVE #wait.pick
.END
.PROGRAM tcp.callback.pc (.$data[],.data.length)
  .$temp = "Received "+ $ENCODE (.data.length) + " strings:"
  PRINT tcp.recv.ena: .$temp
  FOR .i = 1 TO .data.length
    PRINT tcp.recv.ena: .$data[.i]
  END
  ;
  ; String format:
  ; START;DETAILNAME;DETAILCOUNT;[INTAREID1,INTAREID2,..];[OTAREID1,INTAREID2,..];
  IF INSTR (.$data[1], "START") THEN
    ; Decode command
    .$temp = $DECODE (.$data[1], ";", 0)
    .$temp = $DECODE (.$data[1], ";", 1)
    ; Decode detail type
    $detail.type = $DECODE (.$data[1], ";", 0)
    .$temp = $DECODE (.$data[1], ";", 1)
    ; Decode detail count
    detail.count = VAL ($DECODE (.$data[1], ";", 0))
    .$temp = $DECODE (.$data[1], ";", 1)
    ; Decode intare ids
    $intare.ids = $DECODE (.$data[1], ";", 0)
    ; Decode outtare ids
    .$temp = $DECODE (.$data[1], ";", 1)
    $outtare.ids = $DECODE (.$data[1], ";", 0)
    $command = "START"
  END
  ;
  ; String format:
  ; SENSOR;SENSORNAME;STATE;
  IF INSTR (.$data[1], "SENSOR") THEN
    ; Decode command
    .$temp = $DECODE (.$data[1], ";", 0)
    .$temp = $DECODE (.$data[1], ";", 1)
    ; Decode sensor name
    .$sensor.name = $DECODE (.$data[1], ";", 0)
    .$temp = $DECODE (.$data[1], ";", 1)
    ; Decode sensor state
    ;TYPE 0: .$data[1]
    .$sensor.state = $DECODE (.$data[1], ";", 0)
    ;
    IF INSTR (.$sensor.state, "TRUE") THEN
      ;TYPE 0: .$sensor.name, .$sensor.state
      IF .$sensor.name == "STOCKERINTARESENSOR" THEN
        PULSE s.sensor.iss, 5
      END
      ;
      IF .$sensor.name == "STOCKEROUTTARESENSOR" THEN
        PULSE s.sensor.oss, 5
      END
      ;
      IF .$sensor.name == "OUTPALLETSENSOR" THEN
        PULSE s.sensor.ot, 5
      END
    END
  END
  ;
  ; String format:
  ; MEASUREMENT;STATE;
  ;IF INSTR (.$data[1], "MEASUREMENT") THEN
  ;  ; Decode command
  ;  .$temp = $DECODE (.$data[1], ";", 0)
  ;  .$temp = $DECODE (.$data[1], ";", 1)
  ;  ; Decode measurement result
  ;  .sensor.state = $DECODE (.$data[1], ";", 0)
  ;END
  ;
  ; String format:
  ; PAUSE;
  ;
  IF INSTR (.$data[1], "NOPICK") THEN
    $cycle.command = "NOPICK"
  END
  ;
  IF INSTR (.$data[1], "PAUSE") THEN
    PULSE 2222
  END
  ;
  ; String format:
  ; RESUME;
  IF INSTR (.$data[1], "RESUME") THEN
    PULSE 2222
  END
  ; PNEUMOOPEN;
  IF INSTR (.$data[1], "PNEUMOOPEN") THEN
    PULSE s.pneumo.open, 5
  END
  ;
  ; PNEUMOCLOSE;
  IF INSTR (.$data[1], "PNEUMOCLOSE") THEN
    PULSE s.pneumo.close, 5
  END
  ;
  ;
  IF INSTR (.$data[1], "PICK") AND NOT INSTR (.$data[1], "NO") THEN
    .$temp = $DECODE (.$data[1], ";", 0)
    .$temp = $DECODE (.$data[1], ";", 1)
    .$x = $DECODE (.$data[1], ",", 0)
    .$temp = $DECODE (.$data[1], ",", 1)
    .$y = $DECODE (.$data[1], ",", 0)
    .$temp = $DECODE (.$data[1], ",", 1)
    .$a = .$data[1]
    hmi.y = VAL (.$x) / 10
    hmi.x = VAL (.$y) / 10
    hmi.a = VAL (.$a)
    $cycle.command = "PICK"
  END
  .$data[1] = ""
.END
.PROGRAM tcp.client.pc ()
  .tcp.retry.count = 10
  WHILE TRUE DO
    ; Checking for active sockets and closing them
    PRINT tcp.ena: "Checking for active sockets and closing them"
    TCP_STATUS .number, .ports[0], .sockets[0], .errors[0], .suberrors[0], .$ips[0]
    IF .number > 0 THEN
      FOR .i = 0 TO .number - 1
        IF .sockets[.i] <> 0 THEN
          .$temp =  "Closing socket with id: " + $ENCODE(.sockets[.i])
          PRINT tcp.ena: .$temp
          TCP_CLOSE .status, .sockets[.i]
        END
      END
    END
    ; Get IP from string
    .$tcp.ip.copy = $tcp.ip
    FOR .i = 1 TO 4
      .$ip = $DECODE (.$tcp.ip.copy, ".")
      ip[.i] = VAL (.$ip)
      IF .i < 4 THEN
        .$ip = $DECODE (.$tcp.ip.copy, ".", 1)
      END
    END
    ;
    ; Connect to server
    .$temp = "Connecting to server with ip: " + $tcp.ip
    PRINT tcp.ena: .$temp
    TCP_CONNECT tcp.socket, tcp.port, ip[1], tcp.connect.tmo
    ;
    ; Start data processing cycle
    IF tcp.socket >= 0 THEN
      .$temp =  "Connection established with socket id:"+ $ENCODE(tcp.socket)
      PRINT tcp.ena: .$temp
      .connected = TRUE
      ; Start receiving data cycle
      .tcp.error.cnt = 0
      WHILE .connected AND .tcp.error.cnt <= .tcp.retry.count DO
        TCP_RECV .status, tcp.socket, .$tcp.request[1], .request.size, tcp.receive.tmo, 255
        IF .status >= 0 THEN
          IF .request.size == 0 THEN
            .tcp.error.cnt = .tcp.error.cnt + 1
            .$temp =  "Received data with 0 length. Error count:"+ $ENCODE(.tcp.error.cnt)
            PRINT tcp.ena: .$temp
          ELSE
            CALL tcp.callback.pc (.$tcp.request[], .request.size)
          END
        ELSE
          IF .status == -34024 THEN
            PRINT tcp.ena: "Timeout in receive, it's ok"
          ELSE
            .tcp.error.cnt = .tcp.error.cnt + 1
            .$temp =  "Failed to receive data with error:"+ $ENCODE(.status) + ". Error count:" + $ENCODE(.tcp.error.cnt)
            PRINT tcp.ena: .$temp
          END
        END
      END
    ELSE
      .$temp =  "Connection failed with error:"+ $ENCODE(tcp.socket)
      PRINT tcp.ena: .$temp
      IF tcp.socket > 0 THEN
        TCP_CLOSE .status, tcp.socket
      END
    END
  END
.END
.PROGRAM tcp.send2.pc (.$data[],.data.length)
  IF tcp.socket > 0 THEN
    TCP_SEND .status, tcp.socket, .$data[1], .data.length, tcp.send.tmo
    IF .status >= 0 THEN
      .$temp = "Sent "+ $ENCODE(.data.length) + " strings"
      PRINT tcp.send.ena: .$temp
      FOR .i = 1 TO .data.length
        PRINT tcp.send.ena: .$data[.i]
      END
    ELSE
      .$temp = "Failed to send data with error:"+ $ENCODE(.status)
      PRINT tcp.send.ena: .$temp
      tcp.socket = -1
    END
  ELSE
    PRINT tcp.send.ena: "Failed to send data. Socket is not opened. Waiting for 5 seconds"
    TWAIT 5
  END
  ;
.END
.PROGRAM tcp.send3.pc (.$data[],.data.length)
  IF tcp.socket > 0 THEN
    TCP_SEND .status, tcp.socket, .$data[1], .data.length, tcp.send.tmo
    IF .status >= 0 THEN
      .$temp = "Sent "+ $ENCODE(.data.length) + " strings"
      PRINT tcp.send.ena: .$temp
      FOR .i = 1 TO .data.length
        PRINT tcp.send.ena: .$data[.i]
      END
    ELSE
      .$temp = "Failed to send data with error:"+ $ENCODE(.status)
      PRINT tcp.send.ena: .$temp
      tcp.socket = -1
    END
  ELSE
    PRINT tcp.send.ena: "Failed to send data. Socket is not opened. Waiting for 5 seconds"
    TWAIT 5
  END
  ;
.END
.PROGRAM watchdog.pc ()
  WHILE TRUE DO
    IF SIG (s.tcp.ena) THEN
      tcp.ena = tyterm
    ELSE
      tcp.ena = -1
    END
    ;
    IF SIG (s.tcp.send.ena) THEN
      tcp.send.ena = tyterm
    ELSE
      tcp.send.ena = -1
    END
    ;
    IF SIG (s.tcp.recv.ena) THEN
      tcp.recv.ena = tyterm
    ELSE
      tcp.recv.ena = -1
    END
    ; HMI PANEL GRIPPER TEACH DATA
    IF keep.tool.no <> hmi.tool.no THEN
      hmi.gx = grip.xsh[hmi.tool.no]
      hmi.gy = grip.ysh[hmi.tool.no]
      hmi.gz = grip.zsh[hmi.tool.no]
      hmi.g180x = grip.180xsh[hmi.tool.no]
      hmi.g180y = grip.180ysh[hmi.tool.no]
      keep.tool.no = hmi.tool.no
    END
    IF SIG(s.apply.coord) THEN
      grip.xsh[hmi.tool.no] = hmi.gx
      grip.ysh[hmi.tool.no] = hmi.gy
      grip.zsh[hmi.tool.no] = hmi.gz
      grip.180xsh[hmi.tool.no] = hmi.g180x
      grip.180ysh[hmi.tool.no] = hmi.g180y
      
    END
    ;
    IF SIG(rs7.det.picked) THEN
      SIGNAL -rs13.det.put
    END
    ;
    IF SIG(s.open.pneumo) AND NOT SWITCH(CS) THEN
      $action="WaitPneumaticOpen"
    END
    ;
    IF SIG(s.close.pneumo) AND NOT SWITCH(CS)  THEN
      $action="WaitPneumaticClose"
      TWAIT 1
      $action="None"
    END
    ;
    IF TASK (1002) <> 1 THEN
      PCEXECUTE 2: tcp.client.pc
      TWAIT 2
    END
    IF TASK (1003) <> 1 THEN
      PCEXECUTE 3: sender.pc
      TWAIT 2
    END
    ;
    IF NOT SIG(s.debug) THEN
      IF SWITCH(REPEAT) AND NOT SWITCH(TEACH_LOCK) AND NOT SWITCH(EMERGENCY) AND NOT SWITCH(CS) THEN
        MC ZPOWER ON 
        WAIT SWITCH(POWER)
        ;
        MC CONTINUE
      END
    END
    ;
    TWAIT 0.01
  END
.END
.PROGRAM Comment___ () ; Comments for IDE. Do not use.
	; @@@ PROJECT @@@
	; @@@ PROJECTNAME @@@
	; ALKU_RS013N
	; @@@ HISTORY @@@
	; @@@ INSPECTION @@@
	; $detail.type
	; $intare.ids
	; $outtare.ids
	; $command
	; current.gripper
	; $cycle.command
	; intare.i[1]
	; intare.j[1]
	; current.outtare
	; s.pneumo.open
	; @@@ CONNECTION @@@
	; KROSET R01
	; 127.0.0.1
	; 9105
	; @@@ PROGRAM @@@
	;   Group:Utils:1
	;     1:a.home:F
	;     1:a.align:F
	;     1:a.test:F
	;       .i 
	;     1:log:F
	;       .$msg 
	;       .i 
	;     1:safe.home:F
	;   Group:Main:2
	;     2:a.main:F
	;     2:pg.start:F
	;       .state 
	;       .keep.pick 
	;     2:process.data:F
	;       .state 
	;       .break 
	;       .id 
	;       .$temp 
	;     2:s.in.table:F
	;       .no 
	;       .i 
	;       .j 
	;     2:s.out.table:F
	;       .no 
	;       .i 
	;       .j 
	;   Group:Objects:3
	;     3:id4:F
	;   Group:Teach:4
	;     4:a.teach.stz:F
	;       .plb 
	;       .plt 
	;       .prt 
	;       .prb 
	;       .dx1 
	;       .dx2 
	;       .dy1 
	;       .dy2 
	;     4:a.tch.stock.in:F
	;       .i 
	;       .j 
	;     4:a.tch.stock.out:F
	;       .i 
	;       .j 
	;     4:a.teach.pos:F
	;       .temp 
	;     4:a.teach.gripper:F
	;       .temp 
	;     4:a.test.pick:F
	;       .ysh 
	;       .xsh 
	;       .pick 
	;       .c 
	;       .#pick.in 
	;   Group:STZ:5
	;     5:stz.pick:F
	;       .$temp 
	;       .ysh 
	;       .xsh 
	;       .pick 
	;       .c 
	;       .#pick.in 
	;     5:stz.put:F
	;       .pos 
	;       .$temp 
	;       .temp 
	;   Group:ToolChange:6
	;     6:gripper.pick:F
	;       .pos 
	;       .tool.no 
	;       .$temp 
	;       .temp 
	;     6:gripper.put:F
	;       .pos 
	;       .tool.no 
	;       .$temp 
	;       .temp 
	;   Group:Stockers:7
	;     7:stock.in.take:F
	;       .i 
	;       .j 
	;       .$temp 
	;       .post.tare.in 
	;       .ct1 
	;       .ct2 
	;       .mid.point 
	;       .put.stz 
	;     7:stock.in.back:F
	;       .i 
	;       .j 
	;       .$temp 
	;       .post.tare.in 
	;       .ct1 
	;       .ct2 
	;       .mid.point 
	;       .put.stz 
	;     7:stock.out.take:F
	;       .i 
	;       .j 
	;       .$temp 
	;       .post.tare.out 
	;       .ct1 
	;       .ct2 
	;       .mid.point 
	;       .put.outpal 
	;     7:stock.out.back:F
	;       .i 
	;       .j 
	;       .$temp 
	;       .post.tare.out 
	;       .ct1 
	;       .ct2 
	;       .mid.point 
	;       .put.outpal 
	;   Group:Autostart:8
	;     8:watchdog.pc:B
	;     8:set.vars.pc:B
	;       .i 
	;     8:set.io.pc:B
	;       .home1 
	;       .work 
	;     8:autostart.pc:B
	;   Group:TCPIP:9
	;     9:get.state.pc:B
	;       .$state 
	;     9:sender.pc:B
	;       .$data 
	;       .pc 
	;     9:tcp.send2.pc:B
	;       .$data 
	;       .data.length 
	;       .status 
	;       .$temp 
	;       .i 
	;       .$data[] 
	;     9:tcp.callback.pc:B
	;       .$data 
	;       .data.length 
	;       .$temp 
	;       .i 
	;       .$sensor.name 
	;       .$sensor.state 
	;       .$x 
	;       .$y 
	;       .$a 
	;       .pc 
	;     9:tcp.client.pc:B
	;       .tcp.retry.count 
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
	;       .connected 
	;       .tcp.error.cnt 
	;       .$tcp.request 
	;       .request.size 
	;     9:tcp.send3.pc:B
	;       .$data 
	;       .data.length 
	;       .status 
	;       .$temp 
	;       .i 
	;       .tcp.error.cnt 
	;       .$data[] 
	;   0:errstart.pc:B
	; @@@ TRANS @@@
	; stocker.in[] 
	; stocker.out[] 
	; @@@ JOINTS @@@
	; #before.stz 
	; #put.stz 
	; #wait.pick 
	; #post.tare.in 
	; #put.outpal 
	; #before.outpal 
	; #post.tare.out 
	; #homep1 
	; #plb 
	; #plt 
	; #prb 
	; #prt 
	; #tool.pos[] 
	; #before.pos 
	; #pick.in 
	; #pos.pos[] 
	; @@@ REALS @@@
	; hmi.st.in.i 
	; hmi.st.in.j 
	; hmi.st.out.i 
	; hmi.st.out.j 
	; hmi.gx 
	; hmi.gy 
	; hmi.x 
	; hmi.y 
	; ip[] 
	; tcp.connect.tmo 
	; tcp.port 
	; tcp.receive.tmo 
	; tcp.send.tmo 
	; tcp.socket 
	; tyterm 
	; hmi.t.pos 
	; hmi.tool.no 
	; center.x 
	; center.y 
	; cx 
	; cy 
	; dist.xn 
	; dist.xp 
	; dist.yn 
	; dist.yp 
	; hmi.a 
	; hmi.gz 
	; hmi.stnew.i 
	; hmi.stnew.j 
	; hmi.ext.x 
	; hmi.ext.y 
	; a 
	; hmi.obj.id 
	; tcp.send.ena 
	; tcp.recv.ena 
	; tcp.ena 
	; keep.tool.no 
	; di.rs7.home1 
	; di.rs7.work[] 
	; grip.180xsh[] 
	; grip.180ysh[] 
	; grip.xsh[] 
	; grip.ysh[] 
	; grip.zsh[] 
	; hmi.g180x 
	; hmi.g180y 
	; hmi.pos 
	; hmi.pospos 
	; current.gripper 
	; dbg.tcp 
	; detail.count 
	; gripper.id 
	; intare.count 
	; intare.i[] 
	; intare.j[] 
	; max.tare.count 
	; outtare.count 
	; outtare.i[] 
	; outtare.j[] 
	; positioner.id 
	; s.grip.sns1.dis 
	; s.grip.sns2.dis 
	; start.task 
	; tcp.calb.dbg 
	; tcp.dbg 
	; tcp.recv.dbg 
	; tcp.send.dbg 
	; current.intare 
	; current.outtare 
	; full.counter 
	; gripper.type 
	; hmi.pos.pos 
	; object.id 
	; tare.counter 
	; @@@ STRINGS @@@
	; $tcp.ip 
	; $action 
	; $log.entry[] 
	; $command 
	; $detail.type 
	; $intare.ids 
	; $outtare.ids 
	; $cycle.command 
	; @@@ INTEGER @@@
	; @@@ SIGNALS @@@
	; capture.tare 
	; release.tare 
	; capture.grip 
	; release.grip 
	; grip.clamp 
	; grip.unclamp 
	; do.bat.alm 
	; do.home1 
	; do.work[] 
	; grip.unclamped 
	; grip.clamped 
	; rs7.home1 
	; rs7.work[] 
	; di.ifp.page[] 
	; s.tcp.send.ena 
	; s.tcp.recv.ena 
	; s.tcp.ena 
	; s.apply.coord 
	; s.close.pneumo 
	; s.open.pneumo 
	; s.in1.disable 
	; s.in2.disable 
	; rs13.det.put 
	; rs7.det.picked 
	; s.sensor.iss 
	; s.sensor.oss 
	; s.sensor.ot 
	; rs7.tare.chg 
	; rs13.tare.ack 
	; s.pneumo.open 
	; s.pneumo.close 
	; s.debug 
	; @@@ TOOLS @@@
	; tool.pin 
	; tool.pick[] 
	; @@@ BASE @@@
	; @@@ FRAME @@@
	; stz.frame 
	; @@@ BOOL @@@
	; @@@ DEFAULTS @@@
	; BASE: NULL
	; TOOL: NULL
	; @@@ WCD @@@
	; SIGNAME: sig1 sig2 sig3 sig4
	; SIGDIM: % % % %
.END
.TRANS
stocker.in[1,5] -466.099915 1164.558105 -284.019623 -88.510201 89.391075 -179.934814
stocker.in[1,4] -466.212982 1165.405640 -204.024200 -88.510201 89.391075 -179.934814
stocker.in[1,3] -466.326080 1166.253174 -124.028763 -88.510201 89.391075 -179.934814
stocker.in[1,2] -466.439148 1167.100708 -44.033333 -88.510201 89.391075 -179.934814
stocker.in[1,1] -466.552246 1167.948242 35.962097 -88.510201 89.391075 -179.934814
stocker.in[1,6] -465.986816 1163.710571 -364.015076 -88.510201 89.391075 -179.934814
stocker.in[1,7] -465.873749 1162.862915 -444.010498 -88.510201 89.391075 -179.934814
stocker.in[1,8] -465.760651 1162.015381 -524.005920 -88.510201 89.391075 -179.934814
stocker.in[1,9] -465.647552 1161.167847 -604.001343 -88.510201 89.391075 -179.934814
stocker.in[1,10] -465.534485 1160.320312 -683.996765 -88.510201 89.391075 -179.934814
stocker.in[2,1] 143.240967 1183.814941 36.656021 -88.510201 89.391075 -179.934814
stocker.in[2,2] 143.354065 1182.967407 -43.339409 -88.510201 89.391075 -179.934814
stocker.in[2,3] 143.467163 1182.119873 -123.334839 -88.510201 89.391075 -179.934814
stocker.in[2,4] 143.580200 1181.272339 -203.330276 -88.510201 89.391075 -179.934814
stocker.in[2,5] 143.693298 1180.424805 -283.325684 -88.510201 89.391075 -179.934814
stocker.in[2,6] 143.806396 1179.577271 -363.321136 -88.510201 89.391075 -179.934814
stocker.in[2,7] 143.919495 1178.729614 -443.316559 -88.510201 89.391075 -179.934814
stocker.in[2,8] 144.032593 1177.882080 -523.312012 -88.510201 89.391075 -179.934814
stocker.in[2,9] 144.145630 1177.034546 -603.307434 -88.510201 89.391075 -179.934814
stocker.in[2,10] 144.258728 1176.187012 -683.302856 -88.510201 89.391075 -179.934814
stocker.in[3,1] 753.034180 1199.681641 37.349945 -88.510201 89.391075 -179.934814
stocker.in[3,2] 753.147217 1198.834106 -42.645485 -88.510201 89.391075 -179.934814
stocker.in[3,3] 753.260376 1197.986572 -122.640915 -88.510201 89.391075 -179.934814
stocker.in[3,4] 753.373413 1197.139038 -202.636353 -88.510201 89.391075 -179.934814
stocker.in[3,5] 753.486572 1196.291504 -282.631775 -88.510201 89.391075 -179.934814
stocker.in[3,6] 753.599609 1195.443970 -362.627228 -88.510201 89.391075 -179.934814
stocker.in[3,7] 753.712646 1194.596313 -442.622650 -88.510201 89.391075 -179.934814
stocker.in[3,8] 753.825806 1193.748779 -522.618042 -88.510201 89.391075 -179.934814
stocker.in[3,9] 753.938843 1192.901245 -602.613464 -88.510201 89.391075 -179.934814
stocker.in[3,10] 754.052002 1192.053711 -682.608887 -88.510201 89.391075 -179.934814
stocker.out[1,1] -959.089783 -805.030518 255.382309 0.001567 89.998672 -179.684799
stocker.out[1,2] -959.087463 -804.480408 155.383820 0.001567 89.998672 -179.684799
stocker.out[1,3] -959.085205 -803.930298 55.385330 0.001567 89.998672 -179.684799
stocker.out[1,4] -959.082886 -803.380188 -44.613144 0.001567 89.998672 -179.684799
stocker.out[1,5] -959.080566 -802.830017 -144.611649 0.001567 89.998672 -179.684799
stocker.out[1,6] -959.078247 -802.279907 -244.610123 0.001567 89.998672 -179.684799
stocker.out[1,7] -959.075989 -801.729797 -344.608582 0.001567 89.998672 -179.684799
stocker.out[1,8] -959.073669 -801.179688 -444.607056 0.001567 89.998672 -179.684799
stocker.out[1,9] -959.071350 -800.629578 -544.605591 0.001567 89.998672 -179.684799
stocker.out[1,10] -959.069031 -800.079468 -644.604065 0.001567 89.998672 -179.684799
stocker.out[1,11] -959.066772 -799.529358 -744.602539 0.001567 89.998672 -179.684799
stocker.out[1,12] -959.064453 -798.979187 -844.601074 0.001567 89.998672 -179.684799
stocker.out[2,1] -959.103271 -315.037903 258.078003 0.001567 89.998672 -179.684799
stocker.out[2,2] -959.100952 -314.487793 158.079514 0.001567 89.998672 -179.684799
stocker.out[2,3] -959.098633 -313.937653 58.081024 0.001567 89.998672 -179.684799
stocker.out[2,4] -959.096313 -313.387543 -41.917435 0.001567 89.998672 -179.684799
stocker.out[2,5] -959.094055 -312.837433 -141.915970 0.001567 89.998672 -179.684799
stocker.out[2,6] -959.091736 -312.287323 -241.914444 0.001567 89.998672 -179.684799
stocker.out[2,7] -959.089417 -311.737183 -341.912903 0.001567 89.998672 -179.684799
stocker.out[2,8] -959.087097 -311.187073 -441.911377 0.001567 89.998672 -179.684799
stocker.out[2,9] -959.084839 -310.636963 -541.909912 0.001567 89.998672 -179.684799
stocker.out[2,10] -959.082520 -310.086823 -641.908386 0.001567 89.998672 -179.684799
stocker.out[2,11] -959.080200 -309.536713 -741.906860 0.001567 89.998672 -179.684799
stocker.out[2,12] -959.077881 -308.986603 -841.905396 0.001567 89.998672 -179.684799
stocker.out[3,1] -959.116699 174.954712 260.773682 0.001567 89.998672 -179.684799
stocker.out[3,2] -959.114380 175.504822 160.775208 0.001567 89.998672 -179.684799
stocker.out[3,3] -959.112122 176.054932 60.776718 0.001567 89.998672 -179.684799
stocker.out[3,4] -959.109802 176.605042 -39.221756 0.001567 89.998672 -179.684799
stocker.out[3,5] -959.107483 177.155212 -139.220261 0.001567 89.998672 -179.684799
stocker.out[3,6] -959.105164 177.705322 -239.218735 0.001567 89.998672 -179.684799
stocker.out[3,7] -959.102905 178.255432 -339.217163 0.001567 89.998672 -179.684799
stocker.out[3,8] -959.100586 178.805542 -439.215698 0.001567 89.998672 -179.684799
stocker.out[3,9] -959.098267 179.355652 -539.214233 0.001567 89.998672 -179.684799
stocker.out[3,10] -959.095947 179.905762 -639.212646 0.001567 89.998672 -179.684799
stocker.out[3,11] -959.093689 180.455872 -739.211182 0.001567 89.998672 -179.684799
stocker.out[3,12] -959.091370 181.006042 -839.209717 0.001567 89.998672 -179.684799
stocker.out[4,1] -959.130188 664.947266 263.469391 0.001567 89.998672 -179.684799
stocker.out[4,2] -959.127869 665.497437 163.470901 0.001567 89.998672 -179.684799
stocker.out[4,3] -959.125549 666.047485 63.472412 0.001567 89.998672 -179.684799
stocker.out[4,4] -959.123291 666.597656 -36.526077 0.001567 89.998672 -179.684799
stocker.out[4,5] -959.120972 667.147705 -136.524551 0.001567 89.998672 -179.684799
stocker.out[4,6] -959.118652 667.697876 -236.523026 0.001567 89.998672 -179.684799
stocker.out[4,7] -959.116333 668.247925 -336.521484 0.001567 89.998672 -179.684799
stocker.out[4,8] -959.114075 668.798096 -436.519958 0.001567 89.998672 -179.684799
stocker.out[4,9] -959.111755 669.348267 -536.518494 0.001567 89.998672 -179.684799
stocker.out[4,10] -959.109436 669.898315 -636.516968 0.001567 89.998672 -179.684799
stocker.out[4,11] -959.107117 670.448486 -736.515442 0.001567 89.998672 -179.684799
stocker.out[4,12] -959.104858 670.998535 -836.514038 0.001567 89.998672 -179.684799
tool.pin -85.070000 -205.369995 -19.860001 67.500000 70.000000 0.000000
tool.pick[1] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[2] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[3] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[4] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[5] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
stz.frame 988.154785 -343.346466 108.116516 -172.441833 1.937711 -8.772193
.END
.JOINTS
#before.stz 156.298325 -5.104897 -119.705116 -18.823097 -74.563522 -35.173157
#put.stz 136.263840 15.705241 -109.890045 -13.677276 -68.614426 -15.814918
#wait.pick 153.260971 -5.244692 -116.123528 -0.757969 -68.765495 -38.446480
#post.tare.in 30.800823 -12.718077 -134.300644 0.302695 -78.852997 24.346281
#put.outpal 53.960426 40.250061 -112.267891 16.355391 -45.131153 44.870815
#before.outpal 49.146431 33.201904 -110.281738 16.235420 -53.055729 51.668869
#post.tare.out -44.259357 -0.774896 -134.428055 -2.135478 -66.283951 17.958624
#homep1 -44.998138 -30.843269 -121.243866 0.000000 -90.000000 22.499559
#plb 120.860649 1.281152 -121.462181 -32.857822 60.155643 -127.981834
#plt 111.817329 21.086079 -96.765480 -25.279980 52.104725 -133.340485
#prb 146.296967 26.655985 -89.838234 -54.878906 71.183853 -105.880890
#prt 134.565048 41.486687 -65.941849 -50.747608 57.059559 -105.200981
#tool.pos[1] 138.009109 26.380774 -133.075394 2.785166 -19.660723 -27.889797
#before.pos 62.065971 -11.377430 -122.238724 -0.289775 -69.805077 52.576439
#pick.in 130.503326 12.590690 -97.431877 -0.818260 -69.914940 -15.682721
#pos.pos[4] 84.899872 50.424088 -87.945923 -23.932617 -48.573303 -45.927521
#tool.pos[4] 84.078476 44.192799 -101.346825 -26.757774 -42.315220 -40.994743
.END
.REALS
hmi.st.in.i = 1
hmi.st.in.j = 1
hmi.st.out.i = 1
hmi.st.out.j = 1
capture.tare = 2
hmi.gx = 4
hmi.gy = -2.2
hmi.x = 2.2
hmi.y = 2.2
ip[1] = 127
ip[2] = 0
ip[3] = 0
ip[4] = 1
release.tare = 1
tcp.connect.tmo = 5
tcp.port = 9013
tcp.receive.tmo = 5
tcp.send.tmo = 5
tcp.socket = 488
tyterm = 0
capture.grip = 6
hmi.t.pos = 1
hmi.tool.no = 1
release.grip = 5
grip.clamp = 4
grip.unclamp = 3
center.x = 147.8
center.y = 245.4
cx = 2.3456
cy = 5.848
dist.xn = 0.001
dist.xp = 0.015
dist.yn = 0.015
dist.yp = 0.015
do.bat.alm = 2010
do.home1 = 17
do.work[1] = 18
hmi.a = 0
hmi.gz = 6
hmi.stnew.i = 1
hmi.stnew.j = 1
hmi.ext.x = -38
hmi.ext.y = -4
grip.unclamped = 1001
grip.clamped = 1002
a = 0
hmi.obj.id = 4
rs7.home1 = 1017
rs7.work[1] = 1018
di.ifp.page[1] = 2001
di.ifp.page[2] = 2002
di.ifp.page[3] = 2003
di.ifp.page[4] = 2004
di.ifp.page[5] = 2005
di.ifp.page[6] = 2006
di.ifp.page[7] = 2007
di.ifp.page[8] = 2008
tcp.send.ena = -1
s.tcp.send.ena = 2011
s.tcp.recv.ena = 2012
s.tcp.ena = 2013
tcp.recv.ena = -1
tcp.ena = -1
s.apply.coord = 2014
keep.tool.no = 1
di.rs7.home1 = 1017
di.rs7.work[1] = 1018
do.work[2] = 2102
grip.180xsh[1] = -8
grip.180xsh[2] = 0
grip.180xsh[3] = 0
grip.180xsh[4] = 0
grip.180xsh[5] = 0
grip.180xsh[6] = 0
grip.180xsh[7] = 0
grip.180xsh[8] = 0
grip.180xsh[9] = 0
grip.180ysh[1] = 7
grip.180ysh[2] = 0
grip.180ysh[3] = 0
grip.180ysh[4] = 0
grip.180ysh[5] = 0
grip.180ysh[6] = 0
grip.180ysh[7] = 0
grip.180ysh[8] = 0
grip.180ysh[9] = 0
grip.xsh[1] = 4
grip.xsh[2] = 0
grip.xsh[3] = 0
grip.xsh[4] = 0
grip.xsh[5] = 0
grip.xsh[6] = 0
grip.xsh[7] = 0
grip.xsh[8] = 0
grip.xsh[9] = 0
grip.ysh[1] = -2.2
grip.ysh[2] = 0
grip.ysh[3] = 0
grip.ysh[4] = 0
grip.ysh[5] = 0
grip.ysh[6] = 0
grip.ysh[7] = 0
grip.ysh[8] = 0
grip.ysh[9] = 0
grip.zsh[1] = 6
grip.zsh[2] = 0
grip.zsh[3] = 0
grip.zsh[4] = 0
grip.zsh[5] = 0
grip.zsh[6] = 0
grip.zsh[7] = 0
grip.zsh[8] = 0
grip.zsh[9] = 0
hmi.g180x = -8
hmi.g180y = 7
hmi.pos = 1
hmi.pospos = 4
s.close.pneumo = 2015
s.open.pneumo = 2016
s.in1.disable = 2017
s.in2.disable = 2018
rs13.det.put = 19
rs7.det.picked = 1019
s.sensor.iss = 2019
s.sensor.oss = 2020
s.sensor.ot = 2021
current.gripper = 1
rs7.tare.chg = 1020
rs13.tare.ack = 20
dbg.tcp = -1
detail.count = 20
gripper.id = 1
intare.count = 2
intare.i[1] = 1
intare.j[1] = 3
max.tare.count = 99
outtare.count = 1
outtare.i[1] = 1
outtare.j[1] = 1
positioner.id = 4
s.grip.sns1.dis = 2015
s.grip.sns2.dis = 2016
start.task = 2001
tcp.calb.dbg = -1
tcp.dbg = -1
tcp.recv.dbg = -1
tcp.send.dbg = -1
current.intare = 1
current.outtare = 2
full.counter = 2
gripper.type = 1
hmi.pos.pos = 4
intare.i[2] = 2
intare.j[2] = 1
object.id = 4
tare.counter = 2
s.pneumo.open = 2022
s.pneumo.close = 2023
s.debug = 2024
.END
.STRINGS
$tcp.ip = "192.168.7.137"
$action = "WaitPneumaticOpen"
$log.entry[0] = "16:41:29 Put detail to positioner 4"
$log.entry[1] = "16:41:29 State: PutToPositioner"
$log.entry[2] = "16:41:43 Pick detail from stz (121.027, 274.22101, 180)"
$log.entry[3] = "16:41:43 State: PickDetail"
$log.entry[4] = "16:41:48 Wait for unclamp gripper. State: WaitingGripUnclamped"
$log.entry[5] = "16:41:53 Put detail to positioner 4"
$log.entry[6] = "16:41:53 State: PutToPositioner"
$log.entry[7] = "16:42:11 Put tool 1 to 1"
$log.entry[8] = "16:42:11 State: PutTool"
$log.entry[9] = "16:42:15 Return pallet (1, 1) to input stocker."
$log.entry[10] = "16:42:15 State: ReturnToInStocker"
$log.entry[11] = "16:42:15 Wait stz pneumatic open. State: WaitPneumaticOpen"
$command = ""
$detail.type = ""
$intare.ids = ""
$outtare.ids = ""
$cycle.command = ""
.END
