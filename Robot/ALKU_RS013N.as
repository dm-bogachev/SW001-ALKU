.AUXDATA
N_OX1    "release.tare"
N_OX2    "capture.tare"
N_OX3    "grip.unclamp"
N_OX4    "grip.clamp"
N_OX5    "release.grip"
N_OX6    "capture.grip"
N_OX17    "do.home1"
N_OX18    "do.work[1]"
N_WX1    "grip.unclamped"
N_WX2    "grip.clamped"
N_WX17    "rs7.home1"
N_WX18    "rs7.work[1]"
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
N_INT14    "s.apply.coord"
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
91,8,"hmi.st.out.i","OUTSTOCKER","SELECT COL",10,15,4,2,0
92,8,"hmi.st.out.j","OUTSTOCKER","SELECT ROW",10,15,4,2,0
95,8,"hmi.t.pos","TOOL CHANG"," POSITION",10,15,2,1,0
102,8,"hmi.pos.pos","POSITIONER"," POSITION",10,15,2,1,0
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
  POINT f = FRAME (.plb, .prb, .prt, .plt)
  POINT f = f + RZ (-90)
  ; CIR1 = 100, 100 CIR2 = 148, 250
  ; CIR3 = 248, 300 CIR4 = 148; 450
  BREAK
  LMOVE f + TRANS (hmi.x, hmi.y, 10)
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
  POINT .pick = f+TRANS(cx+grip.xsh[hmi.tool.no]+.xsh,cy+grip.ysh[hmi.tool.no]+.ysh,grip.zsh[hmi.tool.no])+RZ(a)
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
.PROGRAM stz.pick()@25/10/27 15:45 #1
  SPEED 100 ALWAYS
  ACCURACY 0.1 ALWAYS
  TOOL tool.pick[hmi.tool.no]
  ;
  cx = hmi.x
  cy = hmi.y
  a = hmi.a
  .ysh = 0
  .xsh = 0
  IF a == 180 THEN
    .xsh = grip.180xsh[hmi.tool.no]
    .ysh = grip.180ysh[hmi.tool.no]
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
  IF FALSE THEN
    .pos = hmi.t.pos
    .tool.no = hmi.tool.no
  END
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
  ;
  IFPWPRINT 8, 1, 1, 5, 10 = "Robot: RS013N S/N: C2392", "Controller: F60 S/N: C10632"," ", "Powered by Robowizard Co.Ltd."
  ;
  CALL set.io.pc
  CALL set.vars.pc
  CALL watchdog.pc
  ;
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
  PRINT tcp.recv.ena: "Unhandled message. Return PING"
  .$data[1] = "PING\n"
  CALL tcp.send2.pc (.$data[], 1)
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
  ;
  ;Internal signals
  s.tcp.send.ena = 2011
  s.tcp.recv.ena = 2012
  s.tcp.ena = 2013
  s.apply.coord = 2014
  ;
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
  END
  ; Variables init
  ;
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
	; ALKU_RS013N
	; @@@ HISTORY @@@
	; @@@ INSPECTION @@@
	; hmi.x
	; hmi.y
	; hmi.a
	; tcp.recv.dbg
	; tcp.dbg
	; $tcp.ip
	; s.tcp.ena
	; s.tcp.send.ena
	; s.tcp.recv.ena
	; tcp.send.ena
	; @@@ CONNECTION @@@
	; RS013N
	; 192.168.7.102
	; 23
	; @@@ PROGRAM @@@
	; 0:a.align:F
	; 0:a.home:F
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
	; 1:a.tch.stock.in:F
	; .i 
	; .j 
	; 1:a.tch.stock.out:F
	; .i 
	; .j 
	; 1:a.teach.pos:F
	; .temp 
	; 1:a.teach.gripper:F
	; .temp 
	; 1:a.test.pick:F
	; .ysh 
	; .xsh 
	; .pick 
	; .c 
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
	; 5:get.state.pc:B
	; .$state 
	; 5:sender.pc:B
	; .$data 
	; .pc 
	; 5:tcp.send2.pc:B
	; .$data 
	; .data.length 
	; .status 
	; .i 
	; .tcp.error.cnt 
	; .$data[] 
	; 5:tcp.callback.pc:B
	; .$data 
	; .data.length 
	; .i 
	; .pc 
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
	; 5:tcp.send3.pc:B
	; .$data 
	; .data.length 
	; .status 
	; .i 
	; .tcp.error.cnt 
	; .$data[] 
	; 0:errstart.pc:B
	; 0:watchdog.pc:B
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
tool.pick[1] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[2] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[3] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[4] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[5] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
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
hmi.gx = 4
hmi.gy = -2.2
hmi.x = 206.23
hmi.y = 90.028
ip[1] = 192
ip[2] = 168
ip[3] = 7
ip[4] = 137
release.tare = 1
tcp.connect.tmo = 5
tcp.port = 9013
tcp.receive.tmo = 5
tcp.send.tmo = 5
tcp.socket = 36
tyterm = 0
capture.grip = 6
hmi.t.pos = 1
hmi.tool.no = 1
release.grip = 5
grip.clamp = 4
grip.unclamp = 3
center.x = 147.8
center.y = 245.4
cx = 270.347
cy = 37.4448
dist.xn = 0.001
dist.xp = 0.015
dist.yn = 0.015
dist.yp = 0.015
do.bat.alm = 2010
do.home1 = 17
do.work[1] = 18
hmi.a = 180
hmi.gz = 6
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
a = 0
hmi.pos.pos = 4
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
.END
.STRINGS
$tcp.ip = "192.168.7.137"
$action = "WaitingSensorOut"
.END
