.AUXDATA
N_OX1    "release.grip|"
N_OX2    "capture.grip|"
N_OX3    "grip.unclamp|"
N_OX4    "grip.clamp|"
N_OX17    "do.home1|"
N_OX18    "do.work[1]|"
N_OX19    "rs7.working|"
N_OX20    "rs7.tare.chg|"
N_OX21    "rs07.fin.ack|"
N_OX22    "rs07.put.ack|"
N_WX1    "grip.unclamped|"
N_WX2    "grip.clamped|"
N_WX17    "rs13.home1|"
N_WX18    "rs13.work[1]|"
N_WX19    "rs13.det.put|"
N_WX20    "rs13.tare.ack|"
N_WX21    "rs13.finish|"
N_WX24    "do.hold|"
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
N_INT17    "s.in1.disable|"
N_INT18    "s.in2.disable|"
N_INT19    "s.measure.ok|"
N_INT20    "s.measure.ng|"
N_INT21    "s.vacuum|"
N_INT24    "s.debug|"
N_INT26    "di.hold|"
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
33,2,"","  Release ","  gripper","",10,4,6,1,-1
34,2,"","  Capture","  gripper","",10,4,6,2,-1
35,2,"","   Open ","  gripper","",10,4,5,3,0
36,2,"","   Close","  gripper","",10,4,5,4,0
42,4,1,"OFF     ON","","","FORCE IN 1",10,4,4,0,2017,0
43,4,1,"OFF     ON","","","FORCE IN 2",10,4,4,0,2018,0
49,2,"","   MAIN","<---------","",10,4,15,2001,0
56,14,"tcp.ip","Server IP","",10,15,0
57,8,"tcp.port","Server","port",10,15,5,1,0
69,4,1,"OFF     ON","","","TCP COMMON",10,4,4,0,2013,0
76,4,1,"OFF     ON","",""," TCP SEND",10,4,4,0,2011,0
77,2,"","   MAIN","<---------","",10,4,15,2001,0
83,4,1,"OFF     ON","",""," TCP RECV",10,4,4,0,2012,0
84,8,"hmi.tool.no","   TOOL","  NUMBER",10,15,2,1,0
86,8,"hmi.gx","GRIPPER N"," X SHIFT",10,15,4,2,0
88,8,"hmi.tare.pos","   TARE"," POSITION",10,15,2,1,0
89,8,"hmi.defect.pos","  DEFECT"," POSITION",10,15,2,1,0
90,8,"hmi.obj.id","  OBJECT","    ID",10,15,2,1,0
93,8,"hmi.gy","GRIPPER N"," Y SHIFT",10,15,4,2,0
94,8,"hmi.g180x","GRIPPER N","180X SHIFT",10,15,4,2,0
100,8,"hmi.gz","GRIPPER N"," Z SHIFT",10,15,4,2,0
101,8,"hmi.g180y","GRIPPER N","180Y SHIFT",10,15,4,2,0
104,4,1,"OFF     ON","","","  DEBUG ",10,4,4,0,2024,0
105,2,"","   MAIN","<---------","",10,4,15,2001,0
107,2,""," APPLY FOR"," N GRIPPER","",10,4,15,2014,0
.END
.INTER_PANEL_TITLE
"MAIN",1
"GRIPPER",1
"NETWORK",1
"TEACH",1
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
"",0
.END
.INTER_PANEL_COLOR_D
182,3,224,244,28,159,252,255,251,255,0,31,2,241,52,255,
.END
.PROGRAM id4()@25/11/13 12:08 #4; 312.229.002
; Object ID
  object.id = 4
; Working gripper
  gripper.type = 1
; Max objects in output tare
  max.tare.count = 168
  spc.tare.count = 50
;
  detail.length = 23.5
  start.shift.x = 0
  start.shift.y = 0
  start.shift.z = 0
;
  dist.xp = 0.015
  dist.xn = 0.001
  dist.yp = 0.015
  dist.yn = 0.015
.END
.PROGRAM id1 () ; 440.00.26
; Object ID
  object.id = 1
; Working gripper
  gripper.type = 2
; Max objects in output tare
  max.tare.count = 126
  spc.tare.count = 50
;
  detail.length = 27.5
  start.shift.x = 0
  start.shift.y = 0
  start.shift.z = 0
;
  dist.xp = 0.025
  dist.xn = 0.015
  dist.yp = 0.015
  dist.yn = 0.015
.END
.PROGRAM safe.home ()
	; IMPLEMENT SAFE RETURN TO HOME POSITION
	CALL log ("Moving to home position. State: MoveToHome")
	$action = "MoveToHome"
	SPEED 250 MM/S ALWAYS
	ACCURACY 10 ALWAYS
	JMOVE #homyak
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
.PROGRAM a.home ()
	JMOVE #homyak
.END
.PROGRAM a.align ()
	ALIGN
.END
.PROGRAM pos.pick ()
  IF FALSE THEN
    .pos = hmi.obj.id
  END
  .pos = object.id
  ;
  .$temp = "Pick detail from positioner" + $ENCODE (.pos)
  CALL log (.$temp)
  CALL log ("State: TakeFromPositioner")
  $action = "TakeFromPositioner"
  ;
  TOOL tool.pick[current.gripper]
  ;
  SPEED 100 ALWAYS
  ACCURACY 10 ALWAYS
  ;
  POINT .temp = #pos.pos[.pos]
  JMOVE .temp + TRANS (0, 0, 30)
  BREAK
  IF NOT SIG (grip.unclamped) THEN
    PULSE grip.unclamp
    CALL log ("Wait for unclamp gripper. State: WaitingGripUnclamped")
    $action = "WaitingGripUnclamped"
    WAIT SIG (grip.unclamped) OR SIG (s.in1.disable)
  END
  ;
  SPEED 250 MM/S
  ACCURACY 0.02 
  LMOVE #pos.pos[.pos]
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  pick.count = pick.count + 1
  ;
  LMOVE .temp + TRANS (0, 5, 10)
  ACCURACY 100
  LMOVE .temp + TRANS (0, 0, 200)
  ACCURACY 100
  LMOVE #homyak
.END
.PROGRAM measure ()
  IF FALSE THEN
    .pos = hmi.obj.id
  END
  .pos = object.id
  ;
  CALL log ("Move to measurement machine. State: TakingToMM")
  $action = "TakingToMM"
  ;
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  ;
  POINT .pos.machine = #pos.machine[.pos]
  ; Go to machine
  JMOVE #safe.machine
  JMOVE #before.machine
  ACCURACY 10
  LMOVE .pos.machine + TRANS (0, 50, 0)
  ; Put to machine
  ACCURACY 5
  LMOVE .pos.machine + TRANS (0, 10, 0)
  SPEED 250 MM/S
  ACCURACY 0.5 
  LMOVE #pos.machine[.pos]
  BREAK
  ;CALL log ("Waiting for vacuum enabled. State: WaitingMMVacuum")
  $action = "WaitingMMVacuum"
  ;SWAIT s.vacuum
  PULSE grip.unclamp
  TWAIT 0.5
  ;
  ACCURACY 5
  LMOVE .pos.machine + TRANS (0, 10, 0)
  LMOVE .pos.machine + TRANS (0, 50, 0)
  LMOVE #before.machine
  BREAK
  ;BREAK
  ; Wait result
  CALL log ("Move to measurement machine. State: WaitingMMResult")
  $action = "WaitingMMResult"
  WAIT SIG (s.measure.ok) OR SIG (s.measure.ng)
  ; Allow rs013n to continue right after the result
  IF SIG (s.measure.ng) THEN
    SIGNAL -rs7.working
  END
  ;
  CALL log ("Move to measurement machine. State: TakingFromMM")
  $action = "TakingFromMM"
  ; Pick from machine
  ACCURACY 10
  LMOVE .pos.machine + TRANS (0, 50, 0)
  ACCURACY 5
  LMOVE .pos.machine + TRANS (0, 10, 0)
  SPEED 250 MM/S
  ACCURACY 0.5
  LMOVE #pos.machine[.pos]
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  ; Go home
  ACCURACY 5
  LMOVE .pos.machine + TRANS (0, 10, 0)
  LMOVE .pos.machine + TRANS (0, 50, 0)
  LMOVE #before.machine
  JMOVE #safe.machine
  JMOVE #homyak
.END
.PROGRAM a.main()@25/10/31 16:24 #0
  ;
  CALL safe.home
  ;
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  RESET
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
      SVALUE "Check":
        BREAK
      ANY :
        BREAK
    END
  END
  ;
.END
.PROGRAM put.defect ()
  ;
  CALL log ("Putting to defect. State: PutToDefect ")
  $action = "PutToDefect"
  ;
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  TOOL tool.pick[current.gripper]
  .x = INT((defect.count) / 5)
  .y = (defect.count) MOD 5
  POINT .temp = #defect.pos[.x, .y]
  ;
  JMOVE #safe.defect
  ;
  ACCURACY 10
  LAPPRO .temp, -30
  BREAK
  ;
  SPEED 250 MM/S
  ACCURACY 0.02 
  LMOVE #defect.pos[.x, .y]
  BREAK
  PULSE grip.unclamp
  defect.count = defect.count + 1
  TWAIT 0.5
  ;
  ACCURACY 10
  LAPPRO .temp, -30
  JMOVE #safe.defect
  LMOVE #homyak
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
  ;
  CALL calc.tare (FALSE)
  ;
  pick.count = 0
  tare.put.count = 0
  ;
  .keep.pick = TRUE
  .wait.ack = FALSE
  .changed = FALSE
  ;
  WHILE .keep.pick DO
    IF tare.put.count == max.tare.count THEN
      ;
      SIGNAL rs7.tare.chg
      SWAIT rs13.tare.ack
      SIGNAL -rs7.tare.chg
      .wait.ack = TRUE
      tare.put.count = 0
      ;
    END
    IF SIG (rs13.det.put) THEN
      ;SWAIT rs13.det.put
      PULSE rs07.put.ack, 0.5
      SWAIT -rs13.work[1] ; Wait robot leave zone
      SIGNAL rs7.working
      CALL pos.pick
      IF .wait.ack THEN
        .wait.ack = FALSE
        SIGNAL -rs7.working
        SWAIT rs13.tare.ack
        SIGNAL rs7.working
        SIGNAL -rs7.tare.chg
        .changed = TRUE
      END
      SIGNAL -rs7.working
      CALL measure
      IF SIG (s.measure.ok) THEN
        SIGNAL -s.measure.ok
        ;SWAIT -rs013.putting
        IF NOT .changed THEN
          SWAIT rs13.det.put
          CALL put.tare
        ELSE
          SWAIT rs13.tare.ack
          CALL put.tare
          JMOVE #homyak
          .changed = FALSE
        END
        ;CALL put.tare
      ELSE
        ;SIGNAL -rs7.working
        SIGNAL -s.measure.ng
        CALL put.defect
        BREAK
        SIGNAL -rs7.working
      END
      ;
    END
    ;
    IF SIG (rs13.finish) THEN
      .keep.pick = FALSE
    END
  END
  CALL pos.pick
  CALL measure
  IF SIG (s.measure.ok) THEN
    SIGNAL -s.measure.ok
    CALL put.tare
    BREAK 
    PULSE rs07.fin.ack
  ELSE
    PULSE rs07.fin.ack
    SIGNAL -rs7.working
    SIGNAL -s.measure.ng
    CALL put.defect
  END
  LMOVE #homyak
  ;CALL measure
  ;
.END
.PROGRAM process.data (.state)
  ;
  SCASE $detail.type OF
    SVALUE "312.229.002":
      CALL id4
      .state = TRUE
      RETURN
  END
  ;
  SCASE $detail.type OF
    SVALUE "0401.17.02.023":
      CALL id1
      .state = TRUE
      RETURN
  END
ANY:
  .state = FALSE
  RETURN
  
.END
.PROGRAM calc.tare (.spacer)
  ;IF EXISTLOCALREAL(".spacer") THEN
  ;  .max = max.tare.count
  ;ELSE
  ;  .max = spc.tare.count
  ;END
  .max = max.tare.count
  ;
  tare.width = 210; 210; mm
  tare.lines = 20
  lines.diff = 16; mm
  min.spacer = 1.5; mm
  ;
  IF object.id <> 3 THEN
    ;
    .detail.len.ws = detail.length + min.spacer
    ;
    max.in.line = (tare.width - min.spacer) / .detail.len.ws
    ;
    FOR .i = 1 TO tare.lines
      FOR .j = 1 TO max.in.line
        POINT tare.put[.i, .j] = tare.frame + TRANS (-.i * lines.diff, -.j * .detail.len.ws)
      END
    END
  ELSE
    .max = 77
    .dx = 10
    .dy = 10
    FOR .i = 0 TO 10
      FOR .j = 1 TO 6
        POINT tare.put[.i, .j] = tare.frame + TRANS (-.i * .dx, -.j * .dy)
      END
    END
  END
.END
.PROGRAM put.tare ()
  ;
  CALL log ("Putting to defect. State: PutToTare ")
  $action = "PutToTare"
  ;
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  TOOL tool.pick[current.gripper]
  ;
  .j = INT ((tare.put.count) / 20) + 1
  .i = (tare.put.count) MOD 20 + 1
  IF tare.put.count MOD 2 == 0 AND valet == TRUE
    .rz = 180
    .x = grip.180xsh[current.gripper] + start.shift.x
    .y = grip.180ysh[current.gripper] + start.shift.y
  ELSE
    .rz = 0
    .x = grip.xsh[current.gripper] + start.shift.x
    .y = grip.ysh[current.gripper] + start.shift.y
  END
  .z = grip.zsh[current.gripper] + start.shift.z
  POINT .put = tare.put[.i, .j] + TRANS (.x, .y, .z) + RZ (.rz)
  ;
  JAPPRO .put, -100
  ACCURACY 5
  LAPPRO .put, -20
  ACCURACY 0.02 
  SPEED 250 MM/S
  LMOVE .put
  BREAK
  ;
  PULSE grip.unclamp
  TWAIT 0.5
  tare.put.count = tare.put.count + 1
  SIGNAL -rs7.working
  ;
  LAPPRO .put, -20
  LAPPRO .put, -200
  ;
  ;JMOVE #homyak
  
.END
.PROGRAM a.teach.pos ()
  TOOL tool.pick[hmi.tool.no]
  ;
  POINT .temp = #pos.pos[hmi.obj.id]
  JMOVE .temp + TRANS (0, 0, 50)
  BREAK
  LMOVE #pos.pos[hmi.obj.id]
  POINT .temp = #pos.pos[hmi.obj.id]
  BREAK
  TWAIT 0.5
  LMOVE .temp + TRANS (0, 5, 10)
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  TWAIT 0.5
.END
.PROGRAM a.teach.machine ()
  TOOL tool.pick[hmi.tool.no]
  ;POINT .pos.machine = #pos.machine[detail.id]
  JMOVE #safe.machine
  JMOVE #before.machine
  POINT .temp = #pos.machine[hmi.obj.id]
  JMOVE .temp + TRANS (0, 10, 0)
  BREAK
  LMOVE #pos.machine[hmi.obj.id]
  POINT .temp = #pos.machine[hmi.obj.id]
  BREAK
  TWAIT 0.5
  LMOVE .temp + TRANS (0, 10, 0)
  BREAK
  TWAIT 0.5
  LMOVE #before.machine
.END
.PROGRAM a.teach.defect()@25/11/13 12:18 #0
  IF FALSE THEN
    SPEED 250 MM/S ALWAYS
    ACCURACY 0 ALWAYS
    TOOL tool.pick[hmi.tool.no]
;
    LMOVE #dtlr; *** TEACH POINT *** Lower right
    LMOVE #dtur; *** TEACH POINT *** Upper right
    LMOVE #dtul; *** TEACH POINT *** Upper left
;
    POINT .dtur = #dtur
    POINT .dtul = #dtul
    POINT .dtlr = #dtlr
;
    BREAK
    POINT defect.frame = FRAME(.dtlr,.dtur,.dtul,.dtlr)
;
    FOR .i = 0 TO 9
      FOR .j = 0 TO 4
        POINT #defect.pos[.i,.j] = defect.frame+TRANS(.i*27.8,.j*55.6)
      END
    END
  END
  SPEED 250 MM/S ALWAYS
  ACCURACY 0 ALWAYS
  TOOL tool.pick[hmi.tool.no]
  BREAK
;
  .x = INT((hmi.defect.pos-1)/5)
  .y = (hmi.defect.pos-1) MOD 5
  POINT .defect.pos = #defect.pos[.x,.y]
;
  LAPPRO .defect.pos,-10
  LMOVE .defect.pos
  LAPPRO .defect.pos,-10
.END
.PROGRAM a.teach.tare ()
  SPEED 250 MM/S ALWAYS
  ACCURACY 0 ALWAYS
  TOOL tool.pick[hmi.tool.no]
  ;
  LMOVE #tarelb ; *** TEACH POINT *** Left bottom
  LMOVE #tarerb ; *** TEACH POINT *** Right bottom
  LMOVE #tarert ; *** TEACH POINT *** Right top
  LMOVE #tare0 ; *** TEACH POINT *** Zero point ~
  ;
  POINT .tarelb = #tarelb
  POINT .tarerb = #tarerb
  POINT .tarert = #tarert
  POINT .tare0 = #tare0
  ;
  BREAK
  POINT tare.frame = FRAME (.tarelb, .tarerb, .tarert, .tare0)
  POINT tare.frame = tare.frame + RZ(180)
  ;
  JMOVE tare.frame + TRANS(grip.xsh[hmi.tool.no], grip.ysh[hmi.tool.no], grip.zsh[hmi.tool.no])
  
.END
.PROGRAM a.test.tare()@25/11/13 11:40 #0
  .j = INT((hmi.tare.pos-1)/20)+1
  .i = (hmi.tare.pos-1) MOD 20+1
  ;TYPE 0: .i,.j
  POINT .put = tare.put[.i,.j] + TRANS(hmi.gx, hmi.gy, hmi.gz)
  LAPPRO .put,-20
  LMOVE .put
  LAPPRO .put,-20
  ;
  BREAK
  ; Reverse
  POINT .put = tare.put[.i,.j] + TRANS(hmi.g180x, hmi.g180y, hmi.gz) + RZ(180)
  LAPPRO .put,-20
  LMOVE .put
  LAPPRO .put,-20
.END
.PROGRAM set.io.pc ()
  ; Gripper IO
  release.grip = 1
  capture.grip = 2
  ;
  grip.unclamped = 1001
  grip.clamped = 1002
  grip.unclamp = 3
  grip.clamp = 4
  ;
  ; Dedicated IO
  ;
  di.hold = 2026
  do.bat.alm = 2010
  ;
  ;
  do.home1 = 17 ; 
  do.work[1] = 18 ; 
  rs7.working = 19; 
  rs7.tare.chg = 20 ; Request tare change
  rs07.fin.ack = 21; NU Task finished
  rs07.put.ack = 22; I took detail
  ;
  rs13.home1 = 1017;
  rs13.work[1] = 1018;
  rs13.det.put = 1019; 
  rs13.tare.ack = 1020; Wait tare change
  rs13.finish = 1021; Finish task
  rs013.putting = 1023;
  ;rs7.det.picked = 19
  ;
  ;
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
  ;
  s.in1.disable = 2017
  s.in2.disable = 2018
  ;
  s.measure.ok = 2019
  s.measure.ng = 2020
  s.vacuum = 2021
  s.debug = 2024
  ;
  s.lock = 2025
.END
.PROGRAM watchdog.pc ()
  WHILE TRUE DO
    ;
    ;
    ; Если мы въехали в зону раньше второго робота
    ; То ставим лок, пока не уедем
    SOUT 2025 = 18 AND (NOT 1018 OR 2025)
    SOUT 2026 = NOT (NOT 2025 AND 1018 AND 18)
    ;
    ;
    IF TIMER (1) > 10 AND $command == "START" THEN
      $command = ""
    END
    ;
    ;
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
    ;
    IF keep.tool.no <> hmi.tool.no THEN
      hmi.gx = grip.xsh[hmi.tool.no]
      hmi.gy = grip.ysh[hmi.tool.no]
      hmi.gz = grip.zsh[hmi.tool.no]
      hmi.g180x = grip.180xsh[hmi.tool.no]
      hmi.g180y = grip.180ysh[hmi.tool.no]
      keep.tool.no = hmi.tool.no
    END
    IF SIG (s.apply.coord) THEN
      grip.xsh[hmi.tool.no] = hmi.gx
      grip.ysh[hmi.tool.no] = hmi.gy
      grip.zsh[hmi.tool.no] = hmi.gz
      grip.180xsh[hmi.tool.no] = hmi.g180x
      grip.180ysh[hmi.tool.no] = hmi.g180y
    END
    ;
    TWAIT 0.1
    IF TASK (1002) <> 1 THEN
      PCEXECUTE 2: tcp.client.pc
      TWAIT 2
    END
    IF TASK (1003) <> 1 THEN
      PCEXECUTE 3: sender.pc
      TWAIT 2
    END
    ;
    IF NOT SIG (s.debug) THEN
      IF SWITCH (REPEAT) AND NOT SWITCH (TEACH_LOCK) AND NOT SWITCH (EMERGENCY) AND NOT SWITCH (CS) AND NOT SWITCH (ERROR) THEN
        MC ZPOWER ON
        WAIT SWITCH (POWER)
        ;
        MC CONTINUE
      END
    END
  END
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
  IFPWPRINT 8, 1, 1, 5, 10 = "Robot: RS007L S/N: C6324", "Controller: F60 S/N: C8174"," ", "Powered by Robowizard Co.Ltd."
  ;
  CALL set.io.pc
  CALL set.vars.pc
  ;
  MC PRIME a.main
  ;
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
.PROGRAM set.vars.pc ()
  ; Variables init
  ;
  IF NOT EXISTREAL("current.gripper") THEN
    current.gripper = 1
    pick.count = 0
    defect.count = 0
    valet = FALSE
  END
  ;
  IF NOT EXISTREAL ("grip.xsh[8]")  THEN
    FOR .i = 1 TO 9
      grip.xsh[.i] = 0
      grip.ysh[.i] = 0
      grip.zsh[.i] = 0
      grip.180xsh[.i] = 0
      grip.180ysh[.i] = 0
      ;
      keep.tool.no = -1
    END
  END
  IF NOT EXISTCHAR ("$log.entry[11]")  THEN
    FOR .i = 0 TO 12
      $log.entry[.i] = " "
    END
  END
  ;
  IF NOT EXISTCHAR ("$command")  THEN
    $command = ""
  END
  ;
  IF NOT EXISTREAL ("defect.count") THEN
    defect.count = 0
    pick.count = 0
    current.gripper = 0
    mon.speed = 100
  END
  ;tcp.socket = 0
  tcp.connect.tmo = 5
  tcp.receive.tmo = 5
  tcp.send.tmo = 5
  ;
  tyterm = 0
  
.END
.PROGRAM tcp.send.pc(.$data[],.data.length) #114404
	IF tcp.socket > 0 THEN
		TCP_SEND .status, tcp.socket, .$data[1], .data.length, tcp.send.tmo
		IF .status >= 0 THEN
			PRINT tcp.send.dbg: "Sent ", .data.length, " strings"
			FOR .i = 1 TO .data.length
				IF LEN (.$data[.i]) > 127 THEN
					PRINT tcp.send.dbg: /S, .i, ": "
					PRINT tcp.send.dbg: /S, $LEFT (.$data[.i], 128)
					PRINT tcp.send.dbg: $MID (.$data[.i], 129)
				ELSE
					PRINT tcp.send.dbg: /S, .i, ": "
					PRINT tcp.send.dbg: .$data[.i]
				END
			END
		ELSE
			PRINT tcp.send.dbg: "Failed to send data with error:", .status, ". Error count:", .tcp.error.cnt
			tcp.socket = -1
		END
	ELSE
		PRINT tcp.send.dbg: "Failed to send data. Socket is not opened"
	END
	;
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
    TIMER 1 = 0
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
      IF .$sensor.name == "machinevacuum" THEN
        PULSE s.vacuum, 5
      END
    END
  END
  ;
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
    ELSE
      SIGNAL s.measure.ng
    END
  END
  ;
  IF INSTR (.$data[1], "SPEED") THEN
    .$temp = $DECODE (.$data[1], ";", 0)
    .$temp = $DECODE (.$data[1], ";", 1)
    .$spd = $DECODE (.$data[1], ";", 0)
    mon.speed = VAL (.$spd)
    MON_SPEED (mon.speed)
  END
  ;
  ; String format:
  ; PAUSE;
  IF INSTR (.$data[1], "PAUSE") THEN
    PULSE 2222
  END
  ;
  ; String format:
  ; RESUME;
  IF INSTR (.$data[1], "RESUME") THEN
    PULSE 2222
  END
  ;
  ; String format:
  ; ETALON;ID;
  IF INSTR (.$data[1], "ETALON") THEN
    $command = "ETALON"
  END
  ;
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
.PROGRAM get.state.pc (.$state)
  .$state = "SPEED:" + $ENCODE(mon.speed) + ";"
  .$state = .$state + "POWER:"
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
.PROGRAM sender.pc ()
  ;
  ; 0 - FALSE
  ; 1 - TRUE
  ;
  ; POWER;REPEAT;CS;ERROR;ERRORCODE;TEACH_LOCK;TP_EMG;OP_EMG;EX_EMG;
  ;
  WHILE TRUE DO
    ;
    CALL get.state.pc (.$data[1])
    ;
    .$data[2] = "ACTION:" + $action + ";"
    .$data[2] = .$data[2] + "GRIPPER:" + $ENCODE (current.gripper) + ";"
    .$data[2] = .$data[2] + "PICKCOUNT:" + $ENCODE (pick.count) + ";"
    .$data[2] = .$data[2] + "DEFECTCOUNT:" + $ENCODE (defect.count) + ";"
    .$data[2] = .$data[2] + "\n"
    ;
    CALL tcp.send3.pc (.$data[], 2)
    TWAIT 0.250
  END
.END
.PROGRAM tcp.send2.pc (.$data[],.data.length)
	IF tcp.socket > 0 THEN
		TCP_SEND .status, tcp.socket, .$data[1], .data.length, tcp.send.tmo
		IF .status >= 0 THEN
			.$temp = "Sent "+ $ENCODE (.data.length) + " strings"
			PRINT tcp.send.ena: .$temp
			FOR .i = 1 TO .data.length
				PRINT tcp.send.ena: .$data[.i]
			END
		ELSE
			.$temp = "Failed to send data with error:"+ $ENCODE (.status)
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
			.$temp = "Sent "+ $ENCODE (.data.length) + " strings"
			PRINT tcp.send.ena: .$temp
			FOR .i = 1 TO .data.length
				PRINT tcp.send.ena: .$data[.i]
			END
		ELSE
			.$temp = "Failed to send data with error:"+ $ENCODE (.status)
			PRINT tcp.send.ena: .$temp
			tcp.socket = -1
		END
	ELSE
		PRINT tcp.send.ena: "Failed to send data. Socket is not opened. Waiting for 5 seconds"
		TWAIT 5
	END
	;
.END
.PROGRAM Comment___ () ; Comments for IDE. Do not use.
	; @@@ PROJECT @@@
	; @@@ PROJECTNAME @@@
	; ALKU_RS007L
	; @@@ HISTORY @@@
	; @@@ INSPECTION @@@
	; @@@ CONNECTION @@@
	; RS007L
	; 192.168.7.103
	; 23
	; @@@ PROGRAM @@@
	; Group:Objects:1
	; 1:id4:F
	; 1:id1:F
	; Group:Utils:2
	; 2:safe.home:F
	; 2:log:F
	; .$msg 
	; .i 
	; 2:a.home:F
	; 2:a.align:F
	; Group:Main:3
	; 3:pos.pick:F
	; .pos 
	; .$temp 
	; .temp 
	; .disable 
	; 3:measure:F
	; .pos.machine 
	; .pos 
	; .working 
	; 3:a.main:F
	; 3:put.defect:F
	; .x 
	; .y 
	; .temp 
	; .pos 
	; 3:pg.start:F
	; .state 
	; .keep.pick 
	; .tare.chg 
	; .tare.ack 
	; .det.put 
	; .put.ack 
	; .work 
	; .working 
	; .finish 
	; .fin.ack 
	; .wait.ack 
	; .changed 
	; 3:process.data:F
	; .state 
	; 3:calc.tare:F
	; .spacer 
	; .max 
	; .detail.len.ws 
	; .i 
	; .j 
	; 3:put.tare:F
	; .j 
	; .i 
	; .working 
	; .rz 
	; .x 
	; .y 
	; .z 
	; .put 
	; Group:Teach:4
	; 4:a.teach.pos:F
	; .temp 
	; 4:a.teach.machine:F
	; .temp 
	; 4:a.teach.defect:F
	; .dtur 
	; .dtul 
	; .dtlr 
	; .i 
	; .j 
	; .x 
	; .y 
	; .defect.pos 
	; 4:a.teach.tare:F
	; .tarelb 
	; .tarerb 
	; .tarert 
	; .tare0 
	; 4:a.test.tare:F
	; .j 
	; .i 
	; .put 
	; Group:Autostart:5
	; 5:set.io.pc:B
	; .home1 
	; .work 
	; .det.put 
	; .tare.chg 
	; .tare.ack 
	; .disable 
	; .working 
	; .finish 
	; .fin.ack 
	; .put.ack 
	; .putting 
	; 5:watchdog.pc:B
	; 5:autostart.pc:B
	; 0:errstart.pc:B
	; Group:TCPIP:6
	; 6:set.vars.pc:B
	; .i 
	; 6:tcp.send.pc:B
	; .$data 
	; .data.length 
	; .status 
	; .i 
	; .tcp.error.cnt 
	; 6:tcp.callback.pc:B
	; .$data 
	; .data.length 
	; .$temp 
	; .i 
	; .$sensor.name 
	; .$sensor.state 
	; .$measurement.state 
	; .$spd 
	; .pc 
	; 6:tcp.client.pc:B
	; .tcp.retry.count 
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
	; .connected 
	; .tcp.error.cnt 
	; .$tcp.request 
	; .request.size 
	; 6:get.state.pc:B
	; .$state 
	; 6:sender.pc:B
	; .$data 
	; .pc 
	; 6:tcp.send2.pc:B
	; .$data 
	; .data.length 
	; .status 
	; .$temp 
	; .i 
	; 6:tcp.send3.pc:B
	; .$data 
	; .data.length 
	; .status 
	; .$temp 
	; .i 
	; @@@ TRANS @@@
	; @@@ JOINTS @@@
	; @@@ REALS @@@
	; @@@ STRINGS @@@
	; @@@ INTEGER @@@
	; @@@ SIGNALS @@@
	; do.bat.alm 
	; do.home1 
	; release.grip 
	; capture.grip 
	; grip.unclamp 
	; grip.clamp 
	; grip.unclamped 
	; grip.clamped 
	; di.ifp.page[] 
	; do.work[] 
	; rs13.home1 
	; rs13.work[] 
	; s.tcp.ena 
	; s.tcp.recv.ena 
	; s.tcp.send.ena 
	; s.in1.disable 
	; s.in2.disable 
	; rs13.det.put 
	; rs7.working 
	; rs7.tare.chg 
	; rs13.tare.ack 
	; s.measure.ok 
	; s.measure.ng 
	; s.vacuum 
	; s.debug 
	; s.apply.coord 
	; rs13.finish 
	; rs07.fin.ack 
	; rs07.put.ack 
	; do.hold 
	; di.hold 
	; @@@ TOOLS @@@
	; tool.pick[] 
	; @@@ BASE @@@
	; @@@ FRAME @@@
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
tool.pick[2] 0.000000 10.000000 120.000000 0.000000 0.000000 0.000000
tool.pick[3] 0.000000 10.000000 120.000000 0.000000 0.000000 0.000000
tool.pick[4] 0.000000 10.000000 120.000000 0.000000 0.000000 0.000000
tool.pick[5] 0.000000 10.000000 120.000000 0.000000 0.000000 0.000000
defect.frame 658.467712 -73.018570 -28.996628 172.801697 0.974690 -173.392807
defect.pos[1,1] 556.331299 -118.299080 -342.574036 179.721329 0.143653 -178.687012
defect.pos[1,2] 584.126709 -117.797249 -342.504364 179.721329 0.143653 -178.687012
defect.pos[1,3] 611.922058 -117.295418 -342.434662 179.721329 0.143653 -178.687012
defect.pos[1,4] 639.717468 -116.793594 -342.364990 179.721329 0.143653 -178.687012
defect.pos[1,5] 667.512817 -116.291763 -342.295319 179.721329 0.143653 -178.687012
defect.pos[2,1] 611.922058 -117.295418 -342.434662 179.721329 0.143653 -178.687012
defect.pos[2,2] 639.717468 -116.793594 -342.364990 179.721329 0.143653 -178.687012
defect.pos[2,3] 667.512817 -116.291763 -342.295319 179.721329 0.143653 -178.687012
defect.pos[2,4] 695.308228 -115.789932 -342.225616 179.721329 0.143653 -178.687012
defect.pos[2,5] 723.103638 -115.288109 -342.155945 179.721329 0.143653 -178.687012
defect.pos[3,1] 667.512817 -116.291763 -342.295319 179.721329 0.143653 -178.687012
defect.pos[3,2] 695.308228 -115.789932 -342.225616 179.721329 0.143653 -178.687012
defect.pos[3,3] 723.103577 -115.288109 -342.155945 179.721329 0.143653 -178.687012
defect.pos[3,4] 750.898987 -114.786278 -342.086243 179.721329 0.143653 -178.687012
defect.pos[3,5] 778.694336 -114.284447 -342.016571 179.721329 0.143653 -178.687012
defect.pos[4,1] 723.103638 -115.288109 -342.155945 179.721329 0.143653 -178.687012
defect.pos[4,2] 750.898987 -114.786278 -342.086243 179.721329 0.143653 -178.687012
defect.pos[4,3] 778.694336 -114.284447 -342.016571 179.721329 0.143653 -178.687012
defect.pos[4,4] 806.489746 -113.782616 -341.946899 179.721329 0.143653 -178.687012
defect.pos[4,5] 834.285156 -113.280792 -341.877197 179.721329 0.143653 -178.687012
defect.pos[5,1] 667.512817 -116.291763 -342.295319 179.721329 0.143653 -178.687012
defect.pos[5,2] 723.103638 -115.288109 -342.155945 179.721329 0.143653 -178.687012
defect.pos[5,3] 778.694336 -114.284447 -342.016571 179.721329 0.143653 -178.687012
defect.pos[5,4] 834.285156 -113.280792 -341.877197 179.721329 0.143653 -178.687012
defect.pos[5,5] 889.875916 -112.277130 -341.737854 179.721329 0.143653 -178.687012
defect.pos[6,1] 695.308228 -115.789932 -342.225616 179.721329 0.143653 -178.687012
defect.pos[6,2] 750.898987 -114.786278 -342.086243 179.721329 0.143653 -178.687012
defect.pos[6,3] 806.489746 -113.782616 -341.946899 179.721329 0.143653 -178.687012
defect.pos[6,4] 862.080505 -112.778961 -341.807526 179.721329 0.143653 -178.687012
defect.pos[6,5] 917.671265 -111.775307 -341.668152 179.721329 0.143653 -178.687012
defect.pos[7,1] 723.103577 -115.288109 -342.155945 179.721329 0.143653 -178.687012
defect.pos[7,2] 778.694336 -114.284447 -342.016571 179.721329 0.143653 -178.687012
defect.pos[7,3] 834.285095 -113.280792 -341.877197 179.721329 0.143653 -178.687012
defect.pos[7,4] 889.875916 -112.277130 -341.737854 179.721329 0.143653 -178.687012
defect.pos[7,5] 945.466675 -111.273476 -341.598480 179.721329 0.143653 -178.687012
defect.pos[8,1] 750.898987 -114.786278 -342.086243 179.721329 0.143653 -178.687012
defect.pos[8,2] 806.489746 -113.782616 -341.946899 179.721329 0.143653 -178.687012
defect.pos[8,3] 862.080505 -112.778961 -341.807526 179.721329 0.143653 -178.687012
defect.pos[8,4] 917.671265 -111.775307 -341.668152 179.721329 0.143653 -178.687012
defect.pos[8,5] 973.262085 -110.771645 -341.528809 179.721329 0.143653 -178.687012
defect.pos[9,1] 778.694336 -114.284447 -342.016571 179.721329 0.143653 -178.687012
defect.pos[9,2] 834.285156 -113.280792 -341.877197 179.721329 0.143653 -178.687012
defect.pos[9,3] 889.875916 -112.277130 -341.737854 179.721329 0.143653 -178.687012
defect.pos[9,4] 945.466675 -111.273476 -341.598480 179.721329 0.143653 -178.687012
defect.pos[9,5] 1001.057495 -110.269814 -341.459106 179.721329 0.143653 -178.687012
defect.pos[10,1] 806.489746 -113.782616 -341.946899 179.721329 0.143653 -178.687012
defect.pos[10,2] 862.080566 -112.778961 -341.807526 179.721329 0.143653 -178.687012
defect.pos[10,3] 917.671265 -111.775307 -341.668152 179.721329 0.143653 -178.687012
defect.pos[10,4] 973.262085 -110.771645 -341.528809 179.721329 0.143653 -178.687012
defect.pos[10,5] 1028.852783 -109.767990 -341.389435 179.721329 0.143653 -178.687012
test 26.184204 544.134399 143.333954 -103.807800 179.145859 97.269279
defect.pos[0,0] 472.945160 -119.804565 -342.783081 179.721329 0.143653 -178.687012
defect.pos[0,1] 500.740540 -119.302734 -342.713409 179.721329 0.143653 -178.687012
defect.pos[0,2] 528.535950 -118.800911 -342.643707 179.721329 0.143653 -178.687012
defect.pos[0,3] 556.331299 -118.299080 -342.574036 179.721329 0.143653 -178.687012
defect.pos[0,4] 584.126709 -117.797249 -342.504364 179.721329 0.143653 -178.687012
defect.pos[1,0] 528.535950 -118.800911 -342.643707 179.721329 0.143653 -178.687012
defect.pos[2,0] 584.126709 -117.797249 -342.504364 179.721329 0.143653 -178.687012
defect.pos[3,0] 639.717468 -116.793594 -342.364990 179.721329 0.143653 -178.687012
defect.pos[4,0] 695.308228 -115.789932 -342.225616 179.721329 0.143653 -178.687012
defect.pos[5,0] 611.922058 -117.295418 -342.434662 179.721329 0.143653 -178.687012
defect.pos[6,0] 639.717468 -116.793594 -342.364990 179.721329 0.143653 -178.687012
defect.pos[7,0] 667.512817 -116.291763 -342.295319 179.721329 0.143653 -178.687012
defect.pos[8,0] 695.308228 -115.789932 -342.225616 179.721329 0.143653 -178.687012
defect.pos[9,0] 723.103638 -115.288109 -342.155945 179.721329 0.143653 -178.687012
defect.pos[0,5] 611.922058 -117.295418 -342.434662 179.721329 0.143653 -178.687012
defect.pos[0,6] 639.717468 -116.793594 -342.364990 179.721329 0.143653 -178.687012
defect.pos[0,7] 667.512817 -116.291763 -342.295319 179.721329 0.143653 -178.687012
defect.pos[0,8] 695.308228 -115.789932 -342.225616 179.721329 0.143653 -178.687012
defect.pos[0,9] 723.103638 -115.288109 -342.155945 179.721329 0.143653 -178.687012
defect.pos[1,6] 695.308228 -115.789932 -342.225616 179.721329 0.143653 -178.687012
defect.pos[1,7] 723.103577 -115.288109 -342.155945 179.721329 0.143653 -178.687012
defect.pos[1,8] 750.898987 -114.786278 -342.086243 179.721329 0.143653 -178.687012
defect.pos[1,9] 778.694336 -114.284447 -342.016571 179.721329 0.143653 -178.687012
defect.pos[2,6] 750.898987 -114.786278 -342.086243 179.721329 0.143653 -178.687012
defect.pos[2,7] 778.694336 -114.284447 -342.016571 179.721329 0.143653 -178.687012
defect.pos[2,8] 806.489746 -113.782616 -341.946899 179.721329 0.143653 -178.687012
defect.pos[2,9] 834.285156 -113.280792 -341.877197 179.721329 0.143653 -178.687012
defect.pos[3,6] 806.489746 -113.782616 -341.946899 179.721329 0.143653 -178.687012
defect.pos[3,7] 834.285095 -113.280792 -341.877197 179.721329 0.143653 -178.687012
defect.pos[3,8] 862.080505 -112.778961 -341.807526 179.721329 0.143653 -178.687012
defect.pos[3,9] 889.875916 -112.277130 -341.737854 179.721329 0.143653 -178.687012
defect.pos[4,6] 862.080505 -112.778961 -341.807526 179.721329 0.143653 -178.687012
defect.pos[4,7] 889.875916 -112.277130 -341.737854 179.721329 0.143653 -178.687012
defect.pos[4,8] 917.671265 -111.775307 -341.668152 179.721329 0.143653 -178.687012
defect.pos[4,9] 945.466675 -111.273476 -341.598480 179.721329 0.143653 -178.687012
tare.frame -145.166809 539.605957 -5.568207 -84.510628 1.748560 -95.627411
tare.put[1,1] -129.095779 568.554688 -4.735456 -84.510628 1.748560 -95.627411
tare.put[1,2] -129.024628 597.541199 -3.854832 -84.510628 1.748560 -95.627411
tare.put[1,3] -128.953476 626.527771 -2.974208 -84.510628 1.748560 -95.627411
tare.put[1,4] -128.882324 655.514282 -2.093584 -84.510628 1.748560 -95.627411
tare.put[1,5] -128.811172 684.500854 -1.212961 -84.510628 1.748560 -95.627411
tare.put[1,6] -128.740021 713.487366 -0.332336 -84.510628 1.748560 -95.627411
tare.put[1,7] -128.668884 742.473938 0.548287 -84.510628 1.748560 -95.627411
tare.put[1,8] -128.676239 739.475342 0.457189 -84.510628 1.748560 -95.627411
tare.put[2,1] -113.095886 568.516846 -4.783330 -84.510628 1.748560 -95.627411
tare.put[2,2] -113.024742 597.503418 -3.902706 -84.510628 1.748560 -95.627411
tare.put[2,3] -112.953590 626.489929 -3.022082 -84.510628 1.748560 -95.627411
tare.put[2,4] -112.882439 655.476501 -2.141458 -84.510628 1.748560 -95.627411
tare.put[2,5] -112.811295 684.463013 -1.260834 -84.510628 1.748560 -95.627411
tare.put[2,6] -112.740143 713.449585 -0.380210 -84.510628 1.748560 -95.627411
tare.put[2,7] -112.668991 742.436096 0.500414 -84.510628 1.748560 -95.627411
tare.put[2,8] -112.676346 739.437500 0.409315 -84.510628 1.748560 -95.627411
tare.put[3,1] -97.096008 568.479065 -4.831204 -84.510628 1.748560 -95.627411
tare.put[3,2] -97.024857 597.465576 -3.950580 -84.510628 1.748560 -95.627411
tare.put[3,3] -96.953705 626.452148 -3.069956 -84.510628 1.748560 -95.627411
tare.put[3,4] -96.882553 655.438660 -2.189332 -84.510628 1.748560 -95.627411
tare.put[3,5] -96.811409 684.425171 -1.308708 -84.510628 1.748560 -95.627411
tare.put[3,6] -96.740257 713.411743 -0.428084 -84.510628 1.748560 -95.627411
tare.put[3,7] -96.669113 742.398315 0.452540 -84.510628 1.748560 -95.627411
tare.put[3,8] -96.676468 739.399658 0.361441 -84.510628 1.748560 -95.627411
tare.put[4,1] -81.096123 568.441223 -4.879078 -84.510628 1.748560 -95.627411
tare.put[4,2] -81.024971 597.427734 -3.998454 -84.510628 1.748560 -95.627411
tare.put[4,3] -80.953819 626.414307 -3.117830 -84.510628 1.748560 -95.627411
tare.put[4,4] -80.882675 655.400818 -2.237206 -84.510628 1.748560 -95.627411
tare.put[4,5] -80.811523 684.387390 -1.356582 -84.510628 1.748560 -95.627411
tare.put[4,6] -80.740372 713.373901 -0.475957 -84.510628 1.748560 -95.627411
tare.put[4,7] -80.669220 742.360474 0.404666 -84.510628 1.748560 -95.627411
tare.put[4,8] -80.676582 739.361816 0.313568 -84.510628 1.748560 -95.627411
tare.put[5,1] -65.096237 568.403381 -4.926951 -84.510628 1.748560 -95.627411
tare.put[5,2] -65.025085 597.389954 -4.046328 -84.510628 1.748560 -95.627411
tare.put[5,3] -64.953941 626.376465 -3.165704 -84.510628 1.748560 -95.627411
tare.put[5,4] -64.882790 655.363037 -2.285079 -84.510628 1.748560 -95.627411
tare.put[5,5] -64.811638 684.349548 -1.404456 -84.510628 1.748560 -95.627411
tare.put[5,6] -64.740494 713.336121 -0.523831 -84.510628 1.748560 -95.627411
tare.put[5,7] -64.669342 742.322632 0.356792 -84.510628 1.748560 -95.627411
tare.put[5,8] -64.676697 739.324036 0.265694 -84.510628 1.748560 -95.627411
tare.put[6,1] -49.096352 568.365601 -4.974825 -84.510628 1.748560 -95.627411
tare.put[6,2] -49.025208 597.352112 -4.094201 -84.510628 1.748560 -95.627411
tare.put[6,3] -48.954056 626.338684 -3.213577 -84.510628 1.748560 -95.627411
tare.put[6,4] -48.882904 655.325195 -2.332953 -84.510628 1.748560 -95.627411
tare.put[6,5] -48.811752 684.311768 -1.452330 -84.510628 1.748560 -95.627411
tare.put[6,6] -48.740601 713.298279 -0.571705 -84.510628 1.748560 -95.627411
tare.put[6,7] -48.669456 742.284790 0.308919 -84.510628 1.748560 -95.627411
tare.put[6,8] -48.676811 739.286194 0.217820 -84.510628 1.748560 -95.627411
tare.put[7,1] -33.096466 568.327759 -5.022699 -84.510628 1.748560 -95.627411
tare.put[7,2] -33.025314 597.314331 -4.142075 -84.510628 1.748560 -95.627411
tare.put[7,3] -32.954170 626.300842 -3.261451 -84.510628 1.748560 -95.627411
tare.put[7,4] -32.883018 655.287354 -2.380827 -84.510628 1.748560 -95.627411
tare.put[7,5] -32.811867 684.273926 -1.500203 -84.510628 1.748560 -95.627411
tare.put[7,6] -32.740723 713.260498 -0.619579 -84.510628 1.748560 -95.627411
tare.put[7,7] -32.669571 742.247009 0.261045 -84.510628 1.748560 -95.627411
tare.put[7,8] -32.676926 739.248413 0.169946 -84.510628 1.748560 -95.627411
tare.put[8,1] -17.096588 568.289917 -5.070573 -84.510628 1.748560 -95.627411
tare.put[8,2] -17.025436 597.276489 -4.189949 -84.510628 1.748560 -95.627411
tare.put[8,3] -16.954285 626.263000 -3.309325 -84.510628 1.748560 -95.627411
tare.put[8,4] -16.883133 655.249573 -2.428701 -84.510628 1.748560 -95.627411
tare.put[8,5] -16.811981 684.236084 -1.548077 -84.510628 1.748560 -95.627411
tare.put[8,6] -16.740829 713.222656 -0.667453 -84.510628 1.748560 -95.627411
tare.put[8,7] -16.669678 742.209167 0.213171 -84.510628 1.748560 -95.627411
tare.put[8,8] -16.677048 739.210571 0.122072 -84.510628 1.748560 -95.627411
tare.put[9,1] -1.096695 568.252136 -5.118447 -84.510628 1.748560 -95.627411
tare.put[9,2] -1.025543 597.238647 -4.237823 -84.510628 1.748560 -95.627411
tare.put[9,3] -0.954391 626.225220 -3.357198 -84.510628 1.748560 -95.627411
tare.put[9,4] -0.883240 655.211731 -2.476574 -84.510628 1.748560 -95.627411
tare.put[9,5] -0.812103 684.198303 -1.595951 -84.510628 1.748560 -95.627411
tare.put[9,6] -0.740952 713.184814 -0.715326 -84.510628 1.748560 -95.627411
tare.put[9,7] -0.669800 742.171387 0.165298 -84.510628 1.748560 -95.627411
tare.put[9,8] -0.677155 739.172729 0.074199 -84.510628 1.748560 -95.627411
tare.put[10,1] 14.903183 568.214294 -5.166320 -84.510628 1.748560 -95.627411
tare.put[10,2] 14.974335 597.200867 -4.285697 -84.510628 1.748560 -95.627411
tare.put[10,3] 15.045486 626.187378 -3.405072 -84.510628 1.748560 -95.627411
tare.put[10,4] 15.116638 655.173950 -2.524448 -84.510628 1.748560 -95.627411
tare.put[10,5] 15.187775 684.160461 -1.643825 -84.510628 1.748560 -95.627411
tare.put[10,6] 15.258926 713.146973 -0.763200 -84.510628 1.748560 -95.627411
tare.put[10,7] 15.330078 742.133545 0.117424 -84.510628 1.748560 -95.627411
tare.put[10,8] 15.322723 739.134949 0.026325 -84.510628 1.748560 -95.627411
tare.put[11,1] 30.903076 568.176514 -5.214194 -84.510628 1.748560 -95.627411
tare.put[11,2] 30.974228 597.163025 -4.333570 -84.510628 1.748560 -95.627411
tare.put[11,3] 31.045380 626.149536 -3.452946 -84.510628 1.748560 -95.627411
tare.put[11,4] 31.116516 655.136108 -2.572322 -84.510628 1.748560 -95.627411
tare.put[11,5] 31.187668 684.122681 -1.691698 -84.510628 1.748560 -95.627411
tare.put[11,6] 31.258820 713.109192 -0.811074 -84.510628 1.748560 -95.627411
tare.put[11,7] 31.329971 742.095703 0.069550 -84.510628 1.748560 -95.627411
tare.put[11,8] 31.322617 739.097107 -0.021549 -84.510628 1.748560 -95.627411
tare.put[12,1] 46.902954 568.138672 -5.262068 -84.510628 1.748560 -95.627411
tare.put[12,2] 46.974106 597.125244 -4.381444 -84.510628 1.748560 -95.627411
tare.put[12,3] 47.045258 626.111755 -3.500820 -84.510628 1.748560 -95.627411
tare.put[12,4] 47.116394 655.098267 -2.620196 -84.510628 1.748560 -95.627411
tare.put[12,5] 47.187546 684.084839 -1.739572 -84.510628 1.748560 -95.627411
tare.put[12,6] 47.258698 713.071350 -0.858948 -84.510628 1.748560 -95.627411
tare.put[12,7] 47.329849 742.057922 0.021676 -84.510628 1.748560 -95.627411
tare.put[12,8] 47.322495 739.059326 -0.069423 -84.510628 1.748560 -95.627411
tare.put[13,1] 62.902847 568.100830 -5.309942 -84.510628 1.748560 -95.627411
tare.put[13,2] 62.973999 597.087402 -4.429317 -84.510628 1.748560 -95.627411
tare.put[13,3] 63.045151 626.073914 -3.548694 -84.510628 1.748560 -95.627411
tare.put[13,4] 63.116302 655.060486 -2.668070 -84.510628 1.748560 -95.627411
tare.put[13,5] 63.187439 684.046997 -1.787446 -84.510628 1.748560 -95.627411
tare.put[13,6] 63.258591 713.033569 -0.906821 -84.510628 1.748560 -95.627411
tare.put[13,7] 63.329742 742.020081 -0.026197 -84.510628 1.748560 -95.627411
tare.put[13,8] 63.322388 739.021484 -0.117296 -84.510628 1.748560 -95.627411
tare.put[14,1] 78.902725 568.063049 -5.357816 -84.510628 1.748560 -95.627411
tare.put[14,2] 78.973877 597.049561 -4.477191 -84.510628 1.748560 -95.627411
tare.put[14,3] 79.045029 626.036133 -3.596567 -84.510628 1.748560 -95.627411
tare.put[14,4] 79.116180 655.022644 -2.715943 -84.510628 1.748560 -95.627411
tare.put[14,5] 79.187317 684.009155 -1.835320 -84.510628 1.748560 -95.627411
tare.put[14,6] 79.258469 712.995728 -0.954695 -84.510628 1.748560 -95.627411
tare.put[14,7] 79.329620 741.982300 -0.074071 -84.510628 1.748560 -95.627411
tare.put[14,8] 79.322266 738.983643 -0.165170 -84.510628 1.748560 -95.627411
tare.put[15,1] 94.902618 568.025208 -5.405689 -84.510628 1.748560 -95.627411
tare.put[15,2] 94.973770 597.011780 -4.525065 -84.510628 1.748560 -95.627411
tare.put[15,3] 95.044922 625.998291 -3.644441 -84.510628 1.748560 -95.627411
tare.put[15,4] 95.116058 654.984863 -2.763817 -84.510628 1.748560 -95.627411
tare.put[15,5] 95.187210 683.971375 -1.883193 -84.510628 1.748560 -95.627411
tare.put[15,6] 95.258362 712.957886 -1.002569 -84.510628 1.748560 -95.627411
tare.put[15,7] 95.329514 741.944458 -0.121945 -84.510628 1.748560 -95.627411
tare.put[15,8] 95.322159 738.945862 -0.213044 -84.510628 1.748560 -95.627411
tare.put[16,1] 110.902496 567.987427 -5.453563 -84.510628 1.748560 -95.627411
tare.put[16,2] 110.973633 596.973938 -4.572939 -84.510628 1.748560 -95.627411
tare.put[16,3] 111.044800 625.960449 -3.692315 -84.510628 1.748560 -95.627411
tare.put[16,4] 111.115936 654.947021 -2.811691 -84.510628 1.748560 -95.627411
tare.put[16,5] 111.187103 683.933533 -1.931067 -84.510628 1.748560 -95.627411
tare.put[16,6] 111.258240 712.920105 -1.050443 -84.510628 1.748560 -95.627411
tare.put[16,7] 111.329407 741.906616 -0.169819 -84.510628 1.748560 -95.627411
tare.put[16,8] 111.322021 738.908020 -0.260918 -84.510628 1.748560 -95.627411
tare.put[17,1] 126.902374 567.949585 -5.501437 -84.510628 1.748560 -95.627411
tare.put[17,2] 126.973541 596.936096 -4.620813 -84.510628 1.748560 -95.627411
tare.put[17,3] 127.044678 625.922668 -3.740189 -84.510628 1.748560 -95.627411
tare.put[17,4] 127.115845 654.909180 -2.859565 -84.510628 1.748560 -95.627411
tare.put[17,5] 127.186981 683.895752 -1.978941 -84.510628 1.748560 -95.627411
tare.put[17,6] 127.258148 712.882263 -1.098317 -84.510628 1.748560 -95.627411
tare.put[17,7] 127.329285 741.868835 -0.217693 -84.510628 1.748560 -95.627411
tare.put[17,8] 127.321930 738.870239 -0.308792 -84.510628 1.748560 -95.627411
tare.put[18,1] 142.902252 567.911743 -5.549311 -84.510628 1.748560 -95.627411
tare.put[18,2] 142.973419 596.898315 -4.668686 -84.510628 1.748560 -95.627411
tare.put[18,3] 143.044556 625.884827 -3.788063 -84.510628 1.748560 -95.627411
tare.put[18,4] 143.115723 654.871399 -2.907439 -84.510628 1.748560 -95.627411
tare.put[18,5] 143.186859 683.857910 -2.026815 -84.510628 1.748560 -95.627411
tare.put[18,6] 143.258026 712.844482 -1.146190 -84.510628 1.748560 -95.627411
tare.put[18,7] 143.329163 741.830994 -0.265566 -84.510628 1.748560 -95.627411
tare.put[18,8] 143.321808 738.832397 -0.356665 -84.510628 1.748560 -95.627411
tare.put[19,1] 158.902130 567.873962 -5.597184 -84.510628 1.748560 -95.627411
tare.put[19,2] 158.973297 596.860474 -4.716560 -84.510628 1.748560 -95.627411
tare.put[19,3] 159.044434 625.847046 -3.835936 -84.510628 1.748560 -95.627411
tare.put[19,4] 159.115601 654.833557 -2.955312 -84.510628 1.748560 -95.627411
tare.put[19,5] 159.186737 683.820068 -2.074688 -84.510628 1.748560 -95.627411
tare.put[19,6] 159.257904 712.806641 -1.194064 -84.510628 1.748560 -95.627411
tare.put[19,7] 159.329041 741.793213 -0.313440 -84.510628 1.748560 -95.627411
tare.put[19,8] 159.321686 738.794556 -0.404539 -84.510628 1.748560 -95.627411
tare.put[20,1] 174.902008 567.836121 -5.645058 -84.510628 1.748560 -95.627411
tare.put[20,2] 174.973175 596.822693 -4.764434 -84.510628 1.748560 -95.627411
tare.put[20,3] 175.044312 625.809204 -3.883810 -84.510628 1.748560 -95.627411
tare.put[20,4] 175.115479 654.795776 -3.003186 -84.510628 1.748560 -95.627411
tare.put[20,5] 175.186615 683.782288 -2.122562 -84.510628 1.748560 -95.627411
tare.put[20,6] 175.257782 712.768799 -1.241938 -84.510628 1.748560 -95.627411
tare.put[20,7] 175.328918 741.755371 -0.361314 -84.510628 1.748560 -95.627411
tare.put[20,8] 175.321564 738.756714 -0.452413 -84.510628 1.748560 -95.627411
.END
.JOINTS
#homyak 13.751368 -37.185059 -123.196098 -0.000879 -93.838348 7.315494
#measure.side -85.847610 -37.440678 -123.302292 -0.000879 -93.987350 10.391983
#pos.pos[4] -21.233936 18.726564 -91.757652 16.669336 -62.311707 127.879379
#defect.pos[0,0] 97.146027 31.023092 -86.340256 0.005232 -61.379795 105.926476
#defect.pos[0,1] 92.288582 30.582504 -87.042999 -0.088948 -61.122654 110.828690
#defect.pos[0,2] 87.406532 30.667902 -86.924812 -0.182884 -61.165901 115.755318
#defect.pos[0,3] 82.570091 31.278227 -85.985413 -0.273760 -61.510643 120.633453
#defect.pos[0,4] 77.845634 32.407333 -84.221809 -0.359029 -62.165283 125.394310
#defect.pos[1,0] 96.879852 34.113087 -81.382401 -0.000141 -63.237907 106.195015
#defect.pos[1,1] 92.218857 33.679443 -82.091194 -0.088978 -62.967842 110.895744
#defect.pos[1,2] 87.536125 33.763165 -81.972031 -0.177557 -63.013264 115.617935
#defect.pos[1,3] 82.893700 34.363625 -81.024208 -0.263394 -63.375305 120.297203
#defect.pos[1,4] 78.350433 35.477821 -79.241096 -0.344235 -64.063026 124.872406
#defect.pos[2,0] 96.634369 37.300526 -76.148842 -0.004966 -65.274292 106.442406
#defect.pos[2,1] 92.154617 36.869190 -76.869972 -0.088885 -64.989563 110.957008
#defect.pos[2,2] 87.655602 36.952034 -76.748840 -0.172541 -65.037407 115.490631
#defect.pos[2,3] 83.192345 37.548950 -75.784073 -0.253737 -65.419106 119.986015
#defect.pos[2,4] 78.817314 38.660183 -73.964752 -0.330473 -66.144791 124.388603
#defect.pos[3,0] 96.407295 40.620869 -70.578766 -0.009306 -67.514290 106.670937
#defect.pos[3,1] 92.095284 40.186455 -71.320396 -0.088702 -67.212120 111.013123
#defect.pos[3,2] 87.766098 40.269386 -71.195869 -0.167833 -67.262878 115.372200
#defect.pos[3,3] 83.468796 40.869968 -70.203217 -0.244755 -67.667999 119.697075
#defect.pos[3,4] 79.250351 41.992245 -68.325829 -0.317693 -68.439651 123.938759
#defect.pos[4,0] 96.196648 44.122074 -64.585587 -0.013221 -69.996513 106.882629
#defect.pos[4,1] 92.040306 43.677868 -65.358940 -0.088459 -69.672401 111.064537
#defect.pos[4,2] 87.868622 43.762028 -65.229187 -0.163432 -69.726784 115.261551
#defect.pos[4,3] 83.725487 44.375458 -64.193367 -0.236422 -70.161537 119.427742
#defect.pos[4,4] 79.653076 45.526817 -62.227226 -0.305856 -70.991890 123.519081
#defect.pos[5,0] 96.000717 47.874184 -58.038605 -0.016766 -72.781685 107.079193
#defect.pos[5,1] 91.989265 47.410694 -58.860619 -0.088185 -72.428169 111.111671
#defect.pos[5,2] 87.963997 47.497662 -58.722839 -0.159346 -72.487411 115.157700
#defect.pos[5,3] 83.964439 48.136765 -57.621006 -0.228730 -72.961868 119.175850
#defect.pos[5,4] 80.028564 49.343269 -55.518978 -0.294945 -73.872101 123.126236
#defect.pos[6,0] 95.818069 51.988895 -50.724560 -0.019989 -75.971359 107.262062
#defect.pos[6,1] 91.941765 51.491169 -51.623158 -0.087917 -75.575447 111.154816
#defect.pos[6,2] 88.053009 51.583450 -51.472759 -0.155595 -75.641685 115.059700
#defect.pos[6,3] 84.187469 52.268700 -50.266685 -0.221688 -76.173676 118.939209
#defect.pos[6,4] 80.379471 53.573593 -47.947388 -0.284977 -77.201988 122.757011
#defect.pos[7,0] 95.647453 56.670723 -42.247704 -0.022945 -79.756874 107.432503
#defect.pos[7,1] 91.897499 56.110088 -43.277905 -0.087706 -79.292206 111.194061
#defect.pos[7,2] 88.136322 56.212360 -43.105942 -0.152230 -79.369705 114.966484
#defect.pos[7,3] 84.396156 56.983196 -41.719994 -0.215360 -79.995491 118.715599
#defect.pos[7,4] 80.708191 58.473618 -39.015545 -0.276052 -81.222733 122.408058
#defect.pos[8,0] 95.487831 62.389374 -31.692160 -0.025698 -84.584503 107.591484
#defect.pos[8,1] 91.856262 61.691971 -32.997654 -0.087649 -83.981216 111.229149
#defect.pos[8,2] 88.214569 61.816032 -32.781216 -0.149388 -84.081131 114.876572
#defect.pos[8,3] 84.591972 62.775574 -31.014746 -0.209952 -84.898285 118.502144
#defect.pos[8,4] 81.016891 64.703995 -27.433018 -0.268541 -86.564247 122.074577
#defect.pos[9,0] 95.338570 71.088867 -15.254017 -0.028404 -92.314690 107.739197
#defect.pos[9,1] 91.818092 69.810455 -17.703978 -0.088098 -91.147713 111.258217
#defect.pos[9,2] 88.288506 70.021667 -17.315239 -0.147653 -91.332550 114.785698
#defect.pos[9,3] 84.776497 71.838486 -13.860115 -0.206584 -92.980858 118.290405
#defect.pos[9,4] 81.938423 63.187862 -74.332237 0.001347 -42.483570 120.579453
#dtlr 97.141563 30.778198 -86.732834 0.022852 -60.682987 107.977257
#dtul 80.256454 48.302124 -57.362587 -0.444727 -72.541359 125.001823
#dtur 96.007767 47.274536 -59.097469 -0.012305 -71.775055 109.124313
#tare0 -14.483058 19.727785 -99.746216 -0.044824 -60.321125 36.061401
#tarelb -17.771484 19.531130 -105.070885 -0.043066 -55.206303 39.353027
#tarerb 20.170900 20.364260 -104.057533 -0.065918 -55.349121 1.423169
#tarert 8.931886 44.847294 -64.250351 -0.056250 -70.603638 12.642737
.END
.REALS
tcp.socket = 34
tcp.port = 9007
ip[1] = 192
tcp.connect.tmo = 5
do.bat.alm = 2010
do.home1 = 17
ip[2] = 168
ip[3] = 7
ip[4] = 100
start.task = 2001
tcp.dbg = -1
tcp.receive.tmo = 5
tcp.recv.dbg = -1
tcp.send.dbg = -1
tcp.send.tmo = 5
release.grip = 1
capture.grip = 2
grip.unclamp = 3
grip.clamp = 4
grip.unclamped = 1001
grip.clamped = 1002
capture.tare = 2
di.ifp.page[1] = 2001
di.ifp.page[2] = 2002
di.ifp.page[3] = 2003
di.ifp.page[4] = 2004
di.ifp.page[5] = 2005
di.ifp.page[6] = 2006
di.ifp.page[7] = 2007
di.ifp.page[8] = 2008
do.work[1] = 18
release.tare = 1
rs13.home1 = 1017
rs13.work[1] = 1018
s.tcp.ena = 2013
s.tcp.recv.ena = 2012
s.tcp.send.ena = 2011
tcp.ena = -1
tcp.recv.ena = -1
tcp.send.ena = -1
tyterm = 0
s.in1.disable = 2017
s.in2.disable = 2018
rs13.det.put = 1019
rs7.working = 19
rs7.tare.chg = 20
rs13.tare.ack = 1020
s.measure.ok = 2019
s.measure.ng = 2020
s.vacuum = 2021
hmi.obj.id = 1
s.debug = 2024
hmi.defect.pos = 1
current.gripper = 1
s.apply.coord = 2014
start.shift.x = 0
start.shift.y = 0
start.shift.z = 0
max.tare.count = 126
spc.tare.count = 50
defect.count = 1
rs13.finish = 1021
rs07.fin.ack = 21
rs07.put.ack = 22
detail.length = 27.5
grip.180xsh[1] = 20
grip.180xsh[2] = 0
grip.180xsh[3] = 0
grip.180xsh[4] = 0
grip.180xsh[5] = 0
grip.180xsh[6] = 0
grip.180xsh[7] = 0
grip.180xsh[8] = 0
grip.180xsh[9] = 0
grip.180ysh[1] = -10
grip.180ysh[2] = 0
grip.180ysh[3] = 0
grip.180ysh[4] = 0
grip.180ysh[5] = 0
grip.180ysh[6] = 0
grip.180ysh[7] = 0
grip.180ysh[8] = 0
grip.180ysh[9] = 0
grip.xsh[1] = 32
grip.xsh[2] = 0
grip.xsh[3] = 0
grip.xsh[4] = 0
grip.xsh[5] = 0
grip.xsh[6] = 0
grip.xsh[7] = 0
grip.xsh[8] = 0
grip.xsh[9] = 0
grip.ysh[1] = 23
grip.ysh[2] = 0
grip.ysh[3] = 0
grip.ysh[4] = 0
grip.ysh[5] = 0
grip.ysh[6] = 0
grip.ysh[7] = 0
grip.ysh[8] = 0
grip.ysh[9] = 0
grip.zsh[1] = -10
grip.zsh[2] = 0
grip.zsh[3] = 0
grip.zsh[4] = 0
grip.zsh[5] = 0
grip.zsh[6] = 0
grip.zsh[7] = 0
grip.zsh[8] = 0
grip.zsh[9] = 0
gripper.type = 2
hmi.g180x = 20
hmi.g180y = -10
hmi.gx = 32
hmi.gy = 23
hmi.gz = -10
hmi.pos.pos = 4
hmi.tare.pos = 23
hmi.tool.no = 1
keep.tool.no = 1
lines.diff = 16
max.in.line = 7.18966
min.spacer = 1.5
mon.speed = 100
object.id = 1
pick.count = 5
rs7.det.picked = 19
s.grip.sns1.dis = 2014
s.grip.sns2.dis = 2015
tare.lines = 20
tare.width = 210
rs013.putting = 1023
do.hold = 1024
di.hold = 2026
.END
.STRINGS
$tcp.ip = "192.168.7.100"
$action = "WaitingMMResult"
$log.entry[0] = "17:06:07 Move to measurement machine. State: TakingFromMM"
$log.entry[1] = "17:06:15 Putting to defect. State: PutToTare "
$log.entry[2] = "17:06:18 Pick detail from positioner 1"
$log.entry[3] = "17:06:18 State: TakeFromPositioner"
$log.entry[4] = "17:06:21 Move to measurement machine. State: TakingToMM"
$log.entry[5] = "17:06:29 Move to measurement machine. State: WaitingMMResult"
$log.entry[6] = "17:06:34 Move to measurement machine. State: TakingFromMM"
$log.entry[7] = "17:06:41 Putting to defect. State: PutToTare "
$log.entry[8] = "17:06:44 Pick detail from positioner 1"
$log.entry[9] = "17:06:44 State: TakeFromPositioner"
$log.entry[10] = "17:06:46 Move to measurement machine. State: TakingToMM"
$log.entry[11] = "17:06:49 Move to measurement machine. State: WaitingMMResult"
.END
