.INTER_PANEL_D
0,8,"hmi.stnew.i","New","stocker i",10,15,4,2,0
1,8,"hmi.stnew.j","New","stocker j",10,15,4,2,0
3,8,"dist.xp","Distortion","X positive",10,15,4,2,0
4,8,"dist.xn","Distortion","X negative",10,15,4,2,0
5,8,"hmi.tool.no","Tool No","",10,15,2,1,0
6,8,"hmi.pos","Tool Pos","",10,15,2,1,0
7,8,"hmi.strdy.i","Final","stocker i",10,15,4,2,0
8,8,"hmi.strdy.j","Final","stocker j",10,15,4,2,0
10,8,"dist.yp","Distortion","Y positive",10,15,4,2,0
11,8,"dist.yn","Distortion","Y negative",10,15,4,2,0
17,8,"center.x","CenterX","",10,15,4,2,0
18,8,"center.y","CenterY","",10,15,4,2,0
21,8,"hmi.x","CoordX","",10,15,4,2,0
22,8,"hmi.y","CoordY","",10,15,4,2,0
24,8,"hmi.gx","GripShiftX","",10,15,4,2,0
25,8,"hmi.gy","GripShiftY","",10,15,4,2,0
26,8,"hmi.gz","GripShiftZ","",10,15,4,2,0
28,8,"hmi.stnew.i","New","stocker i",10,15,4,2,0
29,8,"hmi.stnew.j","New","stocker j",10,15,4,2,0
33,8,"hmi.tool.no","Tool No","",10,15,2,1,0
34,8,"hmi.pos","Tool Pos","",10,15,2,1,0
35,8,"hmi.strdy.i","Final","stocker i",10,15,4,2,0
36,8,"hmi.strdy.j","Final","stocker j",10,15,4,2,0
49,8,"hmi.x","CoordX","",10,15,4,2,0
50,8,"hmi.y","CoordY","",10,15,4,2,0
52,8,"hmi.gx","GripShiftX","",10,15,4,2,0
53,8,"hmi.gy","GripShiftY","",10,15,4,2,0
.END
.INTER_PANEL_TITLE
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
  CALL stock.new.pick (1, 1)
  CALL gripper.pick(1,1)
  CALL gripper.put(1,1)
  CALL stock.new.back (1, 1)
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
.PROGRAM stock.new.back (.i,.j)
  TOOL tool.pin
  ;
  POINT .temp1 = #post.tare.new
  DECOMPOSE .ct1[1] = .temp1
  DECOMPOSE .ct2[1] = stocker.new[.i, .j]
  POINT .temp2 = TRANS (.ct2[1], .ct1[2], .ct2[3], .ct1[4], .ct1[5], .ct1[6])
  POINT .temp3 = #put.stz
  ;
  ACCURACY 20 ALWAYS
  SPEED 100 ALWAYS
  JMOVE #before.stz
  ;  JMOVE stocker.new[.i,.j]+TRANS(0,0,200)
  ACCURACY 5
  LMOVE .temp3 + TRANS (, , 50)
  ;
  ACCURACY 0
  LMOVE #put.stz
  BREAK
  PULSE capture.tare
  TWAIT 0.5
  ;
  ACCURACY 0
  SPEED 20
  LMOVE .temp3 + TRANS (50)
  ;
  SPEED 50 ALWAYS
  ACCURACY 5
  LMOVE #before.stz
  LMOVE #post.tare.new
  LMOVE stocker.new[.i, .j] + TRANS (20, 0, 500)
  ;
  ACCURACY 0
  SPEED 20
  LMOVE stocker.new[.i, .j] + TRANS (20)
  BREAK
  ;
  ACCURACY 0
  SPEED 10
  LMOVE stocker.new[.i, .j]
  BREAK
  PULSE release.tare
  TWAIT 0.5
  ;
  LMOVE stocker.new[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.new[.i, .j] + TRANS (0, 0, 200)
  ;  JMOVE stocker.new[.i,.j]+TRANS(0,0,50)
  ;;
  ;  ACCURACY 0
  ;  SPEED 10
  ;  LMOVE stocker.new[.i,.j]
  ;  BREAK
  ;  PULSE capture.tare
  ;  TWAIT 0.5
  ;;
  ;  ACCURACY 0
  ;  SPEED 20
  ;  LMOVE stocker.new[.i,.j]+TRANS(20)
  ;;
  ;  SPEED 50 ALWAYS
  ;  ACCURACY 5
  ;  LMOVE stocker.new[.i,.j]+TRANS(20,0,500)
  ;  ACCURACY 5
  ;  LMOVE .temp2
  ;  ACCURACY 5
  ;  LMOVE #post.tare.new
  ;; Put to stz
  ;  LMOVE #before.stz
  ;  ACCURACY 1
  ;  LMOVE .temp3+TRANS(50)
  ;;LAPPRO #put.stz, 50
  ;  ACCURACY 0
  ;  LMOVE #put.stz
  ;  BREAK
  ;  PULSE release.tare
  ;  TWAIT 0.5
  ;; Go back
  ;  LMOVE .temp3+TRANS(,,50)
  ;;LAPPRO #put.stz, 50
  ;  LMOVE #before.stz
  ;;
  ;  LMOVE #wait.pick
  ;;
.END
.PROGRAM stock.fin.pick (.i,.j)
  TOOL tool.pin
  ;
  POINT .temp1 = #post.tare.fin
  DECOMPOSE .ct1[1] = .temp1
  DECOMPOSE .ct2[1] = stocker.fin[.i, .j]
  POINT .temp2 = TRANS (.ct1[1], .ct2[2], .ct2[3], .ct1[4], .ct1[5], .ct1[6])
  POINT .temp3 = #put.fin
  ;
  ACCURACY 20 ALWAYS
  SPEED 100 ALWAYS
  JMOVE stocker.fin[.i, .j] + TRANS (0, 0, 200)
  ACCURACY 5
  JMOVE stocker.fin[.i, .j] + TRANS (0, 0, 50)
  ;
  ACCURACY 0
  SPEED 10
  LMOVE stocker.fin[.i, .j]
  BREAK
  ;CALL pick.tare
  ; 1
  TWAIT 0.5;
  ;
  ACCURACY 0
  SPEED 20
  LMOVE stocker.fin[.i, .j] + TRANS (20)
  ;
  SPEED 50 ALWAYS
  ACCURACY 5
  LMOVE stocker.fin[.i, .j] + TRANS (20, 0, 500)
  ACCURACY 5
  LMOVE .temp2
  ACCURACY 5
  LMOVE #post.tare.fin
  ; Put to stz
  LMOVE #before.fin
  ACCURACY 1
  
  LMOVE .temp3 + TRANS (50)
  ;LAPPRO #put.fin, 50
  ACCURACY 0
  LMOVE #put.fin
  BREAK
  ;
  ;
  TWAIT 0.5
  ; Go back
  LMOVE .temp3 + TRANS (50)
  LMOVE #before.fin
  LMOVE #post.tare.fin
  ;
  LMOVE #homep1
  ;LMOVE #wait.pick
  ;;;
  ;JMOVE #post.tare
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
.PROGRAM stock.new.pick (.i,.j)
  ;
  TOOL tool.pin
  ;
  POINT .temp1 = #post.tare.new
  DECOMPOSE .ct1[1] = .temp1
  DECOMPOSE .ct2[1] = stocker.new[.i, .j]
  POINT .temp2 = TRANS (.ct2[1], .ct1[2], .ct2[3], .ct1[4], .ct1[5], .ct1[6])
  POINT .temp3 = #put.stz
  ;
  ACCURACY 20 ALWAYS
  SPEED 100 ALWAYS
  JMOVE stocker.new[.i, .j] + TRANS (0, 0, 200)
  ACCURACY 5
  JMOVE stocker.new[.i, .j] + TRANS (0, 0, 50)
  ;
  ACCURACY 0
  SPEED 10
  LMOVE stocker.new[.i, .j]
  BREAK
  PULSE capture.tare
  TWAIT 0.5
  ;
  ACCURACY 0
  SPEED 20
  LMOVE stocker.new[.i, .j] + TRANS (20)
  ;
  SPEED 50 ALWAYS
  ACCURACY 5
  LMOVE stocker.new[.i, .j] + TRANS (20, 0, 500)
  ACCURACY 5
  LMOVE .temp2
  ACCURACY 5
  LMOVE #post.tare.new
  ; Put to stz
  LMOVE #before.stz
  ACCURACY 1
  LMOVE .temp3 + TRANS (50)
  BREAK
  ;LAPPRO #put.stz, 50
  ACCURACY 0
  LMOVE #put.stz
  BREAK
  PULSE release.tare
  TWAIT 0.5
  ; Go back
  LMOVE .temp3 + TRANS (, , 50)
  ;LAPPRO #put.stz, 50
  LMOVE #before.stz
  ;
  LMOVE #wait.pick
  ;;
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
.PROGRAM a.tch.stock.new ()
  ; Use this for first teach
  IF FALSE THEN
    TOOL tool.pin
    JMOVE stocker.new[1, 1] + TRANS (0, 0, 50)
    LMOVE stocker.new[1, 1]
    FOR .i = 0 TO 3
      FOR .j = 0 TO 10
        PRINT 0: .i, .j
        POINT stocker.new[.i + 1, .j + 1] = stocker.new[1, 1] + TRANS (-80 * .j, -610 * .i)
      END
    END
  END
  ; Correct point
  TOOL tool.pin
  .i = hmi.stnew.i
  .j = hmi.stnew.j
  JMOVE stocker.new[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.new[.i, .j] ; *** TEACH POINT ***
  LMOVE stocker.new[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.new[.i, .j]
  LMOVE stocker.new[.i, .j] + TRANS (0, 0, 50)
  ;
  
.END
.PROGRAM a.tch.stock.fin ()
  ; Use this for first teach
  IF FALSE THEN
    JMOVE stocker.fin[1, 1] + TRANS (0, 0, 50)
    LMOVE stocker.fin[1, 1]
    FOR .i = 0 TO 4
      FOR .j = 0 TO 12
        PRINT 0: .i, .j
        POINT stocker.fin[.i + 1, .j + 1] = stocker.fin[1, 1] + TRANS (-100 * .j, -490 * .i)
      END
    END
  END
  ; Correct point
  .i = hmi.strdy.i
  .j = hmi.strdy.j
  JMOVE stocker.fin[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.fin[.i, .j] ; *** TEACH POINT ***
  LMOVE stocker.fin[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.fin[.i, .j]
  LMOVE stocker.fin[.i, .j] + TRANS (0, 0, 50)
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
  ;AUTOSTART2.PC ON
  ;
  release.tare = 1
  capture.tare = 2
  ;
  release.grip = 5
  capture.grip = 6
  ;
  grip.unclamp = 3
  grip.clamp = 4
  ;o.grip.tare.op  = 2
  ;o.grip.obj.cl   = 3
  ;o.grip.obj.op   = 4
  ;o.grip.lock     = 5
  ;o.grip.unlock   = 6
  ;POINT #homep1 = #PPOINT (0, 0, 90, 0, 90, 0)
  ;SETHOME 10, #homep1
.END
.PROGRAM Comment___ () ; Comments for IDE. Do not use.
	; @@@ PROJECT @@@
	; @@@ PROJECTNAME @@@
	; ALKU_RS013N
	; @@@ HISTORY @@@
	; @@@ INSPECTION @@@
	; @@@ CONNECTION @@@
	; BiPitronRS013N
	; 192.168.7.102
	; 23
	; @@@ PROGRAM @@@
	; 0:a.main:F
	; 0:stock.new.back:F
	; .i 
	; .j 
	; .temp1 
	; .ct1 
	; .ct2 
	; .temp2 
	; .temp3 
	; 0:stock.fin.pick:F
	; .i 
	; .j 
	; .temp1 
	; .ct1 
	; .ct2 
	; .temp2 
	; .temp3 
	; 0:gripper.pick:F
	; .pos 
	; .tool.no 
	; .temp 
	; 0:stock.new.pick:F
	; .i 
	; .j 
	; .temp1 
	; .ct1 
	; .ct2 
	; .temp2 
	; .temp3 
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
	; 1:a.tch.stock.new:F
	; .i 
	; .j 
	; 1:a.tch.stock.fin:F
	; .i 
	; .j 
	; 1:a.teach.gripper:F
	; .temp 
	; 0:gripper.put:F
	; .pos 
	; .tool.no 
	; .temp 
	; 0:stz.pick:F
	; 0:autostart.pc:B
	; @@@ TRANS @@@
	; @@@ JOINTS @@@
	; @@@ REALS @@@
	; @@@ STRINGS @@@
	; @@@ INTEGER @@@
	; @@@ SIGNALS @@@
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
new.tare[1] 604.930725 1195.423706 -358.174500 75.191704 179.999496 74.734802
new.tare[2] -615.068176 1195.371338 -358.166412 154.422699 179.999298 153.954895
new.tare[3] -615.079712 1195.414062 281.856812 114.617409 179.995193 114.147507
new.tare[4] 604.951111 1195.444946 281.842712 87.434402 179.999603 86.982697
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
stocker.fin[1,1] -1160.959351 -736.008118 344.362915 -179.998795 89.999100 180.000000
stocker.fin[1,2] -1160.960815 -736.008179 244.362900 -179.998795 89.999100 180.000000
stocker.fin[1,3] -1160.962402 -736.008179 144.362900 -179.998795 89.999100 180.000000
stocker.fin[1,4] -1160.963867 -736.008179 44.362900 -179.998795 89.999100 180.000000
stocker.fin[1,5] -1160.965454 -736.008179 -55.637100 -179.998795 89.999100 180.000000
stocker.fin[1,6] -1160.966919 -736.008301 -155.637100 -179.998795 89.999100 180.000000
stocker.fin[1,7] -1160.968384 -736.008301 -255.637100 -179.998795 89.999100 180.000000
stocker.fin[1,8] -1160.969971 -736.008423 -355.637085 -179.998795 89.999100 180.000000
stocker.fin[1,9] -1160.971436 -736.008423 -455.637085 -179.998795 89.999100 180.000000
stocker.fin[1,10] -1160.973022 -736.008423 -555.637085 -179.998795 89.999100 180.000000
stocker.fin[1,11] -1160.974487 -736.008423 -655.637085 -179.998795 89.999100 180.000000
stocker.fin[1,12] -1160.975952 -736.008484 -755.637085 -179.998795 89.999100 180.000000
stocker.fin[1,13] -1160.977539 -736.008484 -855.637085 -179.998795 89.999100 180.000000
stocker.fin[2,1] -1160.969604 -246.008102 344.362793 -179.998795 89.999100 180.000000
stocker.fin[2,2] -1160.971191 -246.008102 244.362793 -179.998795 89.999100 180.000000
stocker.fin[2,3] -1160.972656 -246.008194 144.362793 -179.998795 89.999100 180.000000
stocker.fin[2,4] -1160.974121 -246.008194 44.362801 -179.998795 89.999100 180.000000
stocker.fin[2,5] -1160.975708 -246.008194 -55.637199 -179.998795 89.999100 180.000000
stocker.fin[2,6] -1160.977173 -246.008301 -155.637207 -179.998795 89.999100 180.000000
stocker.fin[2,7] -1160.978760 -246.008301 -255.637207 -179.998795 89.999100 180.000000
stocker.fin[2,8] -1160.980225 -246.008301 -355.637207 -179.998795 89.999100 180.000000
stocker.fin[2,9] -1160.981689 -246.008408 -455.637207 -179.998795 89.999100 180.000000
stocker.fin[2,10] -1160.983276 -246.008408 -555.637207 -179.998795 89.999100 180.000000
stocker.fin[2,11] -1160.984741 -246.008499 -655.637207 -179.998795 89.999100 180.000000
stocker.fin[2,12] -1160.986328 -246.008499 -755.637207 -179.998795 89.999100 180.000000
stocker.fin[2,13] -1160.987793 -246.008499 -855.637207 -179.998795 89.999100 180.000000
stocker.fin[3,1] -1160.979858 243.991898 344.362610 -179.998795 89.999100 180.000000
stocker.fin[3,2] -1160.981445 243.991806 244.362595 -179.998795 89.999100 180.000000
stocker.fin[3,3] -1160.982910 243.991806 144.362595 -179.998795 89.999100 180.000000
stocker.fin[3,4] -1160.984497 243.991806 44.362598 -179.998795 89.999100 180.000000
stocker.fin[3,5] -1160.985962 243.991806 -55.637402 -179.998795 89.999100 180.000000
stocker.fin[3,6] -1160.987427 243.991699 -155.637405 -179.998795 89.999100 180.000000
stocker.fin[3,7] -1160.989014 243.991699 -255.637405 -179.998795 89.999100 180.000000
stocker.fin[3,8] -1160.990479 243.991592 -355.637390 -179.998795 89.999100 180.000000
stocker.fin[3,9] -1160.992065 243.991592 -455.637390 -179.998795 89.999100 180.000000
stocker.fin[3,10] -1160.993530 243.991592 -555.637390 -179.998795 89.999100 180.000000
stocker.fin[3,11] -1160.994995 243.991592 -655.637390 -179.998795 89.999100 180.000000
stocker.fin[3,12] -1160.996582 243.991501 -755.637329 -179.998795 89.999100 180.000000
stocker.fin[3,13] -1160.998047 243.991501 -855.637329 -179.998795 89.999100 180.000000
stocker.fin[4,1] -1160.990234 733.991882 344.362488 -179.998795 89.999100 180.000000
stocker.fin[4,2] -1160.991699 733.991882 244.362503 -179.998795 89.999100 180.000000
stocker.fin[4,3] -1160.993164 733.991821 144.362503 -179.998795 89.999100 180.000000
stocker.fin[4,4] -1160.994751 733.991821 44.362499 -179.998795 89.999100 180.000000
stocker.fin[4,5] -1160.996216 733.991821 -55.637501 -179.998795 89.999100 180.000000
stocker.fin[4,6] -1160.997803 733.991821 -155.637497 -179.998795 89.999100 180.000000
stocker.fin[4,7] -1160.999268 733.991577 -255.637497 -179.998795 89.999100 -180.000000
stocker.fin[4,8] -1161.000732 733.991577 -355.637512 -179.998795 89.999100 180.000000
stocker.fin[4,9] -1161.002319 733.991577 -455.637512 -179.998795 89.999100 180.000000
stocker.fin[4,10] -1161.003784 733.991577 -555.637512 -179.998795 89.999100 180.000000
stocker.fin[4,11] -1161.005371 733.991516 -655.637512 -179.998795 89.999100 180.000000
stocker.fin[4,12] -1161.006836 733.991516 -755.637573 -179.998795 89.999100 180.000000
stocker.fin[4,13] -1161.008301 733.991516 -855.637573 -179.998795 89.999100 180.000000
stocker.fin[5,1] -1161.000488 1223.991943 344.362305 -179.998795 89.999100 180.000000
stocker.fin[5,2] -1161.001953 1223.991943 244.362305 -179.998795 89.999100 180.000000
stocker.fin[5,3] -1161.003540 1223.991699 144.362305 -179.998795 89.999100 180.000000
stocker.fin[5,4] -1161.005005 1223.991699 44.362301 -179.998795 89.999100 180.000000
stocker.fin[5,5] -1161.006470 1223.991699 -55.637699 -179.998795 89.999100 180.000000
stocker.fin[5,6] -1161.008057 1223.991699 -155.637695 -179.998795 89.999100 180.000000
stocker.fin[5,7] -1161.009521 1223.991699 -255.637695 -179.998795 89.999100 180.000000
stocker.fin[5,8] -1161.011108 1223.991699 -355.637695 -179.998795 89.999100 180.000000
stocker.fin[5,9] -1161.012573 1223.991699 -455.637695 -179.998795 89.999100 180.000000
stocker.fin[5,10] -1161.014038 1223.991699 -555.637695 -179.998795 89.999100 180.000000
stocker.fin[5,11] -1161.015625 1223.991455 -655.637695 -179.998795 89.999100 180.000000
stocker.fin[5,12] -1161.017090 1223.991455 -755.637695 -179.998795 89.999100 180.000000
stocker.fin[5,13] -1161.018677 1223.991455 -855.637695 -179.998795 89.999100 180.000000
stocker.rdy[4,7] -1160.999268 733.991577 -255.637497 -179.998795 89.999100 180.000000
tool.pin -85.070000 -205.369995 -19.860001 67.500000 70.000000 0.000000
tool.pick[1] 5.960000 6.028000 171.199997 67.500000 180.000000 0.000000
tool.pick[2] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[3] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[4] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
tool.pick[5] 5.960000 6.028000 171.199997 -136.000000 180.000000 0.000000
a 982.362183 -343.334839 107.155487 -172.662949 1.597521 -8.384374
cp0 990.319214 -340.757324 95.727997 0.001179 90.002541 -89.304375
cp1 979.957458 -831.855957 95.066269 -0.000116 90.001884 -89.302742
cp2 685.078857 -824.727844 87.384598 0.000876 90.000290 -89.304863
f 981.726501 -343.283051 106.497421 -174.892441 1.699348 -6.076681
p0 1075.403442 -342.983490 391.449371 178.863785 111.580276 179.749527
p1 1074.441040 -835.289063 386.592712 179.072311 109.931236 179.372757
pin_tool1 -88.661003 -214.048004 -23.250000 -112.500008 110.000008 -90.000008
tool.grip 5.960000 6.028000 171.199997 -112.500008 180.000000 0.000000
.END
.JOINTS
#before.stz 156.298325 -5.104897 -119.705116 -18.823097 -74.563522 -35.173157
#put.stz 136.599869 15.593916 -110.148460 -13.834775 -68.366547 -16.208761
#wait.pick 153.260971 -5.244692 -116.123528 -0.757969 -68.765495 -38.446480
#post.tare.new 30.800823 -12.718077 -134.300644 0.302695 -78.852997 24.346281
#put.fin 66.769150 56.143642 -109.106346 13.947364 -34.032902 32.835331
#before.fin 37.101517 44.907837 -88.343483 18.279228 -60.421379 64.408524
#post.tare 38.756599 5.938200 -85.286201 15.775799 -101.184799 75.128899
#post.tare.fin -37.716774 22.508850 -105.851593 -4.406924 -71.267632 12.353700
#home1 0.000000 0.000000 90.000000 0.000000 90.000000 0.000000
#homep1 0.000000 0.000000 90.000000 0.000000 90.000000 0.000000
#cp0 113.545128 22.599735 -94.875786 136.835510 -61.090168 62.719730
#cp4 135.463104 44.074173 -61.770443 118.713783 -70.313873 86.358009
#cpx 135.461502 44.075268 -61.771420 118.713783 -70.309067 86.358109
#cpy 123.052757 3.329534 -119.476036 131.188889 -70.686035 64.788795
#p0 111.971039 20.483826 -97.986504 -24.115957 54.042439 225.470032
#p1 134.716766 41.293598 -66.350815 -50.732227 57.166672 254.816574
#p2 133.473557 43.639095 -62.388935 -50.699005 55.230335 255.409546
#plb 121.270554 1.004116 -121.931114 -33.196815 60.492096 -127.758659
#plt 111.962700 20.715967 -97.409065 -25.353193 52.390369 -133.332581
#prb 146.554352 26.605249 -90.002472 -55.019180 71.421440 -105.830002
#prt 134.708038 41.317688 -66.394478 -50.719925 57.330093 -105.348274
#tool.pos[1] 138.564392 26.336611 -133.157196 1.993359 -19.850922 -27.701340
.END
.REALS
hmi.stnew.i = 1
hmi.stnew.j = 1
hmi.strdy.i = 2
hmi.strdy.j = 11
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
