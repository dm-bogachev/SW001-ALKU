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
104,4,1,"OFF     ON","","","  DEBUG ",10,4,4,2024,0,0
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
.PROGRAM a.align ()
	ALIGN
.END
.PROGRAM a.home ()
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
.PROGRAM a.teach.defect ()
  IF FALSE THEN
    SPEED 250 MM/S ALWAYS
    ACCURACY 0 ALWAYS
    TOOL tool.pick[hmi.tool.no]
    ;
    LMOVE #dtlr ; *** TEACH POINT *** Lower right
    LMOVE #dtur ; *** TEACH POINT *** Upper right
    LMOVE #dtul ; *** TEACH POINT *** Upper left
    ;
    POINT .dtur = #dtur
    POINT .dtul = #dtul
    POINT .dtlr = #dtlr
    ;
    BREAK
    POINT defect.frame = FRAME (.dtlr, .dtur, .dtul, .dtlr)
    ;
    FOR .i = 0 TO 9
      FOR .j = 0 TO 4
        POINT #defect.pos[.i, .j] = defect.frame + TRANS ( .i * 27.8,.j * 55.6)
      END
    END
  END
  SPEED 250 MM/S ALWAYS
  ACCURACY 0 ALWAYS
  TOOL tool.pick[hmi.tool.no]
  BREAK
  ;
  .x = INT((hmi.defect.pos-1) / 5)
  .y = (hmi.defect.pos-1) MOD 5
  POINT .defect.pos = #defect.pos[.x, .y]
  ;
  LAPPRO .defect.pos, 10
  LMOVE .defect.pos
  LAPPRO .defect.pos, 10
.END
.PROGRAM a.teach.machine ()
  TOOL tool.pick[hmi.tool.no]
  ;POINT .pos.machine = #pos.machine[detail.id]
  JMOVE #safe.machine
  LMOVE #before.machine
  POINT .temp = #pos.machine[hmi.obj.id]
  JMOVE .temp + TRANS (0, 0, 10)
  BREAK
  LMOVE #pos.machine[hmi.obj.id]
  BREAK
  TWAIT 0.5
  LMOVE .temp + TRANS (0, 0, 10)
  BREAK
  TWAIT 0.5
  LMOVE #before.machine
.END
.PROGRAM a.teach.pos ()
  TOOL tool.pick[hmi.tool.no]
  ;
  POINT .temp = #pos.pos[hmi.obj.id]
  JMOVE .temp + TRANS (0, 0, 50)
  BREAK
  LMOVE #pos.pos[hmi.obj.id]
  BREAK
  TWAIT 0.5
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  TWAIT 0.5
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
.PROGRAM a.test.tare ()
  .j = INT((hmi.tare.pos-1) / 20) + 1
  .i = (hmi.tare.pos-1) MOD 20 + 1
  TYPE 0: .i, .j
  LAPPRO tare.put[.i, .j], 20
  LMOVE tare.put[.i, .j]
  LAPPRO tare.put[.i, .j], 20
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
  .detail.len.ws = detail.length + min.spacer
  ;
  max.in.line = (tare.width - min.spacer) / .detail.len.ws
  ;
  FOR .i = 1 TO tare.lines
    FOR .j = 1 TO max.in.line
      POINT tare.put[.i, .j] = tare.frame + TRANS(-.i*lines.diff, -.j*.detail.len.ws)
    END
  END
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
.PROGRAM id4 () ; 312.229.002_1
    ; Object ID
    object.id = 4
    ; Working gripper
    gripper.type = 1
    ; Max objects in output tare
    max.tare.count = 3
    spc.tare.count = 50
    ;
    detail.length = 23.5
    start.shift.x = 0
    start.shift.y = 15
    start.shift.z = 0
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
  ACCURACY 10 ALWAYS
  ;
  POINT .pos.machine = #pos.machine[.pos]
  ; Go to machine
  JMOVE #safe.machine
  JMOVE #before.machine
  ; Put to machine
  ACCURACY 0
  LAPPRO .pos.machine, 10
  SPEED 50 MM/S
  LMOVE #pos.machine[.pos]
  BREAK
  ;CALL log ("Waiting for vacuum enabled. State: WaitingMMVacuum")
  ;$action = "WaitingMMVacuum"
  ;SWAIT s.vacuum
  PULSE grip.unclamp
  TWAIT 0.5
  SPEED 20
  LAPPRO .pos.machine, 10
  LMOVE #before.machine
  BREAK
  ; Wait result
  CALL log ("Move to measurement machine. State: WaitingMMResult")
  $action = "WaitingMMResult"
  WAIT SIG (s.measure.ok) OR SIG (s.measure.ng)
  CALL log ("Move to measurement machine. State: TakingFromMM")
  $action = "TakingFromMM"
  ; Pick from machine
  SPEED 20
  LAPPRO .pos.machine, 10
  SPEED 50 MM/S
  LMOVE #pos.machine[.pos]
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  SPEED 20
  LAPPRO .pos.machine, 10
  LMOVE #before.machine
  JMOVE #safe.machine
  JMOVE #homyak
  ; Temporary OFF
  ;CALL log ("Waiting for vacuum disbled. State: WaitingMMVacuum")
  ;$action = "WaitingMMVacuum"
  ;SWAIT s.vacuum
  ;
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
  ;
  WHILE .keep.pick DO
    IF tare.put.count == max.tare.count THEN
      ;
      SIGNAL rs7.tare.chg
      SWAIT rs13.tare.ack
      SIGNAL -rs7.tare.chg
      tare.put.count = 0
      ;
    END
    SWAIT rs13.det.put
    PULSE rs07.put.ack, 5
    SWAIT -rs13.work[1] ; Wait robot leave zone
    SIGNAL rs7.working
    CALL pos.pick
    CALL measure
    IF SIG (s.measure.ok) THEN
      SIGNAL -s.measure.ok
      CALL put.tare
    ELSE
      SIGNAL -rs7.working
      SIGNAL -s.measure.ng
      CALL put.defect
    END
    ;
    IF SIG(rs13.finish) THEN
      PULSE rs07.fin.ack
      .keep.pick = FALSE
    END
  END
  ;CALL measure
  ;
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
  ;
  SPEED 20 MM/S
  LMOVE #pos.pos[.pos]
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  pick.count = pick.count + 1
  ;
  LMOVE .temp + TRANS (0, 0, 200)
  LMOVE #homyak
.END
.PROGRAM process.data (.state)
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
.PROGRAM put.defect ()
  ;
  CALL log ("Putting to defect. State: PutToDefect ")
  $action = "PutToDefect"
  ;
  SPEED 100 ALWAYS
  ACCURACY 30 ALWAYS
  TOOL tool.pick[current.gripper]
  .x = INT((defect.count) / 5)
  .y = (defect.count) MOD 5
  POINT .temp = #defect.pos[.x, .y]
  ;
  JMOVE #safe.defect
  ;
  LMOVE .temp + TRANS (0, 0, 30)
  BREAK
  ;
  ACCURACY 0
  SPEED 20 MM/S
  LMOVE #defect.pos[.x, .y]
  BREAK
  PULSE grip.unclamp
  defect.count = defect.count + 1
  TWAIT 0.5
  ;
  LMOVE .temp + TRANS (0, 0, 30)
  JMOVE #safe.defect
  LMOVE #homyak
.END
.PROGRAM put.tare ()
    ;
  CALL log ("Putting to defect. State: PutToTare ")
  $action = "PutToTare"
  ;
  SPEED 100 ALWAYS
  ACCURACY 30 ALWAYS
  TOOL tool.pick[current.gripper]
  ;
  .j = INT((tare.put.count) / 20) + 1
  .i = (tare.put.count) MOD 20 + 1
  ;
  JAPPRO tare.put[.i, .j], 20
  LAPPRO tare.put[.i, .j], 20
  LMOVE tare.put[.i, .j]
  BREAK
  ;
  PULSE grip.unclamp
  TWAIT 0.5
  tare.put.count = tare.put.count + 1
  SIGNAL -rs7.working
  ;
  LAPPRO tare.put[.i, .j], 20
  LAPPRO tare.put[.i, .j], 100
  ;
  JMOVE #homyak
  
.END
.PROGRAM safe.home ()
	; IMPLEMENT SAFE RETURN TO HOME POSITION
	CALL log ("Moving to home position. State: MoveToHome")
	$action = "MoveToHome"
	SPEED 250 MM/S ALWAYS
	ACCURACY 10 ALWAYS
	JMOVE #homyak
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
  do.home1 = 17 ; EIP
  do.work[1] = 18 ; EIP
  do.bat.alm = 2010
  ;
  ;
  rs13.det.put = 1019; EIP
  rs7.working = 19; EIP
  rs7.tare.chg = 20
  rs13.tare.ack = 1020
  rs13.finish = 1021
  rs07.fin.ack = 21
  rs07.put.ack = 22
  ;
  rs13.home1 = 1017
  rs13.work[1] = 1018
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
.END
.PROGRAM set.vars.pc ()
  ; Variables init
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
    mon.speed = VAL(.$spd)
    MON_SPEED(mon.speed)
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
.PROGRAM Comment___ () ; Comments for IDE. Do not use.
	; @@@ PROJECT @@@
	; @@@ PROJECTNAME @@@
	; ALKU_RS007L
	; @@@ HISTORY @@@
	; @@@ INSPECTION @@@
	; tcp.socket
	; tcp.port
	; ip[1]
	; tcp.connect.tmo
	; hmi.defect.pos
	; defect.count
	; @@@ CONNECTION @@@
	; KROSET R02
	; 127.0.0.1
	; 9205
	; @@@ PROGRAM @@@
	;   Group:Objects:1
	;     1:id4:F
	;   Group:Utils:2
	;     2:safe.home:F
	;     2:log:F
	;       .$msg 
	;       .i 
	;     2:a.home:F
	;     2:a.align:F
	;   Group:Main:3
	;     3:pos.pick:F
	;       .pos 
	;       .$temp 
	;       .temp 
	;     3:measure:F
	;       .pos.machine 
	;     3:a.main:F
	;     3:put.defect:F
	;       .x 
	;       .y 
	;       .temp 
	;       .pos 
	;     3:pg.start:F
	;       .state 
	;       .keep.pick 
	;     3:process.data:F
	;       .state 
	;     3:calc.tare:F
	;       .spacer 
	;       .max 
	;     3:put.tare:F
	;   Group:Teach:4
	;     4:a.teach.pos:F
	;       .temp 
	;     4:a.teach.machine:F
	;       .temp 
	;     4:a.teach.defect:F
	;       .dtur 
	;       .dtul 
	;       .dtlr 
	;       .i 
	;       .j 
	;       .x 
	;       .y 
	;       .defect.pos 
	;     4:a.teach.tare:F
	;       .tarelb 
	;       .tarerb 
	;       .tarert 
	;       .tare0 
	;     4:a.test.tare:F
	;   Group:Autostart:5
	;     5:set.io.pc:B
	;       .home1 
	;       .work 
	;       .det.put 
	;       .det.picked 
	;       .tare.chg 
	;       .tare.ack 
	;       .disable 
	;     5:watchdog.pc:B
	;     5:autostart.pc:B
	;   0:errstart.pc:B
	;   Group:TCPIP:6
	;     6:set.vars.pc:B
	;       .i 
	;     6:tcp.send.pc:B
	;       .$data 
	;       .data.length 
	;       .status 
	;       .i 
	;       .tcp.error.cnt 
	;     6:tcp.callback.pc:B
	;       .$data 
	;       .data.length 
	;       .$temp 
	;       .i 
	;       .$sensor.name 
	;       .$sensor.state 
	;       .$measurement.state 
	;       .$spd 
	;       .pc 
	;     6:tcp.client.pc:B
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
	;     6:get.state.pc:B
	;       .$state 
	;     6:sender.pc:B
	;       .$data 
	;       .pc 
	;     6:tcp.send2.pc:B
	;       .$data 
	;       .data.length 
	;       .status 
	;       .$temp 
	;       .i 
	;     6:tcp.send3.pc:B
	;       .$data 
	;       .data.length 
	;       .status 
	;       .$temp 
	;       .i 
	; @@@ TRANS @@@
	; defect.frame 
	; defect.pos[] 
	; test 
	; tare.frame 
	; tare.put[] 
	; @@@ JOINTS @@@
	; #homyak 
	; #measure.side 
	; #pos.pos[] 
	; #defect.pos[] 
	; #dtlr 
	; #dtul 
	; #dtur 
	; #tare0 
	; #tarelb 
	; #tarerb 
	; #tarert 
	; @@@ REALS @@@
	; tcp.socket 
	; tcp.port 
	; ip[] 
	; tcp.connect.tmo 
	; start.task 
	; tcp.dbg 
	; tcp.receive.tmo 
	; tcp.recv.dbg 
	; tcp.send.dbg 
	; tcp.send.tmo 
	; capture.tare 
	; release.tare 
	; tcp.ena 
	; tcp.recv.ena 
	; tcp.send.ena 
	; tyterm 
	; hmi.obj.id 
	; hmi.defect.pos 
	; current.gripper 
	; start.shift.x 
	; start.shift.y 
	; start.shift.z 
	; max.tare.count 
	; spc.tare.count 
	; defect.count 
	; @@@ STRINGS @@@
	; $tcp.ip 
	; $action 
	; $log.entry[] 
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
defect.frame 473.225952 -111.145050 -343.069183 -5.886379 0.003777 5.867518
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
test 26.184204 544.134399 143.333954 -103.807800 179.145859 97.269417
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
tare.frame -153.512695 548.567566 -312.511597 146.844452 0.001756 33.158195
tare.put[1,1] -137.513840 573.568298 -312.511597 146.844452 0.001756 33.158195
tare.put[1,2] -137.514999 598.568298 -312.512024 146.844452 0.001756 33.158195
tare.put[1,3] -137.516144 623.568298 -312.512451 146.844452 0.001756 33.158195
tare.put[1,4] -137.517303 648.568298 -312.512848 146.844452 0.001756 33.158195
tare.put[1,5] -137.518448 673.568298 -312.513275 146.844452 0.001756 33.158195
tare.put[1,6] -137.519608 698.568298 -312.513702 146.844452 0.001756 33.158195
tare.put[1,7] -137.520752 723.568298 -312.514130 146.844452 0.001756 33.158195
tare.put[1,8] -137.521912 748.568298 -312.514526 146.844452 0.001756 33.158195
tare.put[2,1] -121.513847 573.569031 -312.511200 146.844452 0.001756 33.158195
tare.put[2,2] -121.514999 598.569031 -312.511627 146.844452 0.001756 33.158195
tare.put[2,3] -121.516151 623.569031 -312.512024 146.844452 0.001756 33.158195
tare.put[2,4] -121.517303 648.569031 -312.512451 146.844452 0.001756 33.158195
tare.put[2,5] -121.518448 673.569031 -312.512878 146.844452 0.001756 33.158195
tare.put[2,6] -121.519600 698.569031 -312.513275 146.844452 0.001756 33.158195
tare.put[2,7] -121.520752 723.569031 -312.513702 146.844452 0.001756 33.158195
tare.put[2,8] -121.521904 748.569031 -312.514130 146.844452 0.001756 33.158195
tare.put[3,1] -105.513847 573.569763 -312.510773 146.844452 0.001756 33.158195
tare.put[3,2] -105.514999 598.569763 -312.511200 146.844452 0.001756 33.158195
tare.put[3,3] -105.516144 623.569763 -312.511627 146.844452 0.001756 33.158195
tare.put[3,4] -105.517303 648.569763 -312.512054 146.844452 0.001756 33.158195
tare.put[3,5] -105.518448 673.569763 -312.512451 146.844452 0.001756 33.158195
tare.put[3,6] -105.519608 698.569763 -312.512878 146.844452 0.001756 33.158195
tare.put[3,7] -105.520752 723.569763 -312.513306 146.844452 0.001756 33.158195
tare.put[3,8] -105.521904 748.569763 -312.513733 146.844452 0.001756 33.158195
tare.put[4,1] -89.513847 573.570496 -312.510376 146.844452 0.001756 33.158195
tare.put[4,2] -89.514999 598.570496 -312.510803 146.844452 0.001756 33.158195
tare.put[4,3] -89.516144 623.570496 -312.511200 146.844452 0.001756 33.158195
tare.put[4,4] -89.517303 648.570496 -312.511627 146.844452 0.001756 33.158195
tare.put[4,5] -89.518448 673.570496 -312.512054 146.844452 0.001756 33.158195
tare.put[4,6] -89.519608 698.570496 -312.512482 146.844452 0.001756 33.158195
tare.put[4,7] -89.520752 723.570496 -312.512878 146.844452 0.001756 33.158195
tare.put[4,8] -89.521904 748.570496 -312.513306 146.844452 0.001756 33.158195
tare.put[5,1] -73.513847 573.571228 -312.509949 146.844452 0.001756 33.158195
tare.put[5,2] -73.514999 598.571228 -312.510376 146.844452 0.001756 33.158195
tare.put[5,3] -73.516151 623.571228 -312.510803 146.844452 0.001756 33.158195
tare.put[5,4] -73.517303 648.571228 -312.511230 146.844452 0.001756 33.158195
tare.put[5,5] -73.518448 673.571228 -312.511627 146.844452 0.001756 33.158195
tare.put[5,6] -73.519600 698.571228 -312.512054 146.844452 0.001756 33.158195
tare.put[5,7] -73.520752 723.571228 -312.512482 146.844452 0.001756 33.158195
tare.put[5,8] -73.521904 748.571228 -312.512909 146.844452 0.001756 33.158195
tare.put[6,1] -57.513847 573.571960 -312.509552 146.844452 0.001756 33.158195
tare.put[6,2] -57.514999 598.571960 -312.509979 146.844452 0.001756 33.158195
tare.put[6,3] -57.516151 623.571960 -312.510376 146.844452 0.001756 33.158195
tare.put[6,4] -57.517303 648.571960 -312.510803 146.844452 0.001756 33.158195
tare.put[6,5] -57.518448 673.571960 -312.511230 146.844452 0.001756 33.158195
tare.put[6,6] -57.519600 698.572021 -312.511658 146.844452 0.001756 33.158195
tare.put[6,7] -57.520752 723.572021 -312.512054 146.844452 0.001756 33.158195
tare.put[6,8] -57.521904 748.572021 -312.512482 146.844452 0.001756 33.158195
tare.put[7,1] -41.513847 573.572754 -312.509155 146.844452 0.001756 33.158195
tare.put[7,2] -41.514999 598.572754 -312.509552 146.844452 0.001756 33.158195
tare.put[7,3] -41.516151 623.572754 -312.509979 146.844452 0.001756 33.158195
tare.put[7,4] -41.517303 648.572754 -312.510406 146.844452 0.001756 33.158195
tare.put[7,5] -41.518448 673.572754 -312.510803 146.844452 0.001756 33.158195
tare.put[7,6] -41.519600 698.572754 -312.511230 146.844452 0.001756 33.158195
tare.put[7,7] -41.520752 723.572754 -312.511658 146.844452 0.001756 33.158195
tare.put[7,8] -41.521904 748.572754 -312.512085 146.844452 0.001756 33.158195
tare.put[8,1] -25.513847 573.573486 -312.508728 146.844452 0.001756 33.158195
tare.put[8,2] -25.514999 598.573486 -312.509155 146.844452 0.001756 33.158195
tare.put[8,3] -25.516151 623.573486 -312.509583 146.844452 0.001756 33.158195
tare.put[8,4] -25.517303 648.573486 -312.509979 146.844452 0.001756 33.158195
tare.put[8,5] -25.518448 673.573486 -312.510406 146.844452 0.001756 33.158195
tare.put[8,6] -25.519600 698.573486 -312.510834 146.844452 0.001756 33.158195
tare.put[8,7] -25.520752 723.573486 -312.511261 146.844452 0.001756 33.158195
tare.put[8,8] -25.521904 748.573486 -312.511658 146.844452 0.001756 33.158195
tare.put[9,1] -9.513840 573.574219 -312.508331 146.844452 0.001756 33.158195
tare.put[9,2] -9.514999 598.574219 -312.508728 146.844452 0.001756 33.158195
tare.put[9,3] -9.516144 623.574219 -312.509155 146.844452 0.001756 33.158195
tare.put[9,4] -9.517303 648.574219 -312.509583 146.844452 0.001756 33.158195
tare.put[9,5] -9.518448 673.574219 -312.510010 146.844452 0.001756 33.158195
tare.put[9,6] -9.519608 698.574219 -312.510406 146.844452 0.001756 33.158195
tare.put[9,7] -9.520752 723.574219 -312.510834 146.844452 0.001756 33.158195
tare.put[9,8] -9.521912 748.574219 -312.511261 146.844452 0.001756 33.158195
tare.put[10,1] 6.486160 573.574951 -312.507904 146.844452 0.001756 33.158195
tare.put[10,2] 6.485001 598.574951 -312.508331 146.844452 0.001756 33.158195
tare.put[10,3] 6.483856 623.574951 -312.508759 146.844452 0.001756 33.158195
tare.put[10,4] 6.482697 648.574951 -312.509155 146.844452 0.001756 33.158195
tare.put[10,5] 6.481552 673.574951 -312.509583 146.844452 0.001756 33.158195
tare.put[10,6] 6.480392 698.574951 -312.510010 146.844452 0.001756 33.158195
tare.put[10,7] 6.479248 723.574951 -312.510437 146.844452 0.001756 33.158195
tare.put[10,8] 6.478088 748.574951 -312.510834 146.844452 0.001756 33.158195
tare.put[11,1] 22.486160 573.575684 -312.507507 146.844452 0.001756 33.158195
tare.put[11,2] 22.485001 598.575684 -312.507904 146.844452 0.001756 33.158195
tare.put[11,3] 22.483856 623.575684 -312.508331 146.844452 0.001756 33.158195
tare.put[11,4] 22.482697 648.575684 -312.508759 146.844452 0.001756 33.158195
tare.put[11,5] 22.481552 673.575684 -312.509186 146.844452 0.001756 33.158195
tare.put[11,6] 22.480392 698.575684 -312.509583 146.844452 0.001756 33.158195
tare.put[11,7] 22.479248 723.575684 -312.510010 146.844452 0.001756 33.158195
tare.put[11,8] 22.478088 748.575684 -312.510437 146.844452 0.001756 33.158195
tare.put[12,1] 38.486160 573.576416 -312.507080 146.844452 0.001756 33.158195
tare.put[12,2] 38.485001 598.576416 -312.507507 146.844452 0.001756 33.158195
tare.put[12,3] 38.483856 623.576416 -312.507935 146.844452 0.001756 33.158195
tare.put[12,4] 38.482697 648.576416 -312.508362 146.844452 0.001756 33.158195
tare.put[12,5] 38.481552 673.576416 -312.508759 146.844452 0.001756 33.158195
tare.put[12,6] 38.480392 698.576416 -312.509186 146.844452 0.001756 33.158195
tare.put[12,7] 38.479248 723.576416 -312.509613 146.844452 0.001756 33.158195
tare.put[12,8] 38.478088 748.576416 -312.510010 146.844452 0.001756 33.158195
tare.put[13,1] 54.486160 573.577148 -312.506683 146.844452 0.001756 33.158195
tare.put[13,2] 54.485001 598.577148 -312.507111 146.844452 0.001756 33.158195
tare.put[13,3] 54.483856 623.577148 -312.507507 146.844452 0.001756 33.158195
tare.put[13,4] 54.482697 648.577148 -312.507935 146.844452 0.001756 33.158195
tare.put[13,5] 54.481552 673.577148 -312.508362 146.844452 0.001756 33.158195
tare.put[13,6] 54.480392 698.577148 -312.508789 146.844452 0.001756 33.158195
tare.put[13,7] 54.479248 723.577148 -312.509186 146.844452 0.001756 33.158195
tare.put[13,8] 54.478088 748.577148 -312.509613 146.844452 0.001756 33.158195
tare.put[14,1] 70.486160 573.577881 -312.506256 146.844452 0.001756 33.158195
tare.put[14,2] 70.485001 598.577881 -312.506683 146.844452 0.001756 33.158195
tare.put[14,3] 70.483856 623.577881 -312.507111 146.844452 0.001756 33.158195
tare.put[14,4] 70.482697 648.577881 -312.507538 146.844452 0.001756 33.158195
tare.put[14,5] 70.481552 673.577881 -312.507935 146.844452 0.001756 33.158195
tare.put[14,6] 70.480392 698.577881 -312.508362 146.844452 0.001756 33.158195
tare.put[14,7] 70.479248 723.577881 -312.508789 146.844452 0.001756 33.158195
tare.put[14,8] 70.478088 748.577881 -312.509216 146.844452 0.001756 33.158195
tare.put[15,1] 86.486160 573.578613 -312.505859 146.844452 0.001756 33.158195
tare.put[15,2] 86.485001 598.578613 -312.506287 146.844452 0.001756 33.158195
tare.put[15,3] 86.483856 623.578613 -312.506683 146.844452 0.001756 33.158195
tare.put[15,4] 86.482697 648.578613 -312.507111 146.844452 0.001756 33.158195
tare.put[15,5] 86.481552 673.578613 -312.507538 146.844452 0.001756 33.158195
tare.put[15,6] 86.480392 698.578613 -312.507965 146.844452 0.001756 33.158195
tare.put[15,7] 86.479248 723.578613 -312.508362 146.844452 0.001756 33.158195
tare.put[15,8] 86.478088 748.578613 -312.508789 146.844452 0.001756 33.158195
tare.put[16,1] 102.486160 573.579346 -312.505463 146.844452 0.001756 33.158195
tare.put[16,2] 102.485001 598.579346 -312.505859 146.844452 0.001756 33.158195
tare.put[16,3] 102.483856 623.579346 -312.506287 146.844452 0.001756 33.158195
tare.put[16,4] 102.482697 648.579346 -312.506714 146.844452 0.001756 33.158195
tare.put[16,5] 102.481552 673.579346 -312.507111 146.844452 0.001756 33.158195
tare.put[16,6] 102.480392 698.579346 -312.507538 146.844452 0.001756 33.158195
tare.put[16,7] 102.479248 723.579346 -312.507965 146.844452 0.001756 33.158195
tare.put[16,8] 102.478088 748.579346 -312.508392 146.844452 0.001756 33.158195
tare.put[17,1] 118.486145 573.580078 -312.505035 146.844452 0.001756 33.158195
tare.put[17,2] 118.485016 598.580078 -312.505463 146.844452 0.001756 33.158195
tare.put[17,3] 118.483856 623.580078 -312.505890 146.844452 0.001756 33.158195
tare.put[17,4] 118.482697 648.580078 -312.506287 146.844452 0.001756 33.158195
tare.put[17,5] 118.481537 673.580078 -312.506714 146.844452 0.001756 33.158195
tare.put[17,6] 118.480408 698.580078 -312.507141 146.844452 0.001756 33.158195
tare.put[17,7] 118.479248 723.580078 -312.507538 146.844452 0.001756 33.158195
tare.put[17,8] 118.478088 748.580078 -312.507965 146.844452 0.001756 33.158195
tare.put[18,1] 134.486145 573.580811 -312.504639 146.844452 0.001756 33.158195
tare.put[18,2] 134.485016 598.580811 -312.505035 146.844452 0.001756 33.158195
tare.put[18,3] 134.483856 623.580811 -312.505463 146.844452 0.001756 33.158195
tare.put[18,4] 134.482697 648.580811 -312.505890 146.844452 0.001756 33.158195
tare.put[18,5] 134.481537 673.580811 -312.506317 146.844452 0.001756 33.158195
tare.put[18,6] 134.480408 698.580811 -312.506714 146.844452 0.001756 33.158195
tare.put[18,7] 134.479248 723.580811 -312.507141 146.844452 0.001756 33.158195
tare.put[18,8] 134.478088 748.580811 -312.507568 146.844452 0.001756 33.158195
tare.put[19,1] 150.486145 573.581543 -312.504211 146.844452 0.001756 33.158195
tare.put[19,2] 150.485016 598.581543 -312.504639 146.844452 0.001756 33.158195
tare.put[19,3] 150.483856 623.581543 -312.505066 146.844452 0.001756 33.158195
tare.put[19,4] 150.482697 648.581543 -312.505463 146.844452 0.001756 33.158195
tare.put[19,5] 150.481537 673.581543 -312.505890 146.844452 0.001756 33.158195
tare.put[19,6] 150.480408 698.581543 -312.506317 146.844452 0.001756 33.158195
tare.put[19,7] 150.479248 723.581543 -312.506744 146.844452 0.001756 33.158195
tare.put[19,8] 150.478088 748.581543 -312.507141 146.844452 0.001756 33.158195
tare.put[20,1] 166.486145 573.582275 -312.503815 146.844452 0.001756 33.158195
tare.put[20,2] 166.485016 598.582275 -312.504211 146.844452 0.001756 33.158195
tare.put[20,3] 166.483856 623.582275 -312.504639 146.844452 0.001756 33.158195
tare.put[20,4] 166.482697 648.582275 -312.505066 146.844452 0.001756 33.158195
tare.put[20,5] 166.481537 673.582275 -312.505493 146.844452 0.001756 33.158195
tare.put[20,6] 166.480408 698.582275 -312.505890 146.844452 0.001756 33.158195
tare.put[20,7] 166.479248 723.582275 -312.506317 146.844452 0.001756 33.158195
tare.put[20,8] 166.478088 748.582275 -312.506744 146.844452 0.001756 33.158195
.END
.JOINTS
#homyak 13.751368 -37.185059 -123.196098 -0.000879 -93.838348 7.315494
#measure.side -85.847610 -37.440678 -123.302292 -0.000879 -93.987350 10.391983
#pos.pos[4] -21.486183 18.408691 -92.034302 11.852052 -63.050541 -47.176170
#defect.pos[0,0] 104.383995 47.694366 -114.138847 -0.001786 -18.170513 98.136574
#defect.pos[0,1] 97.857552 47.243187 -115.640785 -0.000439 -17.119797 104.661736
#defect.pos[0,2] 91.120766 47.066380 -116.244507 0.001093 -16.692869 111.397057
#defect.pos[0,3] 84.353500 47.156189 -115.936455 0.002595 -16.911060 118.162872
#defect.pos[0,4] 77.740509 47.516644 -114.723640 0.003853 -17.763302 124.774689
#defect.pos[1,0] 103.611496 48.918270 -110.290199 -0.001427 -20.795265 98.908707
#defect.pos[1,1] 97.424316 48.443367 -111.749779 -0.000297 -19.810633 105.094841
#defect.pos[1,2] 91.059166 48.256382 -112.335457 0.000957 -19.411913 111.458801
#defect.pos[1,3] 84.668343 48.351448 -112.036667 0.002188 -19.615587 117.848465
#defect.pos[1,4] 78.407791 48.731590 -110.858902 0.003250 -20.413113 124.108032
#defect.pos[2,0] 102.916504 50.268932 -106.321419 -0.001161 -23.413395 99.603424
#defect.pos[2,1] 97.036232 49.774616 -107.746368 -0.000197 -22.482782 105.482811
#defect.pos[2,2] 91.004105 49.579422 -108.317284 0.000855 -22.107052 111.513977
#defect.pos[2,3] 84.950127 49.678707 -108.026100 0.001888 -22.298899 117.567009
#defect.pos[2,4] 79.007141 50.074867 -106.876991 0.002799 -23.051750 123.509148
#defect.pos[3,0] 102.288086 51.743603 -102.221977 -0.000957 -26.038172 100.231644
#defect.pos[3,1] 96.686623 51.232525 -103.619812 -0.000123 -25.151445 105.832352
#defect.pos[3,2] 90.954567 51.030354 -104.179062 0.000775 -24.794348 111.563599
#defect.pos[3,3] 85.203773 51.133217 -103.893875 0.001657 -24.976608 117.313583
#defect.pos[3,4] 79.548302 51.543106 -102.767311 0.002449 -25.693201 122.968361
#defect.pos[4,0] 101.717239 53.342281 -97.978294 -0.000797 -28.683182 100.802330
#defect.pos[4,1] 96.370064 52.815781 -99.356468 -0.000067 -27.831530 106.148865
#defect.pos[4,2] 90.909775 52.607311 -99.907104 0.000710 -27.489351 111.608459
#defect.pos[4,3] 85.433304 52.713398 -99.626373 0.001475 -27.663935 117.084267
#defect.pos[4,4] 80.039284 53.135826 -98.516281 0.002170 -28.351521 122.477669
#defect.pos[5,0] 101.196518 55.067924 -93.572998 -0.000670 -31.362829 101.322922
#defect.pos[5,1] 96.082092 54.526188 -94.939209 -0.000024 -30.538387 106.436806
#defect.pos[5,2] 90.869080 54.311607 -95.484337 0.000657 -30.207819 111.649223
#defect.pos[5,3] 85.641983 54.420815 -95.206482 0.001328 -30.376427 116.875740
#defect.pos[5,4] 80.486694 54.855526 -94.106636 0.001944 -31.041471 122.030510
#defect.pos[6,0] 100.719643 56.926819 -88.983788 -0.000566 -34.093159 101.799690
#defect.pos[6,1] 95.819008 56.368927 -90.346375 0.000009 -33.288464 106.699852
#defect.pos[6,2] 90.831932 56.147991 -90.889290 0.000612 -32.966480 111.686417
#defect.pos[6,3] 85.832527 56.260437 -90.612610 0.001206 -33.130672 116.685341
#defect.pos[6,4] 80.896034 56.708118 -89.516266 0.001756 -33.779263 121.621384
#defect.pos[7,0] 100.281387 58.929096 -84.182243 -0.000481 -36.892422 102.237869
#defect.pos[7,1] 95.577751 58.353195 -85.550163 0.000035 -36.100414 106.941101
#defect.pos[7,2] 90.797897 58.125191 -86.094490 0.000573 -35.784081 111.720512
#defect.pos[7,3] 86.007202 58.241230 -85.817139 0.001103 -35.945354 116.510773
#defect.pos[7,4] 81.271919 58.703270 -84.717163 0.001598 -36.583214 121.245667
#defect.pos[8,0] 99.877274 61.090191 -79.130669 -0.000410 -39.782902 102.641922
#defect.pos[8,1] 95.355690 60.492908 -80.514885 0.000056 -38.995979 107.163132
#defect.pos[8,2] 90.766594 60.256618 -81.064857 0.000539 -38.682278 111.751846
#defect.pos[8,3] 86.167908 60.376873 -80.784676 0.001016 -38.842175 116.350174
#defect.pos[8,4] 81.618279 60.855919 -79.672318 0.001463 -39.475407 120.899460
#defect.pos[9,0] 99.503494 63.432602 -73.778526 -0.000350 -42.792641 103.015633
#defect.pos[9,1] 95.150658 62.808926 -75.192497 0.000073 -42.002354 107.368164
#defect.pos[9,2] 90.737717 62.562477 -75.753304 0.000510 -41.687973 111.780769
#defect.pos[9,3] 86.316246 62.687881 -75.467667 0.000941 -41.848175 116.201927
#defect.pos[9,4] 81.938423 63.187862 -74.332237 0.001347 -42.483570 120.579453
#dtlr 103.311035 48.172123 -112.591835 0.029004 -19.081192 4.344695
#dtul 73.035355 67.161629 -65.461815 -0.090527 -47.245335 34.705730
#dtur 98.825981 64.759277 -70.790497 -0.000879 -44.302368 8.854432
#tare0 -15.078956 48.954346 -101.508316 -0.154688 -29.406969 35.442623
#tarelb -16.786232 51.528080 -100.543152 -0.170508 -27.803652 37.161091
#tarerb 10.876904 50.672977 -102.789398 -0.017578 -26.388474 9.366518
#tarert 8.052540 65.481079 -67.762939 -0.017578 -46.607437 12.196513
.END
.REALS
tcp.socket = 524
tcp.port = 9007
ip[1] = 192
tcp.connect.tmo = 5
do.bat.alm = 2010
do.home1 = 17
ip[2] = 168
ip[3] = 7
ip[4] = 137
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
hmi.obj.id = 0
s.debug = 2024
hmi.defect.pos = 4
current.gripper = 0
s.apply.coord = 2014
start.shift.x = 0
start.shift.y = 0
start.shift.z = 0
max.tare.count = 99
spc.tare.count = 50
defect.count = 0
rs13.finish = 1021
rs07.fin.ack = 21
rs07.put.ack = 22
.END
.STRINGS
$tcp.ip = "192.168.7.137"
$action = "TakeFromPositioner"
$log.entry[0] = "16:26:48 Pick detail from positioner 4"
$log.entry[1] = "16:26:48 State: TakeFromPositioner"
$log.entry[2] = "16:32:42 Pick detail from positioner 4"
$log.entry[3] = "16:32:42 State: TakeFromPositioner"
$log.entry[4] = "16:33:06 Pick detail from positioner 4"
$log.entry[5] = "16:33:06 State: TakeFromPositioner"
$log.entry[6] = "16:33:35 Pick detail from positioner 4"
$log.entry[7] = "16:33:35 State: TakeFromPositioner"
$log.entry[8] = "16:33:59 Pick detail from positioner 4"
$log.entry[9] = "16:33:59 State: TakeFromPositioner"
$log.entry[10] = "16:34:23 Pick detail from positioner 4"
$log.entry[11] = "16:34:23 State: TakeFromPositioner"
.END
