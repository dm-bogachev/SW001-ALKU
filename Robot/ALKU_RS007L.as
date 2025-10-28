.INTER_PANEL_D
5,2,"","  Release ","  gripper","",10,4,6,5,-1
6,2,"","  Capture","  gripper","",10,4,6,6,-1
7,1,"  Gripper","","","  opened",10,15,4,10,1001,0
8,1,"  Gripper","","","  closed",10,15,4,10,1002,0
14,2,"","   Open ","  gripper","",10,4,5,3,0
15,2,"","   Close","  gripper","",10,4,5,4,0
28,14,"tcp.ip","Server IP","",10,15,0
29,8,"tcp.port","Server","port",10,15,5,1,0
34,10,"PCEXECUTE","AUTOSTART","","",10,4,15,1,"PCEXECUTE autostart.pc",0
.END
.INTER_PANEL_TITLE
"",0
"Network",1
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
"",0
"",0
.END
.INTER_PANEL_COLOR_D
182,3,224,244,28,159,252,255,251,255,0,31,2,241,52,255,
.END
.PROGRAM a.main ()
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
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
  ; Variables init
  release.tare = 3
  capture.tare = 4
  ;
  grip.unclamped = 1001
  grip.clamped = 1002
  grip.unclamp = 1
  grip.clamp = 2
  ;
  ;
  tcp.socket = 0
  tcp.connect.tmo = 5
  tcp.receive.tmo = 5
  tcp.send.tmo = 5
  ;
  tcp.dbg = -1
  tcp.send.dbg = -1
  tcp.recv.dbg = -1
  ;
  start.task = 2001
  do.home1 = 2100
  do.bat.alm = 2110
  ;
  CALL watchdog.pc
  ;
.END
.PROGRAM sender.pc ()
	;
	; 0 - FALSE
	; 1 - TRUE
	;
	; POWER;REPEAT;CS;ERROR;ERRORCODE;TEACH_LOCK;TP_EMG;OP_EMG;EX_EMG;
	;
	WHILE TRUE DO
		
		CALL get.state.pc (.$data[1])
		.$data[2] = "action:" + $action + "\n"
		;
		;
		CALL tcp.send.pc (.$data[], 2)
		TWAIT 0.250
	END
.END
.PROGRAM watchdog.pc ()
  WHILE TRUE DO
    IF TASK (1002) <> 1 THEN
      PCEXECUTE 2: tcp.client.pc
    END
    IF TASK (1003) <> 1 THEN
      PCEXECUTE 3: sender.pc
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
	IF SIG (2100) THEN
		.$state = .$state + "TRUE;"
	ELSE
		.$state = .$state + "FALSE;"
	END
	; MAX 12
	;
	.$state = .$state + "BATALM:"
	IF SIG (2110) THEN
		.$state = .$state + "TRUE;"
	ELSE
		.$state = .$state + "FALSE;"
	END
	; MAX 12
	.$state = .$state + "\n"
.END
.PROGRAM errstart.pc ()
	IF ERROR == -34021 OR ERROR == -10100 THEN
		tcp.socket = -1
		MC ERESET
		TWAIT 1
		PCABORT 2:
		PCABORT 3:
		TWAIT 3
		PCEXECUTE 2: tcp.client.pc
		PCEXECUTE 3: sender.pc
		TWAIT 1
	END
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
	PRINT tcp.calb.dbg: "Received ", .data.length, " strings"
	FOR .i = 1 TO .data.length
		IF LEN (.$data[.i]) > 127 THEN
			PRINT tcp.recv.dbg: /S, .i, ": "
			PRINT tcp.recv.dbg: /S, $LEFT (.$data[.i], 128)
			PRINT tcp.recv.dbg: $MID (.$data[.i], 129)
		ELSE
			PRINT tcp.recv.dbg: /S, .i, ": "
			PRINT tcp.recv.dbg: .$data[.i]
		END
	END
	;
	IF .$data[1] == "GO\n" THEN
		MC ZPOWER ON
		TWAIT 1
		MC EXECUTE a.main
	END
	IF .$data[1] == "START\n" THEN
		PULSE start.task
	END
	IF .$data[1] == "CONTINUE\n" THEN
		PULSE 2002
	END
	;
	PRINT tcp.recv.dbg: "Unhandled message. Return PING"
	.$data[1] = "PING\n"
	CALL tcp.send.pc (.$data[], 1)
.END
.PROGRAM tcp.client.pc ()
	.tcp.retry.count = 10
	WHILE TRUE DO
		; Checking for active sockets and closing them
		PRINT tcp.dbg: "Checking for active sockets and closing them"
		TCP_STATUS .number, .ports[0], .sockets[0], .errors[0], .suberrors[0], .$ips[0]
		IF .number > 0 THEN
			FOR .i = 0 TO .number - 1
				IF .sockets[.i] <> 0 THEN
					PRINT tcp.dbg: "Closing socket with id: ", .sockets[.i]
					TCP_CLOSE .status, .sockets[.i]
				END
			END
		END
		; Get IP from string
		.$tcp.ip.copy = $tcp.ip
		FOR .i = 1 TO 4
			.$ip = $DECODE (.$tcp.ip.copy, ".", 0)
			ip[.i] = VAL (.$ip)
			IF .i < 4 THEN
				.$ip = $DECODE (.$tcp.ip.copy, ".", 1)
			END
		END
		;
		; Connect to server
		PRINT tcp.dbg: "Connecting to server with ip: " + $tcp.ip
		TCP_CONNECT tcp.socket, tcp.port, ip[1], tcp.connect.tmo
		;
		; Start data processing cycle
		IF tcp.socket >= 0 THEN
			PRINT tcp.dbg: "Connection established with socket id:", tcp.socket
			.connected = TRUE
			; Start receiving data cycle
			.tcp.error.cnt = 0
			WHILE .connected AND .tcp.error.cnt <= .tcp.retry.count DO
				TCP_RECV .status, tcp.socket, .$tcp.request[1], .request.size, tcp.receive.tmo, 255
				IF .status >= 0 THEN
					IF .request.size == 0 THEN
						.tcp.error.cnt = .tcp.error.cnt + 1
						PRINT tcp.dbg: "Received data with 0 length. Error count:", .tcp.error.cnt
					ELSE
						CALL tcp.callback.pc (.$tcp.request[], .request.size)
					END
				ELSE
					IF .status == -34024 THEN
						PRINT tcp.dbg: "Timeout in receive, it's ok"
					ELSE
						.tcp.error.cnt = .tcp.error.cnt + 1
						PRINT tcp.dbg: "Failed to receive data with error:", .status, ". Error count:", .tcp.error.cnt
					END
				END
			END
		ELSE
			PRINT tcp.dbg: "Connection failed with error:", tcp.socket
			IF tcp.socket > 0 THEN
				TCP_CLOSE .status, tcp.socket
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
	; @@@ CONNECTION @@@
	; RS007L
	; 192.168.7.103
	; 23
	; @@@ PROGRAM @@@
	; 0:a.main:F
	; 0:autostart.pc:B
	; 0:sender.pc:B
	; 0:watchdog.pc:B
	; 0:get.state.pc:B
	; 0:errstart.pc:B
	; Group:TCPIP:1
	; 1:tcp.send.pc:B
	; .data.length 
	; .status 
	; .i 
	; .tcp.error.cnt 
	; 1:tcp.callback.pc:B
	; .data.length 
	; .i 
	; 1:tcp.client.pc:B
	; @@@ TRANS @@@
	; @@@ JOINTS @@@
	; @@@ REALS @@@
	; @@@ STRINGS @@@
	; @@@ INTEGER @@@
	; @@@ SIGNALS @@@
	; @@@ TOOLS @@@
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
.REALS
tcp.socket = -34024
tcp.port = 9007
ip[1] = 192
tcp.connect.tmo = 5
capture.tare = 4
do.bat.alm = 2110
do.home1 = 2100
ip[2] = 168
ip[3] = 0
ip[4] = 4
release.tare = 3
start.task = 2001
tcp.dbg = -1
tcp.receive.tmo = 5
tcp.recv.dbg = -1
tcp.send.dbg = -1
tcp.send.tmo = 5
.END
.STRINGS
$tcp.ip = "192.168.0.4"
$action = "WaitingSensorOut"
.END
