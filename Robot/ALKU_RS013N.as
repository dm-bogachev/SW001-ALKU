.AUXDATA
N_OX1    "release.tare|"
N_OX2    "capture.tare|"
N_OX3    "grip.unclamp|"
N_OX4    "grip.clamp|"
N_OX5    "release.grip|"
N_OX6    "capture.grip|"
N_WX1    "grip.unclamped|"
N_WX2    "grip.clamped|"
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
  TOOL tool.grip
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
  POINT .#pick.in = #PPOINT(.c[1], .c[2],.c[3],.c[4],.c[5],.c[6]-a)
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
  
  ;
  BREAK
  LAPPRO .pick, -30
  ;LMOVE f + TRANS (cx + hmi.gx + .xsh, cy + hmi.gy + .ysh, 30 + hmi.gz) + RZ (a)
  BREAK
  SPEED 30 MM/S
  LMOVE .pick
  STABLE 1
  ;LMOVE f + TRANS (cx + hmi.gx + .xsh, cy + hmi.gy + .ysh, hmi.gz) + RZ (a)
  BREAK
  PULSE grip.clamp
  TWAIT 0.5
  LAPPRO .pick, -30
  ;LMOVE f + TRANS (cx + hmi.gx + .xsh, cy + hmi.gy + .ysh, 30 + hmi.gz) + RZ (a)
  ;
  ;TWAIT 3
  ;
  ;PULSE grip.unclamp
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
  do.work[1] = 2101
  do.work[2] = 2102
  ;...
  do.bat.alm = 2110
  ;
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
	; grip.unclamped 
	; grip.clamped 
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
stocker.out[1,13] -959.062134 -798.429077 -944.599487 0.001567 89.998672 -179.684799
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
stocker.out[2,13] -959.075623 -308.436493 -941.903809 0.001567 89.998672 -179.684799
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
stocker.out[3,13] -959.089050 181.556152 -939.208130 0.001567 89.998672 -179.684799
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
stocker.out[4,13] -959.102539 671.548706 -936.512451 0.001567 89.998672 -179.684799
stocker.out[5,1] -959.143616 1154.939941 266.165100 0.001567 89.998672 -179.684799
stocker.out[5,2] -959.141357 1155.490112 166.166595 0.001567 89.998672 -179.684799
stocker.out[5,3] -959.139038 1156.040161 66.168106 0.001567 89.998672 -179.684799
stocker.out[5,4] -959.136719 1156.590332 -33.830368 0.001567 89.998672 -179.684799
stocker.out[5,5] -959.134399 1157.140381 -133.828873 0.001567 89.998672 -179.684799
stocker.out[5,6] -959.132141 1157.690552 -233.827347 0.001567 89.998672 -179.684799
stocker.out[5,7] -959.129822 1158.240601 -333.825806 0.001567 89.998672 -179.684799
stocker.out[5,8] -959.127502 1158.790771 -433.824280 0.001567 89.998672 -179.684799
stocker.out[5,9] -959.125183 1159.340942 -533.822815 0.001567 89.998672 -179.684799
stocker.out[5,10] -959.122925 1159.890991 -633.821289 0.001567 89.998672 -179.684799
stocker.out[5,11] -959.120605 1160.441162 -733.819763 0.001567 89.998672 -179.684799
stocker.out[5,12] -959.118286 1160.991211 -833.818359 0.001567 89.998672 -179.684799
stocker.out[5,13] -959.115967 1161.541382 -933.816650 0.001567 89.998672 -179.684799
tool.pin -85.070000 -205.369995 -19.860001 67.500000 70.000000 0.000000
tool.pick[1] 5.960000 6.028000 171.199997 67.500000 180.000000 0.000000
tool.pick[2] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[3] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[4] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[5] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
f 981.726501 -343.283051 106.497421 -174.892441 1.699348 -6.076681
a 982.362183 -343.334839 107.155487 -172.662949 1.597521 -8.384374
cp0 990.319214 -340.757324 95.727997 0.001179 90.002541 -89.304375
cp1 979.957458 -831.855957 95.066269 -0.000116 90.001884 -89.302742
cp2 685.078857 -824.727844 87.384598 0.000876 90.000290 -89.304863
p0 1075.403442 -342.983490 391.449371 178.863785 111.580276 179.749527
p1 1074.441040 -835.289063 386.592712 179.072311 109.931236 179.372757
pin_tool1 -88.661003 -214.048004 -23.250000 -112.500008 110.000008 -90.000008
stocker.new[1,1] -466.552246 1167.948242 35.962097 -88.510201 89.391075 -179.934814
stocker.new[1,2] -466.439148 1167.100708 -44.033333 -88.510201 89.391075 -179.934814
stocker.new[1,3] -466.326080 1166.253174 -124.028763 -88.510201 89.391075 -179.934814
stocker.new[1,4] -466.212982 1165.405640 -204.024200 -88.510201 89.391075 -179.934814
stocker.new[1,5] -466.099915 1164.557983 -284.019623 -88.510201 89.391075 -179.934814
stocker.new[1,6] -465.986816 1163.710449 -364.015076 -88.510201 89.391075 -179.934814
stocker.new[1,7] -465.873749 1162.862915 -444.010498 -88.510201 89.391075 -179.934814
stocker.new[1,8] -465.760651 1162.015381 -524.005920 -88.510201 89.391075 -179.934814
stocker.new[1,9] -465.647552 1161.167847 -604.001343 -88.510201 89.391075 -179.934814
stocker.new[1,10] -465.534485 1160.320312 -683.996765 -88.510201 89.391075 -179.934814
stocker.new[1,11] -465.421387 1159.472656 -763.992249 -88.510201 89.391075 -179.934814
stocker.new[2,1] 143.240967 1183.814941 36.656136 -88.510201 89.391075 -179.934814
stocker.new[2,2] 143.354065 1182.967407 -43.339294 -88.510201 89.391075 -179.934814
stocker.new[2,3] 143.467163 1182.119873 -123.334717 -88.510201 89.391075 -179.934814
stocker.new[2,4] 143.580200 1181.272339 -203.330154 -88.510201 89.391075 -179.934814
stocker.new[2,5] 143.693298 1180.424805 -283.325592 -88.510201 89.391075 -179.934814
stocker.new[2,6] 143.806396 1179.577271 -363.321045 -88.510201 89.391075 -179.934814
stocker.new[2,7] 143.919495 1178.729614 -443.316467 -88.510201 89.391075 -179.934814
stocker.new[2,8] 144.032593 1177.882080 -523.311890 -88.510201 89.391075 -179.934814
stocker.new[2,9] 144.145630 1177.034546 -603.307312 -88.510201 89.391075 -179.934814
stocker.new[2,10] 144.258728 1176.187012 -683.302734 -88.510201 89.391075 -179.934814
stocker.new[2,11] 144.371826 1175.339478 -763.298218 -88.510201 89.391075 -179.934814
stocker.new[3,1] 753.034180 1199.681763 37.350178 -88.510201 89.391075 -179.934814
stocker.new[3,2] 753.147217 1198.834106 -42.645256 -88.510201 89.391075 -179.934814
stocker.new[3,3] 753.260376 1197.986572 -122.640686 -88.510201 89.391075 -179.934814
stocker.new[3,4] 753.373413 1197.139038 -202.636124 -88.510201 89.391075 -179.934814
stocker.new[3,5] 753.486572 1196.291504 -282.631531 -88.510201 89.391075 -179.934814
stocker.new[3,6] 753.599609 1195.443970 -362.626984 -88.510201 89.391075 -179.934814
stocker.new[3,7] 753.712646 1194.596436 -442.622406 -88.510201 89.391075 -179.934814
stocker.new[3,8] 753.825806 1193.748901 -522.617859 -88.510201 89.391075 -179.934814
stocker.new[3,9] 753.938843 1192.901245 -602.613281 -88.510201 89.391075 -179.934814
stocker.new[3,10] 754.052002 1192.053711 -682.608704 -88.510201 89.391075 -179.934814
stocker.new[3,11] 754.165039 1191.206177 -762.604187 -88.510201 89.391075 -179.934814
stocker.new[4,1] 1362.827393 1215.548462 38.044216 -88.510201 89.391075 -179.934814
stocker.new[4,2] 1362.940430 1214.700928 -41.951210 -88.510201 89.391075 -179.934814
stocker.new[4,3] 1363.053589 1213.853394 -121.946640 -88.510201 89.391075 -179.934814
stocker.new[4,4] 1363.166626 1213.005859 -201.942078 -88.510201 89.391075 -179.934814
stocker.new[4,5] 1363.279785 1212.158203 -281.937500 -88.510201 89.391075 -179.934814
stocker.new[4,6] 1363.392822 1211.310669 -361.932953 -88.510201 89.391075 -179.934814
stocker.new[4,7] 1363.505859 1210.463135 -441.928375 -88.510201 89.391075 -179.934814
stocker.new[4,8] 1363.619019 1209.615601 -521.923828 -88.510201 89.391075 -179.934814
stocker.new[4,9] 1363.732056 1208.768066 -601.919250 -88.510201 89.391075 -179.934814
stocker.new[4,10] 1363.845215 1207.920532 -681.914673 -88.510201 89.391075 -179.934814
stocker.new[4,11] 1363.958252 1207.072876 -761.910156 -88.510201 89.391075 -179.934814
tool.grip 5.960000 6.028000 171.199997 -112.500008 180.000000 0.000000
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
#plb 121.270554 1.004116 -121.931114 -33.196815 60.492096 -127.758659
#plt 111.962700 20.715967 -97.409065 -25.353193 52.390369 -133.332581
#prb 146.554352 26.605249 -90.002472 -55.019180 71.421440 -105.830002
#prt 134.708038 41.317688 -66.394478 -50.719925 57.330093 -105.348274
#tool.pos[1] 138.564392 26.336611 -133.157196 1.993359 -19.850922 -27.701340
#before.pos 62.065971 -11.377430 -122.238724 -0.289775 -69.805077 52.576439
#cp0 113.545128 22.599735 -94.875786 136.835510 -61.090168 62.719730
#cp4 135.463104 44.074173 -61.770443 118.713783 -70.313873 86.358009
#cpx 135.461502 44.075268 -61.771420 118.713783 -70.309067 86.358109
#cpy 123.052757 3.329534 -119.476036 131.188889 -70.686035 64.788795
#p0 111.971039 20.483826 -97.986504 -24.115957 54.042439 225.470032
#p1 134.716766 41.293598 -66.350815 -50.732227 57.166672 254.816574
#p2 133.473557 43.639095 -62.388935 -50.699005 55.230335 255.409546
#post.tare.new 30.800823 -12.718077 -134.300644 0.302695 -78.852997 24.346281
#pick.in 130.503330 12.590690 -97.431880 -0.818260 -69.914940 -15.682720
.END
.REALS
hmi.st.in.i = 1
hmi.st.in.j = 1
hmi.st.out.i = 3
hmi.st.out.j = 12
capture.tare = 2
hmi.gx = 16
hmi.gy = 6.5
hmi.x = 458.465
hmi.y = 19.132
ip[1] = 192
ip[2] = 168
ip[3] = 7
ip[4] = 137
release.tare = 1
tcp.connect.tmo = 5
tcp.port = 9013
tcp.receive.tmo = 5
tcp.send.tmo = 5
tcp.socket = 37
tyterm = -1
capture.grip = 6
hmi.pos = 1
hmi.tool.no = 1
release.grip = 5
grip.clamp = 4
grip.unclamp = 3
center.x = 147.8
center.y = 245.4
cx = 22.6905
cy = 453.791
dist.xn = 0.001
dist.xp = 0.015
dist.yn = 0.015
dist.yp = 0.015
do.bat.alm = 2110
do.home1 = 2100
do.work[1] = 2101
do.work[2] = 2102
hmi.a = 180
hmi.gz = 5
hmi.stnew.i = 1
hmi.stnew.j = 1
start.task = 2001
tcp.dbg = -1
tcp.recv.dbg = -1
tcp.send.dbg = -1
dbg.tcp = -1
tcp.calb.dbg = -1
hmi.ext.x = 0
hmi.ext.y = 0
grip.unclamped = 1001
grip.clamped = 1002
.END
.STRINGS
$tcp.ip = "192.168.0.4"
$action = "WaitingSensorOut"
.END
