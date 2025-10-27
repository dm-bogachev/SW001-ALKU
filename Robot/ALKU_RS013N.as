.AUXDATA
N_OX1    "release.tare|"
N_OX2    "capture.tare|"
N_OX3    "grip.unclamp|"
N_OX4    "grip.clamp|"
N_OX5    "release.grip|"
N_OX6    "capture.grip|"
.END
.INTER_PANEL_D
0,8,"hmi.st.in.i","New","stocker i",10,15,4,2,0
1,8,"hmi.st.in.j","New","stocker j",10,15,4,2,0
3,8,"dist.xp","Distortion","X positive",10,15,4,2,0
4,8,"dist.xn","Distortion","X negative",10,15,4,2,0
5,8,"hmi.tool.no","Tool No","",10,15,2,1,0
6,8,"hmi.pos","Tool Pos","",10,15,2,1,0
7,8,"hmi.st.out.i","Final","stocker i",10,15,4,2,0
8,8,"hmi.st.out.j","Final","stocker j",10,15,4,2,0
10,8,"dist.yp","Distortion","Y positive",10,15,4,2,0
11,8,"dist.yn","Distortion","Y negative",10,15,4,2,0
17,8,"center.x","CenterX","",10,15,4,2,0
18,8,"center.y","CenterY","",10,15,4,2,0
21,8,"hmi.x","CoordX","",10,15,4,2,0
22,8,"hmi.y","CoordY","",10,15,4,2,0
24,8,"hmi.gx","GripShiftX","",10,15,4,2,0
25,8,"hmi.gy","GripShiftY","",10,15,4,2,0
26,8,"hmi.gz","GripShiftZ","",10,15,4,2,0
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
  ;
  ;
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  JMOVE #homep1
  ;CALL gripper.put(1,1)
  ;JMOVE #wait.pick
  JMOVE #homep1
  $action = "ReadyToStart"
  SWAIT 2001
  CALL stock.in.take (1, 1)
  JMOVE #homep1
  CALL stock.out.take(1, 1)
  JMOVE #wait.pick
  CALL gripper.pick(1,1)
  CALL gripper.put(1,1)
  CALL stock.in.back (1, 1)
  JMOVE #homep1
  CALL stock.out.back (1, 1)
  JMOVE #homep1
  ;CALL stock.new.pick(1, 10)
  ;CALL stock.new.pick(3, 1)
  ;CALL stock.new.pick(3, 10)
  ;  JMOVE #homep1
  ;CALL stock.fin.pick (1, 1)
  ;CALL stock.fin.pick (2, 12)
  ;CALL stock.fin.pick (3, 12)
  ;CALL stock.fin.pick (1, 12)
  ;CALL stock.fin.pick (4, 1)
  ;CALL stock.fin.pick (4, 12)
.END
.PROGRAM a.teach.stz()@25/10/21 15:36 #0
  SPEED 250 MM/S ALWAYS
  ACCURACY 0 ALWAYS
  TOOL tool.pin
  ;
  LMOVE #plb ; Left bottom
  LMOVE #plt ; Left top
  LMOVE #prt ; Right top
  LMOVE #prb ; Right bottom
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
  POINT f = FRAME (.plb, .prb, .prt, .plt)
  POINT f = f + RZ (-90)
  ; CIR1 = 100, 100
  ; CIR2 = 148, 250
  ; CIR3 = 248, 300
  ; CIR4 = 148; 450
  BREAK
  LMOVE f + TRANS (hmi.x, hmi.y, 10)
.END
.PROGRAM a.test.pick()@25/10/24 15:48 #0
  SPEED 250 MM/S ALWAYS
  ACCURACY 0 ALWAYS
  ;
  BREAK
  cx = hmi.x
  cy = hmi.y
  IF hmi.x > center.x + 50 THEN
    cx = hmi.x - dist.xp * (hmi.x - center.x)
  END
  IF hmi.x < center.x - 50 THEN
    cx = hmi.x + dist.xn * (-hmi.x + center.x)
  END
  IF hmi.y > center.y + 50 THEN
    cy = hmi.y - dist.yp * (hmi.y - center.y)
  END
  IF hmi.y < center.y - 50
    cy = hmi.y + dist.yn * (-hmi.y + center.y)
  END
  LMOVE f + TRANS (cx + hmi.gx, cy + hmi.gy, 40)
.END
.PROGRAM a.tch.stock.in ()
  ; Use this for first teach
  IF FALSE THEN
    TOOL tool.pin
    JMOVE stocker.in[1, 1] + TRANS (0, 0, 50)
    LMOVE stocker.in[1, 1]
    FOR .i = 0 TO 3
      FOR .j = 0 TO 10
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
    FOR .i = 0 TO 4
      FOR .j = 0 TO 12
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
  POINT .temp = #tool.pos[hmi.pos]
  JMOVE .temp + TRANS (0, 0, 50)
  BREAK
  ;
  LMOVE #tool.pos[hmi.pos]
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
  LMOVE #tool.pos[hmi.pos]
  BREAK
  PULSE release.grip
  TWAIT 0.5
  ;
  LMOVE .temp + TRANS (0, 0, 50)
.END
.PROGRAM stz.pick ()
  SPEED 250 MM/S ALWAYS
  ACCURACY 0 ALWAYS
  TOOL tool.grip
  SIGNAL grip.unclamp, -grip.clamp
  ;
  JMOVE #wait.pick
  BREAK
  ;
  cx = hmi.x
  cy = hmi.y
  IF hmi.x > center.x + 50 THEN
    cx = hmi.x - dist.xp * (hmi.x - center.x)
  END
  IF hmi.x < center.x - 50 THEN
    cx = hmi.x + dist.xn * (-hmi.x + center.x)
  END
  IF hmi.y > center.y + 50 THEN
    cy = hmi.y - dist.yp * (hmi.y - center.y)
  END
  IF hmi.y < center.y - 50
    cy = hmi.y + dist.yn * (-hmi.y + center.y)
  END
  ;
  LMOVE f + TRANS (cx + hmi.gx, cy + hmi.gy, 40 + hmi.gz)
  LMOVE f + TRANS (cx + hmi.gx, cy + hmi.gy, hmi.gz)
  BREAK
  SIGNAL grip.clamp, -grip.unclamp
  TWAIT 0.5
  LMOVE f + TRANS (cx + hmi.gx, cy + hmi.gy, 40 + hmi.gz)
  ;
  TWAIT 3
  ;
  SIGNAL -grip.clamp, grip.unclamp
  LMOVE #wait.pick
  LMOVE #before.pos
  
.END
.PROGRAM gripper.pick (.pos,.tool.no)
  TOOL tool.pick[.tool.no]
  ;
  POINT .temp = #tool.pos[.pos]
  JMOVE .temp + TRANS(0, 0, 50)
  BREAK
  ;
  LMOVE #tool.pos[.pos]
  BREAK
  PULSE capture.grip
  TWAIT 0.5
  ;
  LMOVE .temp + TRANS(0, 0, 200)
.END
.PROGRAM gripper.put (.pos,.tool.no)
  TOOL tool.pick[.tool.no]
  ;
  POINT .temp = #tool.pos[.pos]
  JMOVE .temp + TRANS(0, 0, 50)
  BREAK
  ;
  LMOVE #tool.pos[.pos]
  BREAK
  PULSE release.grip
  TWAIT 0.5
  ;
  LMOVE .temp + TRANS(0, 0, 200)
.END
.PROGRAM stock.in.take (.i,.j)
  $action = "TakingFromInStocker"
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
  SPEED 10
  LMOVE stocker.in[.i, .j]
  BREAK
  PULSE capture.tare
  TWAIT 0.5
  ;
  ACCURACY 0
  SPEED 20
  LMOVE stocker.in[.i, .j] + TRANS (20)
  ;  
  $action = "WaitInStockerSensor"
  SWAIT 2002
  $action = "TakingFromInStocker"
  ;
  SPEED 50 ALWAYS
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
  LMOVE #put.stz
  BREAK
  PULSE release.tare
  TWAIT 0.5
  ; Go back
  LMOVE .put.stz + TRANS (, , 50)
  LMOVE #before.stz
  ;
  LMOVE #wait.pick
  ;;
.END
.PROGRAM stock.in.back (.i,.j)
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
  JMOVE #before.stz
  ACCURACY 5
  LMOVE .put.stz + TRANS (, , 50)
  ;
  ACCURACY 0
  LMOVE #put.stz
  BREAK
  PULSE capture.tare
  TWAIT 0.5
  ;
  ACCURACY 0
  SPEED 20
  LMOVE .put.stz + TRANS (50)
  ;
  SPEED 50 ALWAYS
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
.PROGRAM stock.out.take (.i,.j)
  $action = "TakingFromOutStocker"
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
  SPEED 10
  LMOVE stocker.out[.i, .j]
  BREAK
  TWAIT 0.5;
  ;
  ACCURACY 0
  SPEED 20
  LMOVE stocker.out[.i, .j] + TRANS (20)
  ;
  $action = "WaitOutStockerSensor"
  SWAIT 2002
  $action = "TakingFromOutStocker"
  ;
  SPEED 50 ALWAYS
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
  LMOVE #put.outpal
  BREAK
  TWAIT 0.5
  ; Go back
  LMOVE .put.outpal + TRANS (50)
  LMOVE #before.outpal
  LMOVE #post.tare.out
  ;
  LMOVE #homep1
.END
.PROGRAM stock.out.back (.i,.j)
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
  LMOVE #put.outpal
  BREAK
  PULSE capture.tare
  TWAIT 0.5
  ;
  ACCURACY 0
  SPEED 20
  LMOVE .put.outpal + TRANS (50)
  ;
  SPEED 50 ALWAYS
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
  errstart.pc ON
  ;AUTOSTART2.PC ON
  ;
  ; Variables init
  release.tare = 1
  capture.tare = 2
  ;
  release.grip = 5
  capture.grip = 6
  ;
  grip.unclamp = 3
  grip.clamp = 4
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
  do.work[1] = 2101
  do.work[2] = 2102
  ;...
  do.bat.alm = 2110
  ;
  dbg.tcp.send = 2120
  dbg.tcp = 2121
  ;o.grip.tare.op  = 2
  ;o.grip.obj.cl   = 3
  ;o.grip.obj.op   = 4
  ;o.grip.lock     = 5
  ;o.grip.unlock   = 6
  ;POINT #homep1 = #PPOINT (0, 0, 90, 0, 90, 0)
  ;SETHOME 10, #homep1
  CALL watchdog.pc
  
  
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
  IF INSTR(.$data[1], "PICK") THEN
    .$temp = $DECODE(.$data[1], ":", 0)
    .$temp = $DECODE(.$data[1], ":", 1)
    .$x = $DECODE(.$data[1], ",", 0)
    .$temp = $DECODE(.$data[1], ",", 1)
    .$y = $DECODE(.$data[1], ",", 0)
    .$temp = $DECODE(.$data[1], ",", 1)
    .$a = .$data[1]
    hmi.x = VAL(.$x)
    hmi.y = VAL(.$y)
    hmi.a = VAL(.$a)
    PRINT 0: .$x, .$y, .$a
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
.PROGRAM sender.pc ()
  ;
  ; 0 - FALSE
  ; 1 - TRUE
  ;
  ; POWER;REPEAT;CS;ERROR;ERRORCODE;TEACH_LOCK;TP_EMG;OP_EMG;EX_EMG;
  ;
  WHILE TRUE DO

    CALL get.state.pc(.$data[1])
    .$data[2] = "action:" + $action + "\n"
    ;
    ;
    CALL tcp.send.pc (.$data[], 2)
    TWAIT 0.250
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
.PROGRAM Comment___ () ; Comments for IDE. Do not use.
	; @@@ PROJECT @@@
	; @@@ PROJECTNAME @@@
	; ALKU_RS013N
	; @@@ HISTORY @@@
	; @@@ INSPECTION @@@
	; @@@ CONNECTION @@@
	; RS013N
	; 192.168.7.102
	; 23
	; @@@ PROGRAM @@@
	; 0:a.main:F
	; Group:Teach:1
	; 1:a.teach.stz:F
	; .plb 
	; .plt 
	; .prt 
	; .prb 
	; .dx1 
	; .dx2 
	; .dy1 
	; .dy2 
	; 1:a.test.pick:F
	; 1:a.tch.stock.in:F
	; .i 
	; .j 
	; 1:a.tch.stock.out:F
	; .i 
	; .j 
	; 1:a.teach.gripper:F
	; .temp 
	; Group:STZ:2
	; 2:stz.pick:F
	; Group:ToolChange:3
	; 3:gripper.pick:F
	; .pos 
	; .tool.no 
	; .temp 
	; 3:gripper.put:F
	; .pos 
	; .tool.no 
	; .temp 
	; Group:Stockers:4
	; 4:stock.in.take:F
	; .i 
	; .j 
	; .post.tare.in 
	; .ct1 
	; .ct2 
	; .mid.point 
	; .put.stz 
	; 4:stock.in.back:F
	; .i 
	; .j 
	; .post.tare.in 
	; .ct1 
	; .ct2 
	; .mid.point 
	; .put.stz 
	; 4:stock.out.take:F
	; .i 
	; .j 
	; .post.tare.out 
	; .ct1 
	; .ct2 
	; .mid.point 
	; .put.outpal 
	; 4:stock.out.back:F
	; .i 
	; .j 
	; .post.tare.out 
	; .ct1 
	; .ct2 
	; .mid.point 
	; .put.outpal 
	; .put.fin 
	; 0:autostart.pc:B
	; Group:TCPIP:5
	; 5:tcp.send.pc:B
	; .$data 
	; .data.length 
	; .status 
	; .i 
	; .tcp.error.cnt 
	; 5:tcp.callback.pc:B
	; .$data 
	; .data.length 
	; .i 
	; 5:tcp.client.pc:B
	; .tcp.retry.count 
	; .number 
	; .ports 
	; .sockets 
	; .errors 
	; .suberrors 
	; .$ips 
	; .i 
	; .status 
	; .$tcp.ip.copy 
	; .$ip 
	; .connected 
	; .tcp.error.cnt 
	; .$tcp.request 
	; .request.size 
	; 0:sender.pc:B
	; .$data 
	; 0:get.state.pc:B
	; .$state 
	; 0:errstart.pc:B
	; 0:watchdog.pc:B
	; @@@ TRANS @@@
	; @@@ JOINTS @@@
	; @@@ REALS @@@
	; @@@ STRINGS @@@
	; @@@ INTEGER @@@
	; @@@ SIGNALS @@@
	; capture.tare 
	; release.tare 
	; capture.grip 
	; release.grip 
	; grip.clamp 
	; grip.unclamp 
	; @@@ TOOLS @@@
	; tool.pin 
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
stocker.in[1,5] -466.552246 1167.948242 35.962097 -88.510201 89.391075 -179.934814
stocker.in[1,4] -466.552246 1167.948242 35.962097 -88.510201 89.391075 -179.934814
stocker.in[1,3] -466.552246 1167.948242 35.962097 -88.510201 89.391075 -179.934814
stocker.in[1,2] -466.439148 1167.100708 -44.033333 -88.510201 89.391075 -179.934814
stocker.in[1,1] -466.552246 1167.948242 35.962097 -88.510201 89.391075 -179.934814
stocker.in[1,6] -465.986816 1163.710449 -364.015076 -88.510201 89.391075 -179.934814
stocker.in[1,7] -465.873749 1162.862915 -444.010498 -88.510201 89.391075 -179.934814
stocker.in[1,8] -465.760651 1162.015381 -524.005920 -88.510201 89.391075 -179.934814
stocker.in[1,9] -465.647552 1161.167847 -604.001343 -88.510201 89.391075 -179.934814
stocker.in[1,10] -465.534485 1160.320312 -683.996765 -88.510201 89.391075 -179.934814
stocker.in[1,11] -465.421387 1159.472656 -763.992249 -88.510201 89.391075 -179.934814
stocker.in[2,1] 143.240967 1183.814941 36.656136 -88.510201 89.391075 -179.934814
stocker.in[2,2] 143.354065 1182.967407 -43.339294 -88.510201 89.391075 -179.934814
stocker.in[2,3] 143.467163 1182.119873 -123.334717 -88.510201 89.391075 -179.934814
stocker.in[2,4] 143.580200 1181.272339 -203.330154 -88.510201 89.391075 -179.934814
stocker.in[2,5] 143.693298 1180.424805 -283.325592 -88.510201 89.391075 -179.934814
stocker.in[2,6] 143.806396 1179.577271 -363.321045 -88.510201 89.391075 -179.934814
stocker.in[2,7] 143.919495 1178.729614 -443.316467 -88.510201 89.391075 -179.934814
stocker.in[2,8] 144.032593 1177.882080 -523.311890 -88.510201 89.391075 -179.934814
stocker.in[2,9] 144.145630 1177.034546 -603.307312 -88.510201 89.391075 -179.934814
stocker.in[2,10] 144.258728 1176.187012 -683.302734 -88.510201 89.391075 -179.934814
stocker.in[2,11] 144.371826 1175.339478 -763.298218 -88.510201 89.391075 -179.934814
stocker.in[3,1] 753.034180 1199.681763 37.350178 -88.510201 89.391075 -179.934814
stocker.in[3,2] 753.147217 1198.834106 -42.645256 -88.510201 89.391075 -179.934814
stocker.in[3,3] 753.260376 1197.986572 -122.640686 -88.510201 89.391075 -179.934814
stocker.in[3,4] 753.373413 1197.139038 -202.636124 -88.510201 89.391075 -179.934814
stocker.in[3,5] 753.486572 1196.291504 -282.631531 -88.510201 89.391075 -179.934814
stocker.in[3,6] 753.599609 1195.443970 -362.626984 -88.510201 89.391075 -179.934814
stocker.in[3,7] 753.712646 1194.596436 -442.622406 -88.510201 89.391075 -179.934814
stocker.in[3,8] 753.825806 1193.748901 -522.617859 -88.510201 89.391075 -179.934814
stocker.in[3,9] 753.938843 1192.901245 -602.613281 -88.510201 89.391075 -179.934814
stocker.in[3,10] 754.052002 1192.053711 -682.608704 -88.510201 89.391075 -179.934814
stocker.in[3,11] 754.165039 1191.206177 -762.604187 -88.510201 89.391075 -179.934814
stocker.in[4,1] 1362.827393 1215.548462 38.044216 -88.510201 89.391075 -179.934814
stocker.in[4,2] 1362.940430 1214.700928 -41.951210 -88.510201 89.391075 -179.934814
stocker.in[4,3] 1363.053589 1213.853394 -121.946640 -88.510201 89.391075 -179.934814
stocker.in[4,4] 1363.166626 1213.005859 -201.942078 -88.510201 89.391075 -179.934814
stocker.in[4,5] 1363.279785 1212.158203 -281.937500 -88.510201 89.391075 -179.934814
stocker.in[4,6] 1363.392822 1211.310669 -361.932953 -88.510201 89.391075 -179.934814
stocker.in[4,7] 1363.505859 1210.463135 -441.928375 -88.510201 89.391075 -179.934814
stocker.in[4,8] 1363.619019 1209.615601 -521.923828 -88.510201 89.391075 -179.934814
stocker.in[4,9] 1363.732056 1208.768066 -601.919250 -88.510201 89.391075 -179.934814
stocker.in[4,10] 1363.845215 1207.920532 -681.914673 -88.510201 89.391075 -179.934814
stocker.in[4,11] 1363.958252 1207.072876 -761.910156 -88.510201 89.391075 -179.934814
stocker.out[1,1] -1160.959351 -736.008118 344.362915 -179.998795 89.999100 180.000000
stocker.out[1,2] -1160.960815 -736.008179 244.362900 -179.998795 89.999100 180.000000
stocker.out[1,3] -1160.962402 -736.008179 144.362900 -179.998795 89.999100 180.000000
stocker.out[1,4] -1160.963867 -736.008179 44.362900 -179.998795 89.999100 180.000000
stocker.out[1,5] -1160.965454 -736.008179 -55.637100 -179.998795 89.999100 180.000000
stocker.out[1,6] -1160.966919 -736.008301 -155.637100 -179.998795 89.999100 180.000000
stocker.out[1,7] -1160.968384 -736.008301 -255.637100 -179.998795 89.999100 180.000000
stocker.out[1,8] -1160.969971 -736.008423 -355.637085 -179.998795 89.999100 180.000000
stocker.out[1,9] -1160.971436 -736.008423 -455.637085 -179.998795 89.999100 180.000000
stocker.out[1,10] -1160.973022 -736.008423 -555.637085 -179.998795 89.999100 180.000000
stocker.out[1,11] -1160.974487 -736.008423 -655.637085 -179.998795 89.999100 180.000000
stocker.out[1,12] -1160.975952 -736.008484 -755.637085 -179.998795 89.999100 180.000000
stocker.out[1,13] -1160.977539 -736.008484 -855.637085 -179.998795 89.999100 180.000000
stocker.out[2,1] -1160.969604 -246.008102 344.362793 -179.998795 89.999100 180.000000
stocker.out[2,2] -1160.971191 -246.008102 244.362793 -179.998795 89.999100 180.000000
stocker.out[2,3] -1160.972656 -246.008194 144.362793 -179.998795 89.999100 180.000000
stocker.out[2,4] -1160.974121 -246.008194 44.362801 -179.998795 89.999100 180.000000
stocker.out[2,5] -1160.975708 -246.008194 -55.637199 -179.998795 89.999100 180.000000
stocker.out[2,6] -1160.977173 -246.008301 -155.637207 -179.998795 89.999100 180.000000
stocker.out[2,7] -1160.978760 -246.008301 -255.637207 -179.998795 89.999100 180.000000
stocker.out[2,8] -1160.980225 -246.008301 -355.637207 -179.998795 89.999100 180.000000
stocker.out[2,9] -1160.981689 -246.008408 -455.637207 -179.998795 89.999100 180.000000
stocker.out[2,10] -1160.983276 -246.008408 -555.637207 -179.998795 89.999100 180.000000
stocker.out[2,11] -1160.984741 -246.008499 -655.637207 -179.998795 89.999100 180.000000
stocker.out[2,12] -1160.986328 -246.008499 -755.637207 -179.998795 89.999100 180.000000
stocker.out[2,13] -1160.987793 -246.008499 -855.637207 -179.998795 89.999100 180.000000
stocker.out[3,1] -1160.979858 243.991898 344.362610 -179.998795 89.999100 180.000000
stocker.out[3,2] -1160.981445 243.991806 244.362595 -179.998795 89.999100 180.000000
stocker.out[3,3] -1160.982910 243.991806 144.362595 -179.998795 89.999100 180.000000
stocker.out[3,4] -1160.984497 243.991806 44.362598 -179.998795 89.999100 180.000000
stocker.out[3,5] -1160.985962 243.991806 -55.637402 -179.998795 89.999100 180.000000
stocker.out[3,6] -1160.987427 243.991699 -155.637405 -179.998795 89.999100 180.000000
stocker.out[3,7] -1160.989014 243.991699 -255.637405 -179.998795 89.999100 180.000000
stocker.out[3,8] -1160.990479 243.991592 -355.637390 -179.998795 89.999100 180.000000
stocker.out[3,9] -1160.992065 243.991592 -455.637390 -179.998795 89.999100 180.000000
stocker.out[3,10] -1160.993530 243.991592 -555.637390 -179.998795 89.999100 180.000000
stocker.out[3,11] -1160.994995 243.991592 -655.637390 -179.998795 89.999100 180.000000
stocker.out[3,12] -1160.996582 243.991501 -755.637329 -179.998795 89.999100 180.000000
stocker.out[3,13] -1160.998047 243.991501 -855.637329 -179.998795 89.999100 180.000000
stocker.out[4,1] -1160.990234 733.991882 344.362488 -179.998795 89.999100 180.000000
stocker.out[4,2] -1160.991699 733.991882 244.362503 -179.998795 89.999100 180.000000
stocker.out[4,3] -1160.993164 733.991821 144.362503 -179.998795 89.999100 180.000000
stocker.out[4,4] -1160.994751 733.991821 44.362499 -179.998795 89.999100 180.000000
stocker.out[4,5] -1160.996216 733.991821 -55.637501 -179.998795 89.999100 180.000000
stocker.out[4,6] -1160.997803 733.991821 -155.637497 -179.998795 89.999100 180.000000
stocker.out[4,7] -1160.999268 733.991577 -255.637497 -179.998795 89.999100 -180.000000
stocker.out[4,8] -1161.000732 733.991577 -355.637512 -179.998795 89.999100 180.000000
stocker.out[4,9] -1161.002319 733.991577 -455.637512 -179.998795 89.999100 180.000000
stocker.out[4,10] -1161.003784 733.991577 -555.637512 -179.998795 89.999100 180.000000
stocker.out[4,11] -1161.005371 733.991516 -655.637512 -179.998795 89.999100 180.000000
stocker.out[4,12] -1161.006836 733.991516 -755.637573 -179.998795 89.999100 180.000000
stocker.out[4,13] -1161.008301 733.991516 -855.637573 -179.998795 89.999100 180.000000
stocker.out[5,1] -1161.000488 1223.991943 344.362305 -179.998795 89.999100 180.000000
stocker.out[5,2] -1161.001953 1223.991943 244.362305 -179.998795 89.999100 180.000000
stocker.out[5,3] -1161.003540 1223.991699 144.362305 -179.998795 89.999100 180.000000
stocker.out[5,4] -1161.005005 1223.991699 44.362301 -179.998795 89.999100 180.000000
stocker.out[5,5] -1161.006470 1223.991699 -55.637699 -179.998795 89.999100 180.000000
stocker.out[5,6] -1161.008057 1223.991699 -155.637695 -179.998795 89.999100 180.000000
stocker.out[5,7] -1161.009521 1223.991699 -255.637695 -179.998795 89.999100 180.000000
stocker.out[5,8] -1161.011108 1223.991699 -355.637695 -179.998795 89.999100 180.000000
stocker.out[5,9] -1161.012573 1223.991699 -455.637695 -179.998795 89.999100 180.000000
stocker.out[5,10] -1161.014038 1223.991699 -555.637695 -179.998795 89.999100 180.000000
stocker.out[5,11] -1161.015625 1223.991455 -655.637695 -179.998795 89.999100 180.000000
stocker.out[5,12] -1161.017090 1223.991455 -755.637695 -179.998795 89.999100 180.000000
stocker.out[5,13] -1161.018677 1223.991455 -855.637695 -179.998795 89.999100 180.000000
tool.pin -85.070000 -205.369995 -19.860001 67.500000 70.000000 0.000000
tool.pick[1] 5.960000 6.028000 171.199997 67.500000 180.000000 0.000000
tool.pick[2] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[3] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[4] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[5] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
f 981.726501 -343.283051 106.497421 -174.892441 1.699348 -6.076681
.END
.JOINTS
#before.stz 156.298325 -5.104897 -119.705116 -18.823097 -74.563522 -35.173157
#put.stz 136.599869 15.593916 -110.148460 -13.834775 -68.366547 -16.208761
#wait.pick 153.260971 -5.244692 -116.123528 -0.757969 -68.765495 -38.446480
#post.tare.in 30.800823 -12.718077 -134.300644 0.302695 -78.852997 24.346281
#put.outpal 66.769150 56.143642 -109.106346 13.947364 -34.032902 32.835331
#before.outpal 37.101517 44.907837 -88.343483 18.279228 -60.421379 64.408524
#post.tare.out -37.716774 22.508850 -105.851593 -4.406924 -71.267632 12.353700
#homep1 -44.999730 0.000000 -89.999860 0.000000 -90.000000 22.499560
#plb 121.270554 1.004116 -121.931114 -33.196815 60.492096 -127.758659
#plt 111.962700 20.715967 -97.409065 -25.353193 52.390369 -133.332581
#prb 146.554352 26.605249 -90.002472 -55.019180 71.421440 -105.830002
#prt 134.708038 41.317688 -66.394478 -50.719925 57.330093 -105.348274
#tool.pos[1] 138.564392 26.336611 -133.157196 1.993359 -19.850922 -27.701340
.END
.REALS
hmi.st.in.i = 1
hmi.st.in.j = 1
hmi.st.out.i = 2
hmi.st.out.j = 11
capture.tare = 2
hmi.gx = 0
hmi.gy = 0
hmi.x = 56.2
hmi.y = 57.6
ip[1] = 192
ip[2] = 168
ip[3] = 7
ip[4] = 137
release.tare = 1
tcp.connect.tmo = 5
tcp.port = 9013
tcp.receive.tmo = 5
tcp.send.tmo = 5
tcp.socket = -34024
tyterm = -1
capture.grip = 6
hmi.pos = 1
hmi.tool.no = 1
release.grip = 5
grip.clamp = 4
grip.unclamp = 3
.END
.STRINGS
$tcp.ip = "192.168.0.4"
$action = "WaitingSensorOut"
.END
