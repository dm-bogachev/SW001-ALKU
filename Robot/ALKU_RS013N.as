.AUXDATA
N_OX1    "release.tare"
N_OX2    "capture.tare"
N_OX3    "grip.unclamp"
N_OX4    "grip.clamp"
N_OX5    "release.grip"
N_OX6    "capture.grip"
N_WX1    "grip.unclamped"
N_WX2    "grip.clamped"
N_INT100    "do.home1"
N_INT110    "do.bat.alm"
.END
.INTER_PANEL_D
5,2,"","  Release ","  gripper","",10,4,6,5,-1
6,2,"","  Capture","  gripper","",10,4,6,6,-1
7,1,"  Gripper","","","  opened",10,15,4,10,1001,0
8,1,"  Gripper","","","  closed",10,15,4,10,1002,0
14,2,"","   Open ","  gripper","",10,4,5,3,0
15,2,"","   Close","  gripper","",10,4,5,4,0
19,2,"","  Release ","   tare","",10,4,6,1,-1
20,2,"","  Capture","   tare","",10,4,6,2,-1
168,14,"tcp.ip","Server IP","",10,15,0
169,8,"tcp.port","Server","port",10,15,5,1,0
170,10,"PCEXECUTE","AUTOSTART","","",10,4,15,1,"PCEXECUTE autostart.pc",0
196,8,"hmi.st.in.i","IN","stocker i",10,15,4,2,0
197,8,"hmi.st.in.j","IN","stocker j",10,15,4,2,0
199,8,"dist.xp","Distortion","X positive",10,15,4,2,0
200,8,"dist.xn","Distortion","X negative",10,15,4,2,0
201,8,"hmi.tool.no","Tool No","",10,15,2,1,0
202,8,"hmi.pos","Tool Pos","",10,15,2,1,0
203,8,"hmi.st.out.i","OUT","stocker i",10,15,4,2,0
204,8,"hmi.st.out.j","OUT","stocker j",10,15,4,2,0
206,8,"dist.yp","Distortion","Y positive",10,15,4,2,0
207,8,"dist.yn","Distortion","Y negative",10,15,4,2,0
209,8,"hmi.pospos","Pos Pos","",10,15,2,1,0
213,8,"center.x","CenterX","",10,15,4,2,0
214,8,"center.y","CenterY","",10,15,4,2,0
215,8,"hmi.ext.x","ExtrShiftX","",10,15,4,2,0
216,8,"hmi.ext.y","ExtrShiftY","",10,15,4,2,0
217,8,"hmi.x","CoordX","",10,15,4,2,0
218,8,"hmi.y","CoordY","",10,15,4,2,0
220,8,"hmi.gx","GripShiftX","",10,15,4,2,0
221,8,"hmi.gy","GripShiftY","",10,15,4,2,0
222,8,"hmi.gz","GripShiftZ","",10,15,4,2,0
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
  $action = "ReadyToStart"
  SWAIT 2001
  JMOVE #homep1
  CALL stock.out.take (1, 1)
  ;SWAIT 2001
  CALL stock.in.take (1, 1)
  ;JMOVE #homep1
  JMOVE #wait.pick
  CALL gripper.pick (1, 1)
  JMOVE #wait.pick
  ;
  FOR .i = 1 TO 4
    CALL stz.pick
    CALL stz.put(4)
  END
  ;SWAIT 2100
  ;LMOVE #before.pos
  LMOVE #wait.pick
  CALL gripper.put (1, 1)
  LMOVE #wait.pick
  LMOVE #before.pos
  ;JMOVE #homep1
  SWAIT 2100
  CALL stock.in.back (1, 1)
  ;JMOVE #homep1
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
.PROGRAM a.teach.pos ()
  TOOL tool.pick[hmi.tool.no]
  ;
  POINT .temp = #pos.pos[hmi.pospos]
  JMOVE .temp + TRANS (0, 0, 50)
  BREAK
  LMOVE #pos.pos[hmi.pospos]
  BREAK
  TWAIT 0.5
  LMOVE .temp + TRANS (0, 0, 50)
  BREAK
  TWAIT 0.5

.END
.PROGRAM stz.pick()@25/10/27 15:45 #1
  SPEED 100 ALWAYS
  ACCURACY 0.1 ALWAYS
  TOOL tool.pick[hmi.tool.no]
  ;
  cx = hmi.x
  cy = hmi.y
  a = hmi.a
  IF a == 180 THEN
    .ysh = hmi.ext.y
    .xsh = hmi.ext.x
  ELSE
    .ysh = 0
    .xsh = 0
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
  POINT .pick = f + TRANS (cx + hmi.gx + .xsh, cy + hmi.gy + .ysh, hmi.gz) + RZ (a)
  DECOMPOSE .c[1] = #pick.in
  POINT .#pick.in = #PPOINT (.c[1], .c[2], .c[3], .c[4], .c[5], .c[6] - a)
  ;
  JMOVE #wait.pick
  LMOVE .#pick.in
  IF NOT SIG (grip.unclamped) THEN
    PULSE grip.unclamp
    $action = "WaitingGripUnclamped"
    SWAIT grip.unclamped
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
  SPEED 100 ALWAYS
  ACCURACY 0 ALWAYS
  ;TOOL tool.pick[.tool.no]
  ;
  POINT .temp = #pos.pos[.pos]
  JMOVE .temp + TRANS (0, 0, 50)
  BREAK
  ;
  SPEED 20 MM/S
  LMOVE #tool.pos[.pos]
  BREAK
  PULSE grip.unclamp
  TWAIT 0.5
  ;
  LMOVE .temp + TRANS (0, 0, 200)
  LMOVE #before.pos
  LMOVE #wait.pick
.END
.PROGRAM gripper.pick (.pos,.tool.no)
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
  $action = "WaitInStockerSensor"
  SWAIT 2002
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
  ;JMOVE #before.stz
  ACCURACY 5
  LMOVE .put.stz + TRANS (, , 50)
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
  SPEED 50 MM/S
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
  PRINT tcp.recv.dbg: "Received ", .data.length, " strings"
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
    hmi.y = VAL(.$x)/10
    hmi.x = VAL(.$y)/10
    hmi.a = VAL(.$a)
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
  TWAIT 5
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
	; hmi.x
	; hmi.y
	; hmi.a
	; tcp.recv.dbg
	; tcp.dbg
	; @@@ CONNECTION @@@
	; RS013N
	; 192.168.7.102
	; 23
	; @@@ PROGRAM @@@
	; 0:a.main:F
	; .i 
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
	; 1:a.teach.pos:F
	; .temp 
	; Group:STZ:2
	; 2:stz.pick:F
	; .ysh 
	; .xsh 
	; .pick 
	; .c 
	; 2:stz.put:F
	; .pos 
	; .temp 
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
	; do.bat.alm 
	; do.home1 
	; grip.unclamped 
	; grip.clamped 
	; @@@ TOOLS @@@
	; tool.pin 
	; tool.pick[] 
	; @@@ BASE @@@
	; @@@ FRAME @@@
	; f 
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
tool.pick[1] 5.960000 6.028000 171.199997 67.500000 180.000000 0.000000
tool.pick[2] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[3] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[4] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[5] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
f 964.867126 -329.805145 106.254669 -170.054886 1.975063 -9.030190
.END
.JOINTS
#before.stz 156.298325 -5.104897 -119.705116 -18.823097 -74.563522 -35.173157
#put.stz 136.599869 15.593916 -110.148460 -13.834775 -68.366547 -16.208761
#wait.pick 153.260971 -5.244692 -116.123528 -0.757969 -68.765495 -38.446480
#post.tare.in 30.800823 -12.718077 -134.300644 0.302695 -78.852997 24.346281
#put.outpal 53.960426 40.250061 -112.267891 16.355391 -45.131153 44.870815
#before.outpal 49.146431 33.201904 -110.281738 16.235420 -53.055729 51.668869
#post.tare.out -44.259357 -0.774896 -134.428055 -2.135478 -66.283951 17.958624
#homep1 -44.998138 -30.843269 -121.243866 0.000000 -90.000000 22.499559
#plb 121.746391 -0.368285 -123.326469 -33.625637 60.744785 -127.399849
#plt 111.567101 19.220926 -99.464951 -24.734268 52.765961 -134.038071
#prb 146.465775 26.350115 -90.478882 -54.905979 71.486664 -106.070389
#prt 134.285416 40.405190 -67.878799 -50.146526 57.388458 -106.174377
#tool.pos[1] 138.564392 26.336611 -133.157196 1.993359 -19.850922 -27.701340
#before.pos 62.065971 -11.377430 -122.238724 -0.289775 -69.805077 52.576439
#pick.in 130.503326 12.590690 -97.431877 -0.818260 -69.914940 -15.682721
#pos.pos[4] 84.028427 44.137684 -101.342918 -26.716553 -42.377701 -40.990501
#tool.pos[4] 84.078476 44.192799 -101.346825 -26.757774 -42.315220 -40.994743
.END
.REALS
hmi.st.in.i = 1
hmi.st.in.j = 1
hmi.st.out.i = 3
hmi.st.out.j = 12
capture.tare = 2
hmi.gx = 18
hmi.gy = 4
hmi.x = 34.89
hmi.y = 439.223
ip[1] = 192
ip[2] = 168
ip[3] = 7
ip[4] = 137
release.tare = 1
tcp.connect.tmo = 5
tcp.port = 9013
tcp.receive.tmo = 5
tcp.send.tmo = 5
tcp.socket = 35
tyterm = -1
capture.grip = 6
hmi.pos = 1
hmi.tool.no = 1
release.grip = 5
grip.clamp = 4
grip.unclamp = 3
center.x = 147.8
center.y = 245.4
cx = 35.1128
cy = 436.305
dist.xn = 0.001
dist.xp = 0.015
dist.yn = 0.015
dist.yp = 0.015
do.bat.alm = 2110
do.home1 = 2100
do.work[1] = 2101
do.work[2] = 2102
hmi.a = 180
hmi.gz = 8
hmi.stnew.i = 1
hmi.stnew.j = 1
start.task = 2001
tcp.dbg = -1
tcp.recv.dbg = -1
tcp.send.dbg = -1
dbg.tcp = -1
tcp.calb.dbg = -1
hmi.ext.x = -38
hmi.ext.y = -4
grip.unclamped = 1001
grip.clamped = 1002
a = 180
hmi.pospos = 4
.END
.STRINGS
$tcp.ip = "192.168.0.4"
$action = "WaitingSensorOut"
.END
