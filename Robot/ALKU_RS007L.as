.AUXDATA
N_OX1    "release.grip"
N_OX2    "capture.grip"
N_OX3    "grip.unclamp"
N_OX4    "grip.clamp"
N_OX17    "do.home1"
N_OX18    "do.work[1]"
N_WX1    "grip.unclamped"
N_WX2    "grip.clamped"
N_WX17    "rs13.home1"
N_WX18    "rs13.work[1]"
N_INT1    "di.ifp.page[1]"
N_INT2    "di.ifp.page[2]"
N_INT3    "di.ifp.page[3]"
N_INT4    "di.ifp.page[4]"
N_INT5    "di.ifp.page[5]"
N_INT6    "di.ifp.page[6]"
N_INT7    "di.ifp.page[7]"
N_INT8    "di.ifp.page[8]"
N_INT10    "do.bat.alm"
N_INT11    "s.tcp.send.ena"
N_INT12    "s.tcp.recv.ena"
N_INT13    "s.tcp.ena"
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
49,2,"","   MAIN","<---------","",10,4,15,2001,0
56,14,"tcp.ip","Server IP","",10,15,0
57,8,"tcp.port","Server","port",10,15,5,1,0
69,4,1,"OFF     ON","","","TCP COMMON",10,4,4,0,2013,0
76,4,1,"OFF     ON","",""," TCP SEND",10,4,4,0,2011,0
77,2,"","   MAIN","<---------","",10,4,15,2001,0
83,4,1,"OFF     ON","",""," TCP RECV",10,4,4,0,2012,0
84,8,"hmi.tool.no","   TOOL","  NUMBER",10,15,2,1,0
90,8,"hmi.pos.pos","POSITIONER"," POSITION",10,15,2,1,0
105,2,"","   MAIN","<---------","",10,4,15,2001,0
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
.PROGRAM a.main()@25/10/31 16:24 #0
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  JMOVE #homep1
  WHILE TRUE DO
    SWAIT rs13.work[1]
    SWAIT -rs13.work[1]
    CALL pos.pick(4)
    DRIVE 1,-90
    JOINT SPEED9 ACCU1 TIMER0 TOOL1 WORK0 CLAMP OX= WX= #[-97.059,-38.081,-121,0.062402,39.309,15.375] ;
    JOINT SPEED9 ACCU1 TIMER0 TOOL1 WORK0 CLAMP OX= WX= #[-132.99,-4.8336,-138.33,51.656,64.386,-19.369] ;
    LINEAR SPEED9 ACCU1 TIMER0 TOOL1 WORK0 CLAMP OX= WX= #[-118.88,9.6709,-122.91,38.175,56.505,-11.718] ;
    LINEAR 30.0 ACCU1 TIMER0 TOOL1 WORK0 CLAMP OX= WX= #[-118.88,10.934,-123.38,37.492,57.868,-10.454] ;
    LINEAR 250. ACCU1 TIMER0 TOOL1 WORK0 CLAMP OX= WX= #[-134.46,-4.8365,-140.36,52.259,66.453,-18.33] ;
    LINEAR 250. ACCU1 TIMER0 TOOL1 WORK0 CLAMP OX= WX= #[-118.88,10.935,-123.38,37.494,57.868,-10.455] ;
    LINEAR 30.0 ACCU1 TIMER0 TOOL1 WORK0 CLAMP OX= WX= #[-118.88,7.3949,-121.91,39.602,53.954,-14.222] ;
    JMOVE #homep15
    JMOVE #homep1
    JAPPRO test,50
    SPEED 40
    LMOVE test
    BREAK
    PULSE grip.unclamp
    LAPPRO test,50
    LMOVE #homep1
  END
.END
.PROGRAM a.align ()
	ALIGN
.END
.PROGRAM a.home ()
	JMOVE #homep1
.END
.PROGRAM pos.pick (.pos)
  IF FALSE THEN
    .pos = hmi.pos.pos
  END
    ;
  .$temp = "Pick detail from positioner" + $ENCODE (.pos)
  CALL log (.$temp)
  CALL log ("State: TakeFromPositioner")
  $action = "TakeFromPositioner"
  ;
  SPEED 100 ALWAYS
  ACCURACY 0 ALWAYS
  ;TOOL tool.pick[.tool.no]
  ;
  POINT .temp = #pos.pos[.pos]
  JMOVE .temp + TRANS (0, 0, 50)
  BREAK
  ;
  SPEED 20 MM/S
  LMOVE #pos.pos[.pos]
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  ;
  LMOVE .temp + TRANS (0, 0, 200)
  LMOVE #homep1
.END
.PROGRAM a.teach.pos ()
  TOOL tool.pick[hmi.tool.no]
  ;
  POINT .temp = #pos.pos[hmi.pos.pos]
  JMOVE .temp + TRANS (0, 0, 50)
  BREAK
  LMOVE #pos.pos[hmi.pos.pos]
  BREAK
  TWAIT 0.5
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  TWAIT 0.5
.END
.PROGRAM a.teach.machine ()
  TOOL tool.pick[hmi.tool.no]
  ;
  POINT .temp = #pos.mach[hmi.pos.pos]
  JMOVE .temp + TRANS (0, 0, 50)
  BREAK
  LMOVE #pos.mach[hmi.pos.pos]
  BREAK
  TWAIT 0.5
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  TWAIT 0.5
.END
.PROGRAM a.teach.defect ()
 BREAK
  
.END
.PROGRAM a.teach.tare ()
  BREAK
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
.PROGRAM safe.home ()
	; IMPLEMENT SAFE RETURN TO HOME POSITION
	CALL log ("Moving to home position. State: MoveToHome")
	$action = "MoveToHome"
	SPEED 250 MM/S ALWAYS
	ACCURACY 10 ALWAYS
	JMOVE #homep1
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
  CALL watchdog.pc
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
    TWAIT 0.1
    IF TASK (1002) <> 1 THEN
      PCEXECUTE 2: tcp.client.pc
      TWAIT 2
    END
    IF TASK (1003) <> 1 THEN
      PCEXECUTE 3: sender.pc
      TWAIT 2
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
  IF INSTR (.$data[1], "PICK") THEN
    .$temp = $DECODE (.$data[1], ":", 0)
    .$temp = $DECODE (.$data[1], ":", 1)
    .$x = $DECODE (.$data[1], ",", 0)
    .$temp = $DECODE (.$data[1], ",", 1)
    .$y = $DECODE (.$data[1], ",", 0)
    .$temp = $DECODE (.$data[1], ",", 1)
    .$a = .$data[1]
    hmi.y = VAL (.$x) / 10
    hmi.x = VAL (.$y) / 10
    hmi.a = VAL (.$a)
  END
  ;
  IF .$data[1] == "GO\n" THEN
    MC ZPOWER ON
    TWAIT 1
    MC EXECUTE a.main
  END
  IF .$data[1] == "START\n" THEN
    PULSE 2500
  END
  IF .$data[1] == "CONTINUE\n" THEN
    PULSE 2501
  END
  ;
  ;PRINT tcp.recv.ena: "Unhandled message. Return PING"
  ;.$data[1] = "PING\n"
  ;CALL tcp.send2.pc (.$data[], 1)
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
  ;
.END
.PROGRAM set.vars.pc ()
  ; Variables init
  ;
  IF NOT EXISTCHAR ("$log.entry[11]")  THEN
    FOR .i = 0 TO 12
      $log.entry[.i] = " "
    END
  END
  ;tcp.socket = 0
  tcp.connect.tmo = 5
  tcp.receive.tmo = 5
  tcp.send.tmo = 5
  ;
  tyterm = 0
  
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
	; @@@ CONNECTION @@@
	; RS007L
	; 192.168.7.103
	; 23
	; @@@ PROGRAM @@@
	; 0:a.main:F
	; .work 
	; 0:a.align:F
	; 0:a.home:F
	; 0:pos.pick:F
	; .pos 
	; .temp 
	; Group:Teach:1
	; 1:a.teach.pos:F
	; .temp 
	; 1:a.teach.machine:F
	; .temp 
	; 1:a.teach.defect:F
	; 1:a.teach.tare:F
	; 0:log:F
	; .i 
	; 0:safe.home:F
	; 0:autostart.pc:B
	; 0:watchdog.pc:B
	; 0:errstart.pc:B
	; Group:TCPIP:2
	; 2:tcp.send.pc:B
	; .$data 
	; .data.length 
	; .status 
	; .i 
	; .tcp.error.cnt 
	; 2:tcp.callback.pc:B
	; .$data 
	; .data.length 
	; .$temp 
	; .i 
	; .$x 
	; .$y 
	; .$a 
	; .pc 
	; 2:tcp.client.pc:B
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
	; 2:get.state.pc:B
	; .$state 
	; 2:sender.pc:B
	; .$data 
	; .pc 
	; 2:tcp.send2.pc:B
	; .$data 
	; .data.length 
	; .status 
	; .$temp 
	; .i 
	; 2:tcp.send3.pc:B
	; .$data 
	; .data.length 
	; .status 
	; .$temp 
	; .i 
	; 0:set.io.pc:B
	; .home1 
	; .work 
	; 0:set.vars.pc:B
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
tool.pick[1] 0.000000 10.000000 120.000000 0.000000 0.000000 0.000000
tool.pick[2] 0.000000 10.000000 120.000000 0.000000 0.000000 0.000000
tool.pick[3] 0.000000 10.000000 120.000000 0.000000 0.000000 0.000000
tool.pick[4] 0.000000 10.000000 120.000000 0.000000 0.000000 0.000000
tool.pick[5] 0.000000 10.000000 120.000000 0.000000 0.000000 0.000000
.END
.JOINTS
#homep1 13.751368 -37.185059 -123.196098 -0.000879 -93.838348 7.315494
#measure.side -85.847610 -37.440678 -123.302292 -0.000879 -93.987350 10.391983
#pos.pos[4] -17.357082 32.873661 -71.354958 11.731642 -69.892967 -50.003574
.END
.REALS
tcp.socket = 35
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
.END
.STRINGS
$tcp.ip = "192.168.7.137"
$action = "WaitingSensorOut"
$log.entry[0] = ""
$log.entry[1] = ""
$log.entry[2] = ""
$log.entry[3] = ""
$log.entry[4] = ""
$log.entry[5] = ""
$log.entry[6] = ""
$log.entry[7] = ""
$log.entry[8] = ""
$log.entry[9] = ""
$log.entry[10] = ""
$log.entry[11] = ""
.END
