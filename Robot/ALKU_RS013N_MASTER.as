.AUXDATA
N_OX1    "release.tare"
N_OX2    "capture.tare"
N_OX3    "grip.unclamp"
N_OX4    "grip.clamp"
N_OX5    "release.grip"
N_OX6    "capture.grip"
N_OX17    "do.work[1]"
N_OX18    "rs13.tare.ack"
N_OX20    "rs13.finish"
N_OX21    "rs13.detail.put"
N_OX22    "rs13.lock.zone"
N_OX33    "rs13.opt.chg"
N_OX34    "rs13.no.ot.stop"
N_OX40    "rs13.det.put[0]"
N_OX41    "rs13.det.put[1]"
N_OX42    "rs13.det.put[2]"
N_OX43    "rs13.det.put[3]"
N_OX44    "rs13.det.put[4]"
N_OX45    "rs13.det.put[5]"
N_OX46    "rs13.det.put[6]"
N_OX47    "rs13.det.put[7]"
N_OX48    "rs13.det.put[8]"
N_OX49    "rs13.det.put[9]"
N_OX50    "rs13.det.put[10]"
N_OX51    "rs13.det.put[11]"
N_OX52    "rs13.det.put[12]"
N_OX53    "rs13.det.put[13]"
N_OX54    "rs13.det.put[14]"
N_OX55    "rs13.det.put[15]"
N_WX1    "grip.unclamped"
N_WX2    "grip.clamped"
N_WX17    "rs7.work[1]"
N_WX18    "rs7.tare.chg"
N_WX19    "rs7.locked.zone"
N_WX20    "rs7.finish.ack"
N_WX21    "rs7.put.ack"
N_WX33    "rs7.etalon.stop"
N_WX40    "rs7.det.picked[0]"
N_WX41    "rs7.det.picked[1]"
N_WX42    "rs7.det.picked[2]"
N_WX43    "rs7.det.picked[3]"
N_WX44    "rs7.det.picked[4]"
N_WX45    "rs7.det.picked[5]"
N_WX46    "rs7.det.picked[6]"
N_WX47    "rs7.det.picked[7]"
N_WX48    "rs7.det.picked[8]"
N_WX49    "rs7.det.picked[9]"
N_WX50    "rs7.det.picked[10]"
N_WX51    "rs7.det.picked[11]"
N_WX52    "rs7.det.picked[12]"
N_WX53    "rs7.det.picked[13]"
N_WX54    "rs7.det.picked[14]"
N_WX55    "rs7.det.picked[15]"
N_INT1    "di.ifp.page[1]"
N_INT2    "di.ifp.page[2]"
N_INT3    "di.ifp.page[3]"
N_INT4    "di.ifp.page[4]"
N_INT5    "di.ifp.page[5]"
N_INT6    "di.ifp.page[6]"
N_INT7    "di.ifp.page[7]"
N_INT8    "di.ifp.page[8]"
N_INT9    "di.hold"
N_INT10    "do.home"
N_INT11    "do.bat.alm"
N_INT12    "do.automatic"
N_INT201    "s.tcp.send.ena"
N_INT202    "s.tcp.recv.ena"
N_INT203    "s.tcp.ena"
N_INT204    "s.tcp.log"
N_INT209    "s.zone.blocked"
N_INT212    "do.work[2]"
N_INT213    "do.work[3]"
N_INT214    "do.work[4]"
N_INT215    "do.work[5]"
N_INT216    "do.work[6]"
N_INT217    "do.work[7]"
N_INT218    "do.work[8]"
N_INT221    "s.force.in[1]"
N_INT222    "s.force.in[2]"
N_INT223    "s.stock.ot.ok"
N_INT224    "s.stock.ot.ng"
N_INT225    "s.stock.opt.ok"
N_INT226    "s.stock.opt.ng"
N_INT227    "s.ot.pos.ok"
N_INT228    "s.ot.pos.ng"
N_INT229    "s.ot.placed"
N_INT230    "s.opt.placed"
N_INT231    "s.grip.full"
N_INT232    "s.cmd.start"
N_INT233    "s.cmd.pick"
N_INT234    "s.cmd.put"
N_INT235    "s.cmd.pneum.op"
N_INT236    "s.cmd.pneum.cl"
N_INT237    "s.cmd.chg.opt"
N_INT238    "s.cmd.finish"
N_INT239    "s.cmd.pause"
N_INT240    "s.cmd.resume"
N_INT241    "s.cmd.stop"
N_INT242    "s.cmd.n.op.stop"
N_INT247    "s.pr.tst.opt"
N_INT248    "s.pr.tst.stz"
N_INT249    "s.pr.tst.ot"
N_INT250    "s.pr.home"
N_INT251    "s.pr.tch.st.ot"
N_INT252    "s.pr.tch.st.opt"
N_INT253    "s.pr.tch.stz"
N_INT254    "s.pr.tch.grip"
N_INT255    "s.pr.tch.pos"
N_INT256    "s.apply.grip"
N_INT257    "s.apply.cv"
N_INT258    "s.hmi.pneum.op"
N_INT259    "s.hmi.pneum.cl"
N_INT260    "s.hmi.get.cv"
N_INT261    "s.hmi.res.state"
N_INT262    "s.hmi.res.act"
N_INT300    "s.debug.mode"
.END
.INTER_PANEL_D
0,9,1,6,15
6,10,"","PCEXECUTE","AUTOSTART","",10,4,6,1,"PCEXECUTE autostart.pc",0
7,9,2,6,15
13,2,""," DEBUG","--------->","",10,4,11,2003,0
14,9,3,6,15
20,2,""," GRIPPERS","--------->","",10,4,11,2002,0
21,9,8,6,15
27,2,""," TEACH","--------->","",10,4,11,2004,0
28,1,"  Gripper","","","  opened",10,15,4,10,1001,0
29,1,"  Gripper","","","  closed",10,15,4,10,1002,0
30,8,"current.gripper","  CURRENT","  GRIPPER ",10,2,2,1,0
31,8,"hmi.gripper","    HMI","  GRIPPER ",10,2,2,1,0
33,2,"","  Release ","  gripper","",10,4,6,5,-1
34,2,"","  Capture","  gripper","",10,4,6,6,0
35,2,"","   Open ","  gripper","",10,4,5,3,0
36,2,"","   Close","  gripper","",10,4,5,4,0
40,2,"","  Release ","   tare","",10,4,6,1,-1
41,2,"","  Capture","   tare","",10,4,6,2,0
42,4,1,"OFF     ON","","","FORCE IN 1",10,4,4,0,2221,0
43,4,1,"OFF     ON","","","FORCE IN 2",10,4,4,0,2222,0
49,2,"","   MAIN","<---------","",10,4,11,2001,0
56,14,"tcp.ip","Server IP","",10,15,0
57,8,"tcp.port","Server","port",10,15,5,1,0
58,8,"tcp.sender.dly","Polling","delay, s",10,15,2,2,0
60,8,"object.id","Object ID","",10,15,2,1,0
61,8,"state","  CURRENT","   STATE",10,15,3,1,0
62,2,"","   RESET","   STATE","",10,4,15,2261,0
63,4,1,"OFF     ON","","","TCP COMMON",10,4,4,0,2203,0
64,4,1,"OFF     ON","",""," TCP SEND",10,4,4,0,2201,0
65,4,1,"OFF     ON","",""," TCP RECV",10,4,4,0,2202,0
66,4,1,"OFF     ON","",""," TCP LOG",10,4,4,0,2204,0
67,8,"wdog.tmr","  WATCHDOG"," TIMER, s",10,15,3,1,0
68,14,"action","  CURRENT","  ACTION",10,15,0
69,2,"","   RESET","   ACTION","",10,4,15,2262,0
70,1,"OT PLACED ","","","",10,15,4,10,2229,0
71,1,"OPT PLACED","","","",10,15,4,10,2230,0
72,1,"GRIP FULL","","","",10,15,4,10,2231,0
73,1," POS FREE","","","",10,15,4,10,2234,0
76,4,1,"OFF     ON","","","  DEBUG",10,4,4,0,2300,0
77,2,"","   MAIN","<---------","",10,4,11,2001,0
79,7,"  RS013N"," COUNT PUT",10,15,4,0,0,40,16,1
80,7,"  RS007L","COUNT PICK",10,15,4,0,0,1040,16,1
82,2,"","   OPEN","PNEUMATICS","",10,4,8,2258,0
83,2,"","   CLOSE","PNEUMATICS","",10,4,8,2259,0
84,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
85,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
86,8,"hmi.gripper","    HMI","  GRIPPER ",10,2,2,1,0
88,8,"hmi.x.plus","DISTORTION"," X+ COEFF",10,3,4,2,0
89,8,"hmi.y.plus","DISTORTION"," Y+ COEFF",10,3,4,2,0
91,2,"   PRIME","","   TEACH","    STZ",10,4,11,2253,0
92,8,"center.x","CENTER OF","  X AXIS",10,3,4,2,0
93,8,"center.y","CENTER OF","  Y AXIS",10,3,4,2,0
95,8,"hmi.x.minus","DISTORTION"," X- COEFF",10,3,4,2,0
96,8,"hmi.y.minus","DISTORTION"," Y- COEFF",10,3,4,2,0
97,2,""," APPLY FOR"," N OBJECT","",10,4,14,2257,0
98,2,"   PRIME","","    TEST","    STZ",10,4,11,2248,0
99,8,"stz.x","   STZ X","COORDINATE",10,3,4,2,0
100,8,"stz.y","   STZ Y","COORDINATE",10,3,4,2,0
101,8,"stz.a","   STZ ","  ANGLE",10,3,4,2,0
104,2,"","   GET","COORDINATE","",10,4,8,2260,0
105,2,"","   MAIN","<---------","",10,4,11,2001,0
108,2,"","   TEACH","  STOCKERS","",10,4,11,2005,0
109,2,"","   TEACH","POSITIONER","",10,4,11,2006,0
110,2,"","   TEACH","    STZ","",10,4,11,2007,0
111,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
112,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
113,2,"   PRIME","","   TEACH","    OT",10,4,11,2251,0
114,8,"hmi.ot.i","    OT","COLUMN NO",10,2,2,1,0
115,2,"   PRIME","","   TEACH","    OPT",10,4,11,2252,0
116,8,"hmi.opt.i","   OPT","COLUMN NO",10,2,2,1,0
118,2,"","  Release ","   tare","",10,4,6,1,-1
120,2,"   PRIME","","   TEST","    OT",10,4,11,2249,0
121,8,"hmi.ot.j","    OT","  ROW NO",10,2,2,1,0
122,2,"   PRIME","","   TEST","   OPT",10,4,11,2247,0
123,8,"hmi.opt.j","   OPT","  ROW NO",10,2,2,1,0
125,2,"","  Capture","   tare","",10,4,6,2,0
133,2,"","   MAIN","<---------","",10,4,11,2001,0
136,2,"","   TEACH","  OBJECTS","",10,4,11,2004,0
137,2,"","   TEACH","POSITIONER","",10,4,11,2006,0
138,2,"","   TEACH","    STZ","",10,4,11,2007,0
139,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
140,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
141,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
142,8,"hmi.gripper","    HMI","  GRIPPER ",10,2,2,1,0
146,2,"","   Open ","  gripper","",10,4,5,3,0
147,2,"   PRIME","","   TEACH","POSITIONER",10,4,11,2255,0
153,2,"","   Close","  gripper","",10,4,5,4,0
161,2,"","   MAIN","<---------","",10,4,11,2001,0
164,2,"","   TEACH","  OBJECTS","",10,4,11,2004,0
165,2,"","   TEACH","  STOCKERS","",10,4,11,2005,0
166,2,"","   TEACH","    STZ","",10,4,11,2007,0
167,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
168,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
169,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
170,8,"hmi.gripper","    HMI","  GRIPPER ",10,2,2,1,0
172,8,"hmi.gx","GRIPPER N"," X SHIFT",10,3,4,2,0
173,8,"hmi.gy","GRIPPER N"," Y SHIFT",10,3,4,2,0
174,8,"hmi.gz","GRIPPER N"," Z SHIFT",10,3,4,2,0
175,2,"   PRIME","","   TEACH","    STZ",10,4,11,2253,0
176,8,"center.x","CENTER OF","  X AXIS",10,3,4,2,0
177,8,"center.y","CENTER OF","  Y AXIS",10,3,4,2,0
179,8,"hmi.g180x","GRIPPER N","180X SHIFT",10,3,4,2,0
180,8,"hmi.g180y","GRIPPER N","180Y SHIFT",10,3,4,2,0
181,2,""," APPLY FOR"," N GRIPPER","",10,4,14,2256,0
182,2,"   PRIME","","    TEST","    STZ",10,4,11,2248,0
183,8,"stz.x","   STZ X","COORDINATE",10,3,4,2,0
184,8,"stz.y","   STZ Y","COORDINATE",10,3,4,2,0
185,8,"stz.a","   STZ ","  ANGLE",10,3,4,2,0
188,2,"","   GET","COORDINATE","",10,4,8,2260,0
189,2,"","   MAIN","<---------","",10,4,11,2001,0
192,2,"","   TEACH","  OBJECTS","",10,4,11,2004,0
193,2,"","   TEACH","  STOCKERS","",10,4,11,2005,0
194,2,"","   TEACH","POSITIONER","",10,4,11,2006,0
195,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
196,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
199,8,"current.gripper","  CURRENT","  GRIPPER ",10,2,2,1,0
200,8,"hmi.gripper","    HMI","  GRIPPER ",10,2,2,1,0
202,2,"","  Capture","  gripper","",10,4,6,6,0
203,2,"   PRIME","","   TEACH","  GRIPPERS",10,4,11,2254,0
209,2,"","  Release ","  gripper","",10,4,6,5,-1
217,2,"","   MAIN","<---------","",10,4,11,2001,0
220,2,"","   TEACH","  OBJECTS","",10,4,11,2004,0
221,2,"","   TEACH","  STOCKERS","",10,4,11,2005,0
222,2,"","   TEACH","POSITIONER","",10,4,11,2006,0
223,2,"","   TEACH","    STZ","",10,4,11,2007,0
.END
.INTER_PANEL_TITLE
"MAIN",1
"GRIPPERS",1
"DEBUG",1
"TEACH OBJECT",1
"TEACH STOCKERS",1
"TEACH POSITIONER",1
"TEACH STZ",1
"TEACH GRIPPERS",1
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
182,3,225,244,28,159,252,255,251,255,0,31,2,241,52,255,
.END
.PROGRAM a.align()@26/06/25 16:09 #0
;
  SPEED 250 MM/S ALWAYS
  ALIGN
;
.END
.PROGRAM a.home()@26/06/25 16:09 #0
;
  SPEED 250 MM/S ALWAYS
  JMOVE #homyak
;
.END
.PROGRAM a.main()@26/06/25 16:09 #0
;
  CALL log("Main program executed")
  CALL safe.home
;
  WHILE TRUE DO
    .$pg.string = "state"+$ENCODE(/L,state)
    IF EXISTPGM(.$pg.string) THEN
      SCALL .$pg.string
    ELSE
      CALL log("Error! Program is in wrong state. Connect Robowizard")
      RETURN
    END
  END
;
.END
.PROGRAM a.teach.gripper()@26/06/25 16:09 #0
;
  TOOL tool.pick[hmi.gripper]
;
  POINT .temp = #tool.point[hmi.gripper]
  JMOVE .temp+TRANS(0,0,50)
  BREAK
;
  LMOVE #tool.point[hmi.gripper]; *** TEACH POINT ***
  BREAK
  PULSE capture.grip
  TWAIT 0.5
  current.gripper = hmi.gripper
;
  LMOVE .temp+TRANS(0,0,200)
  BREAK
  JMOVE #stz.wait
;
  LMOVE .temp+TRANS(0,0,200)
  LMOVE .temp+TRANS(0,0,50)
  BREAK
  LMOVE #tool.point[hmi.gripper]
  BREAK
  PULSE release.grip
  TWAIT 0.5
  current.gripper = 0
;
  LMOVE .temp+TRANS(0,0,50)
  LMOVE .temp+TRANS(0,0,200)
;
.END
.PROGRAM a.teach.opt()@26/06/25 16:09 #0
; Use this for first teach
  IF FALSE THEN
    TOOL tool.pin
    JMOVE opt.point[1,1]+TRANS(0,0,50)
    LMOVE opt.point[1,1]
    FOR .i = 0 TO 2
      FOR .j = 0 TO 9
        PRINT 0: .i,.j
        POINT opt.point[.i+1,.j+1] = opt.point[1,1]+TRANS(-80*.j,-610*.i)
      END
    END
  END
; Correct point
  TOOL tool.pin
  .i = hmi.opt.i
  .j = hmi.opt.j
  JMOVE opt.point[.i,.j]+TRANS(0,0,50)
  LMOVE opt.point[.i,.j]; *** TEACH POINT ***
  LMOVE opt.point[.i,.j]+TRANS(0,0,50)
  LMOVE opt.point[.i,.j]
  LMOVE opt.point[.i,.j]+TRANS(0,0,50)
;
.END
.PROGRAM a.teach.ot()@26/06/25 16:09 #0
; Use this for first teach
  IF FALSE THEN
    TOOL tool.pin
    JMOVE ot.point[1,1]+TRANS(0,0,50)
    LMOVE ot.point[1,1]
    FOR .i = 0 TO 3
      FOR .j = 0 TO 11
        PRINT 0: .i,.j
        POINT ot.point[.i+1,.j+1] = ot.point[1,1]+TRANS(-100*.j,-490*.i)
      END
    END
  END
  TOOL tool.pin
; Correct point
  .i = hmi.ot.i
  .j = hmi.ot.j
  JMOVE ot.point[.i,.j]+TRANS(0,0,50)
  LMOVE ot.point[.i,.j]; *** TEACH POINT ***
  LMOVE ot.point[.i,.j]+TRANS(0,0,50)
  LMOVE ot.point[.i,.j]
  LMOVE ot.point[.i,.j]+TRANS(0,0,50)
;
.END
.PROGRAM a.teach.pos()@26/07/03 14:57 #0
;
  TOOL tool.pick[hmi.gripper]
;
  JMOVE #pos.wait
;
  POINT .temp = #pos.point[hmi.obj.id]
  LMOVE .temp+TRANS(10,0,150)
  LMOVE .temp+TRANS(10,0,20)
  IF hmi.obj.id==2 THEN
    LMOVE .temp+TRANS(5,0,5)
  END
  BREAK
  LMOVE #pos.point[hmi.obj.id]; *** TEACH POINT ***
  BREAK
  TWAIT 0.5
  PULSE grip.unclamp
  BREAK
  POINT .temp = #pos.point[hmi.obj.id]
  LMOVE .temp+TRANS(10,0,20)
  LMOVE .temp+TRANS(0,0,150)
  BREAK
  TWAIT 0.5
  JMOVE #pos.wait
;
.END
.PROGRAM a.teach.stz()@26/06/25 16:09 #0
;
  TOOL tool.teach.stz
  IF FALSE THEN
    JAPPRO #plb,-10
  END
;
  LAPPRO #plb,-10
  LMOVE #plb; *** TEACH POINT *** Left bottom
  LAPPRO #plb,-10
;
  LAPPRO #plt,-10
  LMOVE #plt; *** TEACH POINT *** Left top
  LAPPRO #plt,-10
;
  LAPPRO #prt,-10
  LMOVE #prt; *** TEACH POINT *** Right top
  LAPPRO #prt,-10
;
  LAPPRO #prb,-10
  LMOVE #prb; *** TEACH POINT *** Right bottom
  LAPPRO #prb,-10
;
  POINT .plb = #plb
  POINT .plt = #plt
  POINT .prt = #prt
  POINT .prb = #prb
;
  .dx1 = DISTANCE(.plt,.plb) ; DX1
  .dx2 = DISTANCE(.prt,.prb) ; DX2
  .dy1 = DISTANCE(.plt,.prt) ; DY1
  .dy2 = DISTANCE(.plb,.prb) ; DY2
;
  PRINT 0: "DX1 =",.dx1
  PRINT 0: "DX2 =",.dx2
  PRINT 0: "DY1 =",.dy1
  PRINT 0: "DY2 =",.dy2
  PRINT 0: "AVEX =",(.dx1+.dx2)/2
  PRINT 0: "AVEY =",(.dy1+.dy2)/2
;
  BREAK
  POINT stz.frame = FRAME(.plb,.prb,.prt,.plt)
  POINT stz.frame = stz.frame+RZ(-90)
; CIR1 = 100, 100 CIR2 = 148, 250
; CIR3 = 248, 300 CIR4 = 148; 450
  BREAK
  LMOVE stz.frame+TRANS(stz.x,stz.y,10)
;
.END
.PROGRAM a.test.gripper()@26/06/25 16:09 #0
;
  CALL gripper.pick(hmi.gripper)
  CALL gripper.put(hmi.gripper)
; detail.type
.END
.PROGRAM a.test.opt()@26/06/25 16:09 #0
;
  .i = hmi.opt.i
  .j = hmi.opt.j
  CALL opt.take(.i,.j)
  CALL opt.return(.i,.j)
;
.END
.PROGRAM a.test.ot()@26/06/25 16:09 #0
;
  .i = hmi.ot.i
  .j = hmi.ot.j
  CALL ot.take(.i,.j)
  CALL ot.return(.i,.j)
;
.END
.PROGRAM a.test.stz()@26/06/25 16:09 #0
  .$temp = "Pick detail from stz ("+$ENCODE(/L,stz.x)+", "+$ENCODE(/L,stz.y)+", "+$ENCODE(/L,stz.a)+")"
  CALL log(.$temp)
;
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  TOOL tool.pick[hmi.gripper]
; Raw coordinates
  .x = stz.x
  .y = stz.y
  .a = stz.a
;
; Gripper shift
  .xsh = grip.xsh[hmi.gripper]
  .ysh = grip.ysh[hmi.gripper]
  .zsh = grip.zsh[hmi.gripper]
  IF .a==180 THEN
    .xsh = grip.180xsh[hmi.gripper]
    .ysh = grip.180ysh[hmi.gripper]
  END
; CV correction
  .xp = cv.x.plus[hmi.obj.id]
  .xm = cv.x.minus[hmi.obj.id]
  .yp = cv.y.plus[hmi.obj.id]
  .ym = cv.y.minus[hmi.obj.id]
;
  IF .x>center.x+10 THEN
    .x = .x-.xp*(.x-center.x)
  END
  IF .x<center.x-10 THEN
    .x = .x+.xm*(-.x+center.x)
  END
  IF .y>center.y+10 THEN
    .y = .y-.yp*(.y-center.y)
  END
  IF .y<center.y-10 THEN
    .y = .y+.ym*(-.y+center.y)
  END
;
  POINT .pick = stz.frame+TRANS(.x+.xsh,.y+.ysh,.zsh)+RZ(.a)
  DECOMPOSE .c[1] = #pick.in
  POINT .#pick.in = #PPOINT(.c[1],.c[2],.c[3],.c[4],.c[5],.c[6]-.a)
;
  LMOVE #stz.wait
  ACCURACY 20
  LMOVE .#pick.in
  IF NOT SIG(grip.unclamped) THEN
    PULSE grip.unclamp
    CALL log("Wait for unclamp gripper")
    $action = "WaitingGripUnclamped"
    WAIT SIG(grip.unclamped) OR SIG(s.force.in[1])
  END
  ACCURACY 20
  LAPPRO .pick,-30
  SPEED 250 MM/S
  ACCURACY 0.02
  LMOVE .pick
  BREAK
;
  PULSE grip.clamp
  TWAIT 0.5
  SIGNAL s.grip.full
  $action = "WaitPosFree"
;
  ACCURACY 20
  LAPPRO .pick,-30
;
  LMOVE .#pick.in
  LMOVE #stz.wait
  LMOVE #pos.wait
;
.END
.PROGRAM autostart.pc()@26/06/25 16:09 #0
;
; System switches
  CP ON
  PREFETCH.SIGINS OFF
  QTOOL OFF
  REP_ONCE ON
  HOLD.STEP ON
  DISP.EXESTEP ON
  PROG.DATE ON
  ABS.SPEED ON
  autostart.pc ON
  errstart.pc ON  ;
;
  .$rob.name = $SYSDATA(ZROB.NAME)
  .cont.no = SYSDATA(CONT.NO)
  .robot.no = SYSDATA(ZROB.MGFNO)
  .$robot.str = "Robot: "+.$rob.name+" S/N: C"+$ENCODE(/L,.robot.no)
  .$cont.str = "Controller: F60 S/N: C"+$ENCODE(/L,.cont.no)
  IFPWPRINT 8,1,1,5,10=.$robot.str,.$cont.str," ","Powered by Robowizard Co.Ltd."
;
  CALL set.io.pc
  CALL set.vars.pc
;
  MC PRIME a.main
  TWAIT 1
;
  CALL watchdog.pc
;
.END
.PROGRAM check.disp.pc()@26/06/25 16:09 #140014897
;
  IF SIG(s.tcp.ena) AND tcp.ena==-1 THEN
    tcp.ena = tyterm
  END
  IF NOT SIG(s.tcp.ena) AND tcp.ena<>-1 THEN
    tcp.ena = -1
  END
;
  IF SIG(s.tcp.send.ena) AND tcp.send.ena==-1 THEN
    tcp.send.ena = tyterm
  END
  IF NOT SIG(s.tcp.send.ena) AND tcp.send.ena<>-1 THEN
    tcp.send.ena = -1
  END
;
  IF SIG(s.tcp.recv.ena) AND tcp.recv.ena==-1 THEN
    tcp.recv.ena = tyterm
  END
  IF NOT SIG(s.tcp.recv.ena) AND tcp.recv.ena<>-1 THEN
    tcp.recv.ena = -1
  END
;
.END
.PROGRAM check.tasks.pc()@26/06/25 16:09 #140014904
;
  IF TASK(1002)<>1 THEN
    PCEXECUTE 2: tcp.client.pc
    TWAIT 3
  END
  IF TASK(1003)<>1 THEN
    PCEXECUTE 3: tcp.sender.pc
    TWAIT 3
  END
;
.END
.PROGRAM check.teach.pc()@26/06/25 16:09 #47339817
;
  IF SIG(s.hmi.res.state) THEN
    state = 0
  END
;
  IF SIG(s.hmi.res.act) THEN
    $action = " "
  END
;
  IF SIG(s.hmi.pneum.op) THEN
    $action = "WaitPneumaticOpen"
    TWAIT 1
    $action = "None"
  END
;
  IF SIG(s.hmi.pneum.cl) THEN
    $action = "WaitPneumaticClose"
    TWAIT 1
    $action = "None"
  END
;
  IF SIG(s.hmi.get.cv) THEN
    $action = "WaitForPick"
    TWAIT 1
    $action = "None"
  END
;
  IF SIG(s.pr.home) AND NOT SWITCH(REPEAT ) THEN
    MC PRIME a.home
  END
;
  IF SIG(s.pr.tch.grip) AND NOT SWITCH(REPEAT ) THEN
    MC PRIME a.teach.gripper
  END
;
  IF SIG(s.pr.tch.st.ot) AND NOT SWITCH(REPEAT ) THEN
    MC PRIME a.teach.ot
  END
;
  IF SIG(s.pr.tch.st.opt) AND NOT SWITCH(REPEAT ) THEN
    MC PRIME a.teach.opt
  END
;
  IF SIG(s.pr.tst.ot) AND NOT SWITCH(REPEAT ) THEN
    MC PRIME a.test.ot
  END
;
  IF SIG(s.pr.tst.opt) AND NOT SWITCH(REPEAT ) THEN
    MC PRIME a.test.opt
  END
;
  IF SIG(s.pr.tst.stz) AND NOT SWITCH(REPEAT ) THEN
    MC PRIME a.test.stz
  END
;
  IF SIG(s.pr.tch.stz) AND NOT SWITCH(REPEAT ) THEN
    MC PRIME a.teach.stz
  END
;
  IF SIG(s.pr.tch.pos) AND NOT SWITCH(REPEAT ) THEN
    MC PRIME a.teach.pos
  END
;
; HMI PANEL GRIPPER TEACH DATA
  IF keep.gripper<>hmi.gripper AND hmi.gripper>0 AND hmi.gripper<=3 THEN
    hmi.gx = grip.xsh[hmi.gripper]
    hmi.gy = grip.ysh[hmi.gripper]
    hmi.gz = grip.zsh[hmi.gripper]
    hmi.g180x = grip.180xsh[hmi.gripper]
    hmi.g180y = grip.180ysh[hmi.gripper]
;
    keep.gripper = hmi.gripper
  END
  IF SIG(s.apply.grip) THEN
    grip.xsh[hmi.gripper] = hmi.gx
    grip.ysh[hmi.gripper] = hmi.gy
    grip.zsh[hmi.gripper] = hmi.gz
    grip.180xsh[hmi.gripper] = hmi.g180x
    grip.180ysh[hmi.gripper] = hmi.g180y
  END
;
; HMI PANEL OBJECT TEACH DATA
  IF keep.object<>hmi.obj.id AND hmi.obj.id>0 AND hmi.obj.id<=64 THEN
    hmi.x.plus = cv.x.plus[hmi.obj.id]
    hmi.y.plus = cv.y.plus[hmi.obj.id]
    hmi.x.minus = cv.x.minus[hmi.obj.id]
    hmi.y.minus = cv.y.minus[hmi.obj.id]
;
    keep.object = hmi.obj.id
  END
;
  IF SIG(s.apply.cv) THEN
    cv.x.plus[hmi.obj.id] = hmi.x.plus
    cv.y.plus[hmi.obj.id] = hmi.y.plus
    cv.x.minus[hmi.obj.id] = hmi.x.minus
    cv.y.minus[hmi.obj.id] = hmi.y.minus
  END
.END
.PROGRAM check.zone.pc()@26/06/25 16:09 #140014941
;
;do.work[1] = 17
;rs7.work[1] = 1017
;di.hold = 2009
;s.zone.blocked = 2209
; do.work[1]     rs7.work[1]             s.zone.blocked
;----| |-------------| |----------------------( )
;            |                |
;            | s.zone.blocked |
;            --------|/|-------
;
; s.zone.blocked   rs7.work[1]  do.work[1]   di.hold
;------|/|------------| |---------|  |--------(/)
;
  SOUT 2209 = 17 AND (NOT 1017 OR 2209)
  SOUT 2009 = NOT (NOT 2209 AND 1017 AND 17)
;
.END
.PROGRAM chk.lock()@26/06/25 16:09 #0
  SWAIT -rs7.locked.zone,-rs7.work[1]
.END
.PROGRAM errstart.pc()@26/06/25 16:09 #347
;
  IF ERROR==-34021 OR ERROR==-10100 THEN
    tcp.socket = -1
    MC ERESET
    TWAIT 1
  END
  TWAIT 5
  errstart.pc ON
;
.END
.PROGRAM get.state.pc(.$state)@26/06/25 16:09 #768045
  .$state = "SPEED:"+$ENCODE(/L,MSPEED)+";"
  .$state = .$state+"POWER:"
  IF SWITCH(POWER ) THEN
    .$state = .$state+"TRUE;"
  ELSE
    .$state = .$state+"FALSE;"
  END
; MAX: 12
;
  .$state = .$state+"CS:"
  IF SWITCH(CS ) THEN
    .$state = .$state+"TRUE;"
  ELSE
    .$state = .$state+"FALSE;"
  END
; MAX 9
;
  .$state = .$state+"TEACH:"
  IF SWITCH(REPEAT ) THEN
    .$state = .$state+"FALSE;"
  ELSE
    .$state = .$state+"TRUE;"
  END
; MAX 12
;
  .$state = .$state+"TEACHL:"
  IF SWITCH(TEACH_LOCK ) THEN
    .$state = .$state+"TRUE;"
  ELSE
    .$state = .$state+"FALSE;"
  END
; MAX 13
;
  .$state = .$state+"TPEMG:"
  IF SWITCH(TP_EMG ) THEN
    .$state = .$state+"TRUE;"
  ELSE
    .$state = .$state+"FALSE;"
  END
; MAX 12
;
  .$state = .$state+"OPEMG:"
  IF SWITCH(OP_EMG ) THEN
    .$state = .$state+"TRUE;"
  ELSE
    .$state = .$state+"FALSE;"
  END
; MAX 12
;
  .$state = .$state+"EXEMG:"
  IF SWITCH(EX_EMG ) THEN
    .$state = .$state+"TRUE;"
  ELSE
    .$state = .$state+"FALSE;"
  END
; MAX 12
;
  .$state = .$state+"ERROR:"
  IF SWITCH(ERROR ) THEN
    .$state = .$state+"TRUE;"
  ELSE
    .$state = .$state+"FALSE;"
  END
; MAX 12
;
  .$state = .$state+"ECODE:"
  .$state = .$state+$ENCODE(ERROR)+";"
; MAX 12
;
  .$state = .$state+"HOME:"
  IF SIG(do.home) THEN
    .$state = .$state+"TRUE;"
  ELSE
    .$state = .$state+"FALSE;"
  END
;; MAX 12
;;
  .$state = .$state+"BATALM:"
  IF SIG(do.bat.alm) THEN
    .$state = .$state+"TRUE;"
  ELSE
    .$state = .$state+"FALSE;"
  END
; MAX 12
  .$state = .$state+"\n"
.END
.PROGRAM gripper.pick(.gripper.no)@26/06/25 16:09 #169
;
; Start from step 3 to manual check
  IF FALSE THEN
    .gripper.no = hmi.gripper
  END
; Safety check
  IF current.gripper<>0 THEN
    CALL log("Some gripper is already in robot\'s hand")
    RETURN
  END
  PULSE release.grip
; Log info
  .$temp = "Pick gripper"+$ENCODE(.gripper.no)
  CALL log(.$temp)
; Set default motion parameters
  SPEED 10 ALWAYS
  ACCURACY 100 ALWAYS
  TOOL tool.pick[.gripper.no]
; Calculate points
  POINT .temp = #tool.point[.gripper.no]
; Motion
  LMOVE .temp+TRANS(0,0,200)
;
  ACCURACY 5
  LMOVE .temp+TRANS(0,0,50)
  BREAK
;
  SPEED 50 MM/S ALWAYS
  ACCURACY 0.02
  LMOVE #tool.point[.gripper.no]
  BREAK
; Capture tool
  PULSE capture.grip
  TWAIT 0.5
  current.gripper = .gripper.no
;
  SPEED 10 ALWAYS
  ACCURACY 1
  LMOVE .temp+TRANS(0,0,10)
;
  SPEED 10 ALWAYS
  ACCURACY 1
  LMOVE .temp+TRANS(0,0,200)
;
; Log info
  .$temp = "Gripper"+$ENCODE(.gripper.no)+" picked"
  CALL log(.$temp)
;
.END
.PROGRAM gripper.put(.gripper.no)@26/06/25 16:09 #168
;
; Start from step 3 to manual check
  IF FALSE THEN
    .gripper.no = hmi.gripper
  END
; Safety check
  IF current.gripper==0 THEN
    CALL log("There is no gripper")
    RETURN
  END
; Log info
  .$temp = "Put gripper"+$ENCODE(.gripper.no)
  CALL log(.$temp)
; Set default motion parameters
  SPEED 10 ALWAYS
  ACCURACY 100 ALWAYS
  TOOL tool.pick[.gripper.no]
; Calculate points
  POINT .temp = #tool.point[.gripper.no]
; Motion
  LMOVE .temp+TRANS(0,0,200)
;
  ACCURACY 5
  LMOVE .temp+TRANS(0,0,50)
  BREAK
;
  SPEED 50 MM/S ALWAYS
  ACCURACY 0.02
  LMOVE #tool.point[.gripper.no]
  BREAK
; Capture tool
  PULSE release.grip
  TWAIT 0.5
  current.gripper = 0
;
  SPEED 10 ALWAYS
  ACCURACY 1
  LMOVE .temp+TRANS(0,0,200)
;
; Log info
  .$temp = "Gripper"+$ENCODE(.gripper.no)+" put"
  CALL log(.$temp)
  .gripper.no = 0
  BREAK
;
.END
.PROGRAM id1()@26/07/01 08:03 #255; 312.229.002
; Object ID
  object.id = 1
  etalon.id = 1
; Working gripper
  pg13.gripper = 2
  pg7.gripper = 1
; Max objects in output tare
  max.tare.count = 147;10 ;126
  spc.tare.count = 50
; Object length
  object.length = 27.5
;
  direction = 1; -1 for reverse
;
.END
.PROGRAM id2()@26/06/25 16:09 #27; 0401.17.02.023-02
; Object ID
  object.id = 2
  etalon.id = 2
; Working gripper
  pg13.gripper = 1
  pg7.gripper = 1
; Max objects in output tare
  max.tare.count = 105 ;84
  spc.tare.count = 50
; Object length
  object.length = 40
;
  direction = 1; -1 for reverse
;
.END
.PROGRAM id3()@26/06/25 16:09 #61; 312.229.001
; Object ID
  object.id = 3
  etalon.id = 3
; Working gripper
  pg13.gripper = 3
  pg7.gripper = 2
; Max objects in output tare
  max.tare.count = 77;10 ;77
  spc.tare.count = 77
; Object length
  object.length = 40
;
  direction = 1; -1 for reverse
;
.END
.PROGRAM id4()@26/06/25 16:09 #57; 440.00.026
; Object ID
  object.id = 4
  etalon.id = 4
; Working gripper
  pg13.gripper = 1
  pg7.gripper = 1
; Max objects in output tare
  max.tare.count = 168 ;147
  spc.tare.count = 50
; Object length
  object.length = 23.5
;
  direction = 1; -1 for reverse
;
.END
.PROGRAM id5()@26/06/25 16:09 #25; 440.00.111
; Object ID
  object.id = 5
  etalon.id = 5
; Working gripper
  pg13.gripper = 1
  pg7.gripper = 1
; Max objects in output tare
  max.tare.count = 231 ;231
  spc.tare.count = 50
; Object length
  object.length = 15
;
  direction = 1; -1 for reverse
;
.END
.PROGRAM id6()@26/06/25 16:09 #41; 0401.28.02.063
; Object ID
  object.id = 6
  etalon.id = 6
; Working gripper
  pg13.gripper = 1
  pg7.gripper = 1
; Max objects in output tare
  max.tare.count = 126 ;126
  spc.tare.count = 50
; Object length
  object.length = 28.5
;
  direction = 1; -1 for reverse
;
.END
.PROGRAM load.opt.data()@26/06/25 16:09 #488
;
  CALL log("Load OPT IDs from string: "+$opt.data)
  max.count.opt = 0
  WHILE TRUE DO
    max.count.opt = max.count.opt+1
    IF INSTR($opt.data , ",") THEN
      .id = VAL($DECODE($opt.data,",",0))
      CALL opt.table(.id)
      .temp = VAL($DECODE($opt.data,",",1))
    ELSE
      .id = VAL($opt.data)
      CALL opt.table(.id)
      RETURN
    END
  END
;
.END
.PROGRAM load.ot.data()@26/06/25 16:09 #486
;
  max.count.ot = 0
  WHILE TRUE DO
    max.count.ot = max.count.ot+1
    IF INSTR($ot.data , ",") THEN
      .id = VAL($DECODE($ot.data,",",0))
      CALL ot.table(.id)
      .temp = VAL($DECODE($ot.data,",",1))
    ELSE
      .id = VAL($ot.data)
      CALL ot.table(.id)
      RETURN
    END
  END
;
.END
.PROGRAM log(.$msg)@26/06/25 16:09 #69164
;
; 1 line = 55 symbols max
;
  FOR .i = 0 TO 126
    $log.entry[.i] = $log.entry[.i+1]
  END
  $log.entry[127] = $TIME+" "+.$msg
;
  IFPWPRINT 1,1,1,9,10=$log.entry[116],$log.entry[117],$log.entry[118],$log.entry[119]
  IFPWPRINT 2,1,1,9,10=$log.entry[120],$log.entry[121],$log.entry[122],$log.entry[123]
  IFPWPRINT 3,1,1,9,10=$log.entry[124],$log.entry[125],$log.entry[126],$log.entry[127]
;
.END
.PROGRAM log.pc2(.$msg)@26/07/02 09:48 #263
;
; 1 line = 55 symbols max
;
  FOR .i = 0 TO 126
    $log.entry[.i] = $log.entry[.i+1]
  END
  $log.entry[127] = $TIME+" "+.$msg
;
  IFPWPRINT 1,1,1,9,10=$log.entry[116],$log.entry[117],$log.entry[118],$log.entry[119]
  IFPWPRINT 2,1,1,9,10=$log.entry[120],$log.entry[121],$log.entry[122],$log.entry[123]
  IFPWPRINT 3,1,1,9,10=$log.entry[124],$log.entry[125],$log.entry[126],$log.entry[127]
;
.END
.PROGRAM opt.push()@26/07/03 11:04 #231
;
  ACCURACY 0.02 ALWAYS
  SPEED 500 MM/S ALWAYS
;
  LMOVE #opt.put.safe
;
  JMOVE #push.appro[1]
  SPEED 30 MM/S
  LMOVE #push[1]
  BREAK
  TWAIT 0.5
  LMOVE #push.appro[1]
;
  LMOVE #push.appro[2]
  SPEED 30 MM/S
  LMOVE #push[2]
  BREAK
  TWAIT 0.5
  LMOVE #push.appro[2]
;
  LMOVE #opt.put.safe
;
.END
.PROGRAM opt.return(.i,.j)@26/07/03 11:03 #406
  IF FALSE THEN
    .i = hmi.opt.i
    .j = hmi.opt.j
  END
  .$temp = "Return OPT with (i: "+$ENCODE(/L,.i)+", j: "+$ENCODE(/L,.j)+")"
  CALL log(.$temp)
;
  ACCURACY 100 ALWAYS
  SPEED 10 ALWAYS
  ACCEL 5 ALWAYS
  DECEL 5 ALWAYS
;
  PULSE release.tare
;
  TOOL tool.pin
;
  POINT .post.tare.in = #opt.take.safe
  DECOMPOSE .ct1[1] = .post.tare.in
  IF .i==3 AND .j>=9 THEN
    DECOMPOSE .ct2[1] = opt.point[.i,9]
  ELSE
    DECOMPOSE .ct2[1] = opt.point[.i,.j]
  END
  POINT .mid.point = TRANS(.ct2[1],.ct1[2],.ct2[3],.ct1[4],.ct1[5],.ct1[6])
  POINT .put.stz = #opt.put
;
  ACCURACY 20
  LMOVE .put.stz+TRANS(,,50)
;
  CALL log("Wait pneumatics open")
  WHILE NOT SIG(s.cmd.pneum.op) DO
    $action = "WaitPneumaticOpen"
    TWAIT 0.5
  END
  SIGNAL -s.cmd.pneum.op
;
  ACCURACY 0.02
  SPEED 50 MM/S
  LMOVE #opt.put
  BREAK
  PULSE capture.tare
  TWAIT 0.5
;
  ACCURACY 0.02
  SPEED 50 MM/S
  LMOVE .put.stz+TRANS(50)
;
;SPEED 80 ALWAYS
;ACCURACY 5
  LMOVE #opt.put.safe
  LMOVE #ot.put.safe
  SWAIT -rs7.locked.zone
  LMOVE .mid.point
  LMOVE opt.point[.i,.j]+TRANS(20,0,500)
;
  ACCURACY 0.02
  SPEED 100 MM/S
  LMOVE opt.point[.i,.j]+TRANS(20)
  BREAK
;
  ACCURACY 0.02
  SPEED 20 MM/S
  LMOVE opt.point[.i,.j]
  BREAK
  PULSE release.tare
  TWAIT 0.5
  SIGNAL -s.opt.placed
;
  ACCURACY 30
  LMOVE opt.point[.i,.j]+TRANS(0,0,50)
  LMOVE opt.point[.i,.j]+TRANS(0,0,200)
;LMOVE .mid.point
;
  ACCEL 100 ALWAYS
  DECEL 100 ALWAYS
.END
.PROGRAM opt.table(.id)@26/06/25 16:09 #488
;
  .$temp = "Processing OPT with ID: "+$ENCODE(/L,.id)
  CALL log(.$temp)
  CASE .id OF
   VALUE 1:
    opt.cell[max.count.opt,1] = 3;
    opt.cell[max.count.opt,2] = 1;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 3;
    opt.cell[max.count.opt,2] = 2;
;
   VALUE 2:
    opt.cell[max.count.opt,1] = 2;
    opt.cell[max.count.opt,2] = 1;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 2;
    opt.cell[max.count.opt,2] = 2;
;
;
   VALUE 3:
    opt.cell[max.count.opt,1] = 1;
    opt.cell[max.count.opt,2] = 1;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 1;
    opt.cell[max.count.opt,2] = 2;
;
;
   VALUE 4:
    opt.cell[max.count.opt,1] = 3;
    opt.cell[max.count.opt,2] = 3;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 3;
    opt.cell[max.count.opt,2] = 4;
;
;
   VALUE 5:
    opt.cell[max.count.opt,1] = 2;
    opt.cell[max.count.opt,2] = 3;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 2;
    opt.cell[max.count.opt,2] = 4;
;
;
   VALUE 6:
    opt.cell[max.count.opt,1] = 1;
    opt.cell[max.count.opt,2] = 3;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 1;
    opt.cell[max.count.opt,2] = 4;
;
;
   VALUE 7:
    opt.cell[max.count.opt,1] = 3;
    opt.cell[max.count.opt,2] = 5;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 3;
    opt.cell[max.count.opt,2] = 6;
;
;
   VALUE 8:
    opt.cell[max.count.opt,1] = 2;
    opt.cell[max.count.opt,2] = 5;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 2;
    opt.cell[max.count.opt,2] = 6;
;
;
   VALUE 9:
    opt.cell[max.count.opt,1] = 1;
    opt.cell[max.count.opt,2] = 5;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 1;
    opt.cell[max.count.opt,2] = 6;
;
;
   VALUE 10:
    opt.cell[max.count.opt,1] = 3;
    opt.cell[max.count.opt,2] = 7;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 3;
    opt.cell[max.count.opt,2] = 8;
;
;
   VALUE 11:
    opt.cell[max.count.opt,1] = 2;
    opt.cell[max.count.opt,2] = 7;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 2;
    opt.cell[max.count.opt,2] = 8;
;
;
   VALUE 12:
    opt.cell[max.count.opt,1] = 1;
    opt.cell[max.count.opt,2] = 7;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 1;
    opt.cell[max.count.opt,2] = 8;
;
;
   VALUE 13:
    opt.cell[max.count.opt,1] = 3;
    opt.cell[max.count.opt,2] = 9;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 3;
    opt.cell[max.count.opt,2] = 10;
;
;
   VALUE 14:
    opt.cell[max.count.opt,1] = 2;
    opt.cell[max.count.opt,2] = 9;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 2;
    opt.cell[max.count.opt,2] = 10;
;
;
   VALUE 15:
    opt.cell[max.count.opt,1] = 1;
    opt.cell[max.count.opt,2] = 9;
    max.count.opt = max.count.opt+1;
    opt.cell[max.count.opt,1] = 1;
    opt.cell[max.count.opt,2] = 10;
;
  END
  .$i1 = $ENCODE(/L,opt.cell[max.count.opt-1,1])
  .$i2 = $ENCODE(/L,opt.cell[max.count.opt-1,2])
  .$i3 = $ENCODE(/L,opt.cell[max.count.opt,1])
  .$i4 = $ENCODE(/L,opt.cell[max.count.opt,2])
  .$temp = "OPT indicies: (i:"+.$i1+", j:"+.$i2+"), "
  .$temp = .$temp+"(i:"+.$i3+", j:"+.$i4+")"
  CALL log(.$temp)
;
.END
.PROGRAM opt.take(.i,.j)@26/08/02 14:55 #544
  IF FALSE THEN
    .i = hmi.st.in.i
    .j = hmi.st.in.j
  END
  .$temp = "Take OPT from (i: "+$ENCODE(/L,.i)+", j: "+$ENCODE(/L,.j)+")"
  CALL log(.$temp)
; Set default motion parameters
  TOOL tool.pin
  SPEED 10 ALWAYS
  ACCURACY 100 ALWAYS
  ACCEL 5 ALWAYS
  DECEL 5 ALWAYS
; Calculate points
  POINT .opt.take.safe = #opt.take.safe
  DECOMPOSE .ct1[1] = .opt.take.safe
  IF .i==3 AND .j>=9 THEN
    DECOMPOSE .ct2[1] = opt.point[.i,8]
  ELSE
    DECOMPOSE .ct2[1] = opt.point[.i,.j]
  END
  POINT .mid.point = TRANS(.ct2[1],.ct1[2],.ct2[3],.ct1[4],.ct1[5],.ct1[6])
  POINT .opt.put = #opt.put
; Release tare
  PULSE release.tare
; Motion
;
; Move before OPT
  LMOVE opt.point[.i,.j]+TRANS(0,0,200)
  ACCURACY 5
  LMOVE opt.point[.i,.j]+TRANS(0,0,50)
; Move to OPT
  ACCURACY 0.02
  SPEED 50 MM/S
  LMOVE opt.point[.i,.j]
  BREAK
  PULSE capture.tare
  count.opt = count.opt+1
  TWAIT 0.5
; Move up
  ACCURACY 0.02
  SPEED 50 MM/S
  ACCEL 50
  LMOVE opt.point[.i,.j]+TRANS(20)
; Move to sensor position
  SPEED 50 MM/S
  ACCURACY 0
  LMOVE opt.point[.i,.j]+TRANS(20,0,100)
  BREAK
; Wait sensor
  CALL log("Wait OPT sensor state")
  WHILE NOT SIG(s.stock.opt.ok) AND NOT SIG(s.stock.opt.ng) DO
    $action = "WaitInStockerSensor"
    TWAIT 0.5
  END
  CALL log(.$temp)
;SWAIT -rs7.locked.zone
  IF SIG(s.stock.opt.ok) THEN
    CALL log("OPT exists, continue")
    SIGNAL -s.stock.opt.ok
    LMOVE opt.point[.i,.j]+TRANS(20,0,500)
; Move to aux point
    LMOVE .mid.point
    LMOVE #opt.take.safe
    LMOVE #opt.put.safe
; Move before put point
    ACCURACY 20
    LMOVE .opt.put+TRANS(50)
    ACCURACY 1
    LMOVE .opt.put+TRANS(20)
    BREAK
; Move to put point
    ACCURACY 0.02
    SPEED 20 MM/S
    LMOVE #opt.put
    BREAK
    PULSE release.tare
    TWAIT 0.5
    SIGNAL s.opt.placed
; Move out of put point
    ACCURACY 30
    LMOVE .opt.put+TRANS(,,50)
    BREAK
; Wait pneumatics
    CALL log("Wait pneumatics close")
    WHILE NOT SIG(s.cmd.pneum.cl) DO
      $action = "WaitPneumaticClose"
      TWAIT 0.5
    END
    CALL log(.$temp)
; Move out of put point
    LMOVE #opt.put.safe
    CALL opt.push
    LMOVE #opt.put.safe
    SPEED 500 MM/S
    LMOVE #stz.wait
;POINT #current.pos = #stz.wait
  ELSE
    CALL log("OPT do not exists, move to next")
    SIGNAL -s.stock.opt.ng
    ACCURACY 0.02
    SPEED 50 MM/S
    LMOVE opt.point[.i,.j]+TRANS(20)
    ACCURACY 0.02
    SPEED 50 MM/S
    LMOVE opt.point[.i,.j]
    BREAK
    PULSE release.tare
    TWAIT 0.5
    ACCURACY 5
    LMOVE opt.point[.i,.j]+TRANS(0,0,50)
    LMOVE opt.point[.i,.j]+TRANS(0,0,200)
;  POINT #current.pos = #HERE
  END
  ACCEL 100 ALWAYS
  DECEL 100 ALWAYS
.END
.PROGRAM ot.return(.i,.j)@26/07/03 11:05 #479
  IF FALSE THEN
    .i = hmi.ot.i
    .j = hmi.ot.j
  END
  .$temp = "Return OT with (i: "+$ENCODE(/L,.i)+", j: "+$ENCODE(/L,.j)+")"
  CALL log(.$temp)
;
  ACCURACY 100 ALWAYS
  ACCEL 5 ALWAYS
  DECEL 5 ALWAYS
  SPEED 10 ALWAYS
;
  PULSE release.tare
;
  TOOL tool.pin
;
  POINT .post.tare.out = #ot.take.safe
  DECOMPOSE .ct1[1] = .post.tare.out
  IF .i==3 AND .j>=10 THEN
    DECOMPOSE .ct2[1] = ot.point[.i,9]
  ELSE
    DECOMPOSE .ct2[1] = ot.point[.i,.j]
  END
  POINT .mid.point = TRANS(.ct2[1],.ct1[2],.ct2[3],.ct1[4],.ct1[5],.ct1[6])
  POINT .put.outpal = #ot.put
;
  LMOVE #pos.wait
  ACCURACY 20
  LMOVE .put.outpal+TRANS(,,50)
  BREAK
;
  ACCURACY 0.02
  SPEED 50 MM/S
  LMOVE #ot.put
  BREAK
;
  PULSE capture.tare
  TWAIT 0.5
;
  ACCURACY 0.02
  SPEED 100 MM/S
  LMOVE .put.outpal+TRANS(150)
;
  LMOVE #ot.take.safe
  LMOVE ot.point[.i,.j]+TRANS(20,0,400)
;
  ACCURACY 0.02
  SPEED 50 MM/S
  LMOVE ot.point[.i,.j]+TRANS(20)
  BREAK
;
  ACCURACY 0.02
  SPEED 20 MM/S
  LMOVE ot.point[.i,.j]
  BREAK
  PULSE release.tare
  TWAIT 0.5
  SIGNAL -s.ot.placed
;
  ACCURACY 10
  LMOVE ot.point[.i,.j]+TRANS(0,0,50)
;
  ACCEL 100 ALWAYS
  DECEL 100 ALWAYS
.END
.PROGRAM ot.table(.id)@26/06/25 16:09 #486
;
  .$temp = "Processing OT with ID: "+$ENCODE(/L,.id)
  CALL log(.$temp)
  CASE .id OF
   VALUE 1:
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 1;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 2;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 3;
;
   VALUE 2:
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 1;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 2;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 3;
;
   VALUE 3:
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 1;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 2;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 3;
;
   VALUE 4:
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 1;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 2;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 3;
;
   VALUE 5:
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 4;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 5;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 6;
;
   VALUE 6:
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 4;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 5;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 6;
;
   VALUE 7:
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 4;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 5;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 6;
;
   VALUE 8:
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 4;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 5;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 6;
;
   VALUE 9:
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 7;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 8;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 9;
;
   VALUE 10:
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 7;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 8;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 9;
;
   VALUE 11:
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 7;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 8;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 9;
;
   VALUE 12:
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 7;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 8;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 9;
;
   VALUE 13:
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 10;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 11;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 4;
    ot.cell[max.count.ot,2] = 12;
;
   VALUE 14:
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 10;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 11;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 3;
    ot.cell[max.count.ot,2] = 12;
;
   VALUE 15:
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 10;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 11;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 2;
    ot.cell[max.count.ot,2] = 12;
;
   VALUE 16:
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 10;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 11;
    max.count.ot = max.count.ot+1;
    ot.cell[max.count.ot,1] = 1;
    ot.cell[max.count.ot,2] = 12;
;
  END
  .$i1 = $ENCODE(/L,ot.cell[max.count.ot-2,1])
  .$i2 = $ENCODE(/L,ot.cell[max.count.ot-2,2])
  .$i3 = $ENCODE(/L,ot.cell[max.count.ot-1,1])
  .$i4 = $ENCODE(/L,ot.cell[max.count.ot-1,2])
  .$i5 = $ENCODE(/L,ot.cell[max.count.ot,1])
  .$i6 = $ENCODE(/L,ot.cell[max.count.ot,2])
  .$temp = "OT indicies: (i:"+.$i1+", j:"+.$i2+"), "
  .$temp = .$temp+"(i:"+.$i3+", j:"+.$i4+"), "
  .$temp = .$temp+"(i:"+.$i3+", j:"+.$i4+")"
  CALL log(.$temp)
;
.END
.PROGRAM ot.take(.i,.j)@26/08/02 14:55 #621
; Start from step 3 to manual check
  IF FALSE THEN
    .i = hmi.st.out.i
    .j = hmi.st.out.j
  END
; Log info
  .$temp = "Take OT from (i: "+$ENCODE(/L,.i)+", j: "+$ENCODE(/L,.j)+")"
  CALL log(.$temp)
; Set default motion parameters
  TOOL tool.pin
  SPEED 10 ALWAYS
  ACCURACY 100 ALWAYS
  ACCEL 5 ALWAYS
  DECEL 5 ALWAYS
; Calculate points
  POINT .ot.take.safe = #ot.take.safe
  DECOMPOSE .ct1[1] = .ot.take.safe
  IF .i==3 AND .j>=10 THEN
    DECOMPOSE .ct2[1] = ot.point[.i,9]
  ELSE
    DECOMPOSE .ct2[1] = ot.point[.i,.j]
  END
;DECOMPOSE .ct2[1] = ot.point[.i, .j]
  POINT .mid.point = TRANS(.ct1[1],.ct2[2],.ct2[3],.ct1[4],.ct1[5],.ct1[6])
  POINT .ot.put = #ot.put
; Release tare
  PULSE release.tare
; Motion
; Ensure that we are in home position!!!
;
; Move before OT
  LMOVE ot.point[.i,.j]+TRANS(0,0,200)
  ACCURACY 5
  LMOVE ot.point[.i,.j]+TRANS(0,0,50)
; Move to OT
  ACCURACY 0.02
  SPEED 50 MM/S
  LMOVE ot.point[.i,.j]
  BREAK
  PULSE capture.tare
  TWAIT 0.5
  count.ot = count.ot+1
; Move up
  ACCURACY 0.02
  SPEED 50 MM/S
  LMOVE ot.point[.i,.j]+TRANS(20)
; Move to sensor position
  ACCURACY 0.02
  SPEED 100 MM/S
  LMOVE ot.point[.i,.j]+TRANS(20,0,100)
  BREAK
; Wait sensor
  CALL log("Wait OT sensor state")
  WHILE NOT SIG(s.stock.ot.ok) AND NOT SIG(s.stock.ot.ng) DO
    $action = "WaitOutStockerSensor"
    TWAIT 0.5
  END
  CALL log(.$temp)
; Check if OK
  IF SIG(s.stock.ot.ok) THEN
    CALL log("OT exists, continue")
    SIGNAL -s.stock.ot.ok
    LMOVE ot.point[.i,.j]+TRANS(20,0,400)
    LMOVE .mid.point
    LMOVE #ot.take.safe
; Move to aux point
    LMOVE #ot.put.safe
; Move before put point
    ACCURACY 20
    LMOVE .ot.put+TRANS(100)
; Move to put point
    ACCURACY 0.02
    SPEED 20 MM/S
    LMOVE #ot.put
    BREAK
    PULSE release.tare
    TWAIT 0.5
    SIGNAL s.ot.placed
; Move out of put point
    ACCURACY 30
    LMOVE .ot.put+TRANS(,,100)
;LMOVE #ot.put.safe
    LMOVE #pos.wait
    BREAK
    PULSE rs13.tare.ack,15
;
;  POINT #current.pos = #pos.wait
  ELSE
    CALL log("OT do not exists, move to next")
    SIGNAL -s.stock.ot.ng
    ACCURACY 0.02
    SPEED 50 MM/S
    LMOVE ot.point[.i,.j]+TRANS(20)
    ACCURACY 0.02
    SPEED 50 MM/S
    LMOVE ot.point[.i,.j]
    BREAK
    PULSE release.tare
    TWAIT 0.5
    ACCURACY 5
    LMOVE ot.point[.i,.j]+TRANS(0,0,50)
    LMOVE ot.point[.i,.j]+TRANS(0,0,200)
;  POINT #current.pos = #HERE
  END
;
  ACCEL 100 ALWAYS
  DECEL 100 ALWAYS
;
.END
.PROGRAM pg.select()@26/06/25 16:09 #396
  SCASE $pg.name OF
   SVALUE "312.229.002":
    CASE detail.spec OF
     VALUE 0:
      CALL id1; idX_1
     VALUE 1:
      CALL id1
     VALUE 2:
      CALL id1
     ANY :
      $pg.name = "NULL"
    END
;
   SVALUE "0401.17.02.023":
    CASE detail.spec OF
     VALUE 0:
      CALL id2; idX_1
     VALUE 1:
      CALL id2
     VALUE 2:
      CALL id2
     ANY :
      $pg.name = "NULL"
    END
;
   SVALUE "312.229.001":
    CASE detail.spec OF
     VALUE 0:
      CALL id3; idX_1
     ANY :
      $pg.name = "NULL"
    END
;
   SVALUE "440.00.026":
    CASE detail.spec OF
     VALUE 0:
      CALL id4; idX_1
     VALUE 1:
      CALL id4
     VALUE 2:
      CALL id4
     VALUE 3:
      CALL id4
     ANY :
      $pg.name = "NULL"
    END
;
   SVALUE "440.00.111":
    CASE detail.spec OF
     VALUE 0:
      CALL id5; idX_1
     VALUE 2:
      CALL id5
     VALUE 3:
      CALL id5
     ANY :
      $pg.name = "NULL"
    END
;
   SVALUE "0401.28.02.063":
    CASE detail.spec OF
     VALUE 0:
      CALL id6; idX_1
     VALUE 1:
      CALL id6
     ANY :
      $pg.name = "NULL"
    END
;
;
   ANY :
    $pg.name = "NULL"
    RETURN
  END
;
.END
.PROGRAM pg0()@26/06/25 16:09 #0
  state = 0
  CALL a.main
.END
.PROGRAM pos.put()@26/07/03 11:05 #4236
;
  .$temp = "Put detail to positioner (ID:"+$ENCODE(object.id)+")"
  CALL log(.$temp)
;
  SPEED 30 ALWAYS
  ACCURACY 100 ALWAYS
  TOOL tool.pick[current.gripper]
;
  POINT .temp = #pos.point[object.id]
  ACCURACY 20
;SIGNAL rs13.lock.zone ; TEST
  LMOVE #pos.wait
  BREAK
  SIGNAL rs13.lock.zone
  CALL log("Check if positioner is occupied")
  SWAIT -rs7.locked.zone
;
  LMOVE .temp+TRANS(10,0,50)
  ACCURACY 5
  LMOVE .temp+TRANS(10,0,20)
  ACCURACY 0.02
  IF object.id==2 THEN
    LMOVE .temp+TRANS(5,0,5)
  ELSE
    LMOVE .temp+TRANS(10,0,3)
  END
  BREAK
;
  SPEED 20 MM/S
  ACCURACY 0.02
  LMOVE #pos.point[object.id]
  BREAK
  STABLE 0.2
  TWAIT 0.3
  PULSE grip.unclamp
  TWAIT 0.5
  SIGNAL -s.grip.full
  count.put = count.put+1
  BITS rs13.det.put[0],16 = count.put
  CALL log("Detail counter:"+$ENCODE(count.put))
  $action = "WaitForPick"
;
  LMOVE .temp+TRANS(0,0,200)
;SIGNAL rs13.det.put
  LMOVE #pos.wait
  BREAK
  SIGNAL -rs13.lock.zone
;LMOVE #stz.wait
.END
.PROGRAM safe.home()@26/06/25 16:09 #244
;
  IF SIG(do.home) THEN
    CALL log("Robot already in home position")
    RETURN
  END
  CALL log("Performing safe motion to home position")
;
; In STZ zone
; Move to the height of a pos.wait
  IF SIG(do.work[2]) THEN
    POINT .temp = #stz.wait
    DECOMPOSE .s[1] = .temp
    POINT .temp = HERE
    DECOMPOSE .c[1] = .temp
    .dz = .s[3]-.c[3]
    DRAW 0,0,.dz
    LMOVE #stz.wait
    LMOVE #pos.wait
    LMOVE #homyak
  END
; In OT zone
; Move to the height of a home POINT
  JMOVE #homyak
  BREAK
  CALL log("Robot in home position")
;
.END
.PROGRAM set.io.pc()@26/07/02 22:09 #120
; Gripper IO
;
; Tare
  release.tare = 1
  capture.tare = 2
; Gripper
  release.grip = 5
  capture.grip = 6
; Clamp
  grip.unclamped = 1001
  grip.clamped = 1002
  grip.unclamp = 3
  grip.clamp = 4
;
; Ethernet I/P IO (17-32)
;
; Inputs
;
  rs7.work[1] = 1017
  rs7.tare.chg = 1018
  rs7.locked.zone = 1019
  rs7.finish.ack = 1020
  rs7.put.ack = 1021
;
  rs7.det.picked[0] = 1040
  rs7.det.picked[1] = 1041
  rs7.det.picked[2] = 1042
  rs7.det.picked[3] = 1043
  rs7.det.picked[4] = 1044
  rs7.det.picked[5] = 1045
  rs7.det.picked[6] = 1046
  rs7.det.picked[7] = 1047
  rs7.det.picked[8] = 1048
  rs7.det.picked[9] = 1049
  rs7.det.picked[10] = 1050
  rs7.det.picked[11] = 1051
  rs7.det.picked[12] = 1052
  rs7.det.picked[13] = 1053
  rs7.det.picked[14] = 1054
  rs7.det.picked[15] = 1055
;
  rs7.etalon.stop = 1033
; Outputs
;
  do.work[1] = 17
  rs13.tare.ack = 18
  rs13.finish = 20
  rs13.detail.put = 21
  rs13.lock.zone = 22
;
  rs13.det.put[0] = 40
  rs13.det.put[1] = 41
  rs13.det.put[2] = 42
  rs13.det.put[3] = 43
  rs13.det.put[4] = 44
  rs13.det.put[5] = 45
  rs13.det.put[6] = 46
  rs13.det.put[7] = 47
  rs13.det.put[8] = 48
  rs13.det.put[9] = 49
  rs13.det.put[10] = 50
  rs13.det.put[11] = 51
  rs13.det.put[12] = 52
  rs13.det.put[13] = 53
  rs13.det.put[14] = 54
  rs13.det.put[15] = 55
;
  rs13.no.ot.stop = 34
; Internal IO
;
; Dedicated inputs 2001 - 2064
;
; IFP page change 2001-2008
  di.ifp.page[1] = 2001
  di.ifp.page[2] = 2002
  di.ifp.page[3] = 2003
  di.ifp.page[4] = 2004
  di.ifp.page[5] = 2005
  di.ifp.page[6] = 2006
  di.ifp.page[7] = 2007
  di.ifp.page[8] = 2008
;
  di.hold = 2009
;
; Dedicated outputs 2101-2164
;
  do.home = 2010
  do.bat.alm = 2011
  do.automatic = 2012
;
;;
;
; Internal logic 2201 - 2960
;
; TCP/IP display flags
  s.tcp.send.ena = 2201
  s.tcp.recv.ena = 2202
  s.tcp.ena = 2203
  s.tcp.log = 2204
;
  s.zone.blocked = 2209
;
; Workspaces
  do.work[2] = 2212
  do.work[3] = 2213
  do.work[4] = 2214
  do.work[5] = 2215
  do.work[6] = 2216
  do.work[7] = 2217
  do.work[8] = 2218
;
  s.force.in[1] = 2221
  s.force.in[2] = 2222
;
  s.stock.ot.ok = 2223
  s.stock.ot.ng = 2224
  s.stock.opt.ok = 2225
  s.stock.opt.ng = 2226
  s.ot.pos.ok = 2227
  s.ot.pos.ng = 2228
;
  s.ot.placed = 2229
  s.opt.placed = 2230
;
  s.grip.full = 2231
;
  s.cmd.start = 2232
  s.cmd.pick = 2233
  s.cmd.put = 2234
  s.cmd.pneum.op = 2235
  s.cmd.pneum.cl = 2236
  s.cmd.chg.opt = 2237
  s.cmd.finish = 2238
  s.cmd.pause = 2239
  s.cmd.resume = 2240
  s.cmd.stop = 2241
  s.cmd.n.op.stop = 2242
;
  s.pr.tst.opt = 2247
  s.pr.tst.stz = 2248
  s.pr.tst.ot = 2249
  s.pr.home = 2250
  s.pr.tch.st.ot = 2251
  s.pr.tch.st.opt = 2252
  s.pr.tch.stz = 2253
  s.pr.tch.grip = 2254
  s.pr.tch.pos = 2255
  s.apply.grip = 2256
  s.apply.cv = 2257
;
  s.hmi.pneum.op = 2258
  s.hmi.pneum.cl = 2259
  s.hmi.get.cv = 2260
  s.hmi.res.state = 2261
  s.hmi.res.act = 2262
;
  s.debug.mode = 2300
.END
.PROGRAM set.vars.pc()@26/06/25 16:09 #101
;
; Constants
;
; Initialize once
;
;
  IF NOT EXISTREAL("wdog.tmr") THEN
    wdog.tmr = 120
    $wdog.state = "FALSE"
  END
;
;
  IF NOT EXISTREAL("state") THEN
    state = 0
  END
;
  IF NOT EXISTCHAR("$tcp.ip") THEN
    $tcp.ip = "127.0.0.1"
  END
;
  IF NOT EXISTREAL("tcp.port") THEN
    tcp.port = 9013
  END
;
  IF NOT EXISTREAL("tcp.ena") THEN
    tcp.ena = -1
  END
;
  IF NOT EXISTREAL("tcp.recv.ena") THEN
    tcp.recv.ena = -1
  END
;
  IF NOT EXISTREAL("tcp.send.ena") THEN
    tcp.send.ena = -1
  END
;
  IF NOT EXISTREAL("tcp.sender.dly") THEN
    tcp.sender.dly = 0.25
  END
;
  IF NOT EXISTREAL("tyterm") THEN
    tyterm = 0
  END
;
  IF NOT EXISTCHAR("$log.entry[127]") THEN
    FOR .i = 0 TO 127
      $log.entry[.i] = " "
    END
  END
;
;IF NOT EXISTJOINT ("#current.pos") THEN
;POINT #current.pos = #homyak
;END
;
  IF NOT EXISTREAL("current.gripper") THEN
    current.gripper = 0
  END
;
  IF NOT EXISTREAL("pg.gripper") THEN
    pg13.gripper = 0
  END
;
  IF NOT EXISTREAL("hmi.gripper") THEN
    hmi.gripper = 1
  END
;
  IF NOT EXISTREAL("hmi.ot.i") THEN
    hmi.ot.i = 1
  END
;
  IF NOT EXISTREAL("hmi.ot.j") THEN
    hmi.ot.j = 1
  END
;
  IF NOT EXISTREAL("hmi.opt.i") THEN
    hmi.opt.i = 1
  END
;
  IF NOT EXISTREAL("hmi.opt.j") THEN
    hmi.opt.j = 1
  END
;
  IF NOT EXISTREAL("hmi.obj.id") THEN
    hmi.obj.id = 1
  END
;
  IF NOT EXISTCHAR("$action") THEN
    $action = "Default"
  END
;
  IF NOT EXISTCHAR("$pg.name") THEN
    $pg.name = "Default"
  END
;
  IF NOT EXISTREAL("detail.count") THEN
    detail.count = 0
  END
;
  IF NOT EXISTREAL("keep.gripper") THEN
    keep.gripper = -1
  END
;
  IF NOT EXISTREAL("keep.object") THEN
    keep.object = -1
  END
;
  IF NOT EXISTREAL("grip.xsh[3]") THEN
    FOR .i = 1 TO 3
      grip.xsh[.i] = 0
      grip.ysh[.i] = 0
      grip.zsh[.i] = 0
      grip.180xsh[.i] = 0
      grip.180ysh[.i] = 0
    END
  END
;
  FOR .n = 1 TO 64
    .$name = "cv.x.plus["+$ENCODE(/L,.n)+"]"
    IF NOT EXISTREAL(.$name) THEN
      cv.x.plus[.n] = 0
      cv.x.minus[.n] = 0
      cv.y.plus[.n] = 0
      cv.y.minus[.n] = 0
    END
  END
;
.END
.PROGRAM ship.pos()@26/06/25 16:09 #0
  JOINT SPEED9 ACCU1 TIMER0 TOOL1 WORK0 CLAMP OX= WX= #[-0.0011916,0,-159,0,-108,15] ;
.END
.PROGRAM state0()@26/07/02 22:09 #281; Initialization of parameters
;
  CALL log("State 0: Program reset. Initialization of parameters")
  SIGNAL -s.opt.placed,-s.ot.placed,-s.grip.full
  SIGNAL -s.cmd.start,-s.cmd.pick,-s.cmd.finish,-rs13.finish,-s.cmd.stop
  SIGNAL -s.cmd.chg.opt,-s.cmd.n.op.stop,-rs13.no.ot.stop
  SIGNAL -s.cmd.resume,-s.cmd.pause
  SIGNAL -s.stock.opt.ng,-s.stock.ot.ng,-s.stock.opt.ok,-s.stock.ot.ok
  SIGNAL s.force.in[1],s.force.in[2]
;
  count.put = 0
  BITS rs13.det.put[0],16 = count.put
;count.ot = 0
;count.opt = 0
;$loaded.pg = "None"
;
  state = 100
;
.END
.PROGRAM state1()@26/07/02 08:08 #641; Pick OT from stocker
;
  CALL log("State 1: Pick OT")
  IF count.ot>=max.count.ot THEN
    CALL log("Reached out of maximum tare count")
    SIGNAL s.cmd.n.op.stop
    LMOVE #ot.take.safe
    LMOVE #homyak
    state = 103
    RETURN
  END
; Check all start positions
  POINT .current.pos = #HERE
  POINT .stz.wait = #stz.wait
  POINT .pos.wait = #pos.wait
; Move to start position
  IF SIG(do.home) THEN
    LMOVE #ot.take.safe
  END
  IF DISTANCE(.current.pos,.stz.wait)<=25 THEN
    LMOVE #pos.wait
    LMOVE #ot.take.safe
  END
  IF DISTANCE(.current.pos,.pos.wait)<=25 THEN
    LMOVE #ot.take.safe
  END
; #ot.take.safe -> take -> put -> pos.wait
; #ot.take.safe -> take
  .i = ot.cell[count.ot+1,1]
  .j = ot.cell[count.ot+1,2]
  CALL ot.take(.i,.j); count.ot + 1
;
  state = 101
;
.END
.PROGRAM state100()@26/06/25 16:09 #346; Waiting for start
;
  CALL log("State 100: Waiting for start")
  $action = "WaitingForStart"
;
  WHILE NOT SIG(s.cmd.start) DO
    TWAIT 0.5
  END
  count.ot = 0
  count.opt = 0
  SIGNAL -s.cmd.stop
  SIGNAL -s.cmd.start
;
  CALL log("START with Name:"+$pg.name+"-"+$ENCODE(detail.spec)+" Count:"+$ENCODE(detail.count)+" OT:"+$ot.data+" OPT:"+$opt.data);
  CALL load.opt.data
  CALL load.ot.data
  CALL pg.select
  state = 106
;
.END
.PROGRAM state101()@26/06/25 16:09 #11852; Auxilary state
  CALL log("State 101: Calculating next step")
  state = 102
.END
.PROGRAM state102()@26/07/03 14:05 #27762519; Decision making
; Priority 1
  IF SIG(s.cmd.pause) THEN
    state = 105
    RETURN
  END
;
; Priority 2
  IF SIG(s.cmd.stop) OR SIG(rs7.etalon.stop) THEN
    state = 103;6
    RETURN
  END
; Priority 3
  IF NOT SIG(s.ot.placed) THEN
    state = 1
    RETURN
  END
;
; Priority 4
  IF NOT SIG(s.opt.placed) AND SIG(s.ot.placed) AND NOT (count.put==detail.count) THEN
    state = 2
    RETURN
  END
; Priority 5
  IF SIG(rs7.tare.chg) AND SIG(s.ot.placed) THEN
    state = 5
    RETURN
  END
; Priority 6
  IF SIG(s.ot.placed) AND SIG(s.opt.placed) AND NOT SIG(s.grip.full) THEN
    $action = "WaitForPick"
    IF stz.x>=0 AND SIG(s.cmd.pick) AND NOT (count.put==detail.count) THEN ;AND NOT SIG (rs7.tare.chg) THEN
      SIGNAL -s.cmd.pick
      $action = " "
      state = 3
      RETURN
    END
  END
; Priority 7
  IF SIG(s.ot.placed) AND SIG(s.opt.placed) AND SIG(s.grip.full) AND BITS(rs7.det.picked[0],16)==count.put THEN
    $action = "WaitPosFree"
    IF NOT SIG(rs7.work[1]) AND SIG(s.cmd.put) AND NOT SIG(rs7.locked.zone) THEN
      state = 4
      RETURN
    END
  END
; Priority 8
  IF SIG(s.cmd.chg.opt) OR count.put==detail.count THEN
    state = 6
    $action = "ChangeOPT"
    RETURN
  END
.END
.PROGRAM state103()@26/07/02 08:11 #306; Auxilary state
  CALL log("State 103: Calculating ending sequence step")
  state = 104
.END
.PROGRAM state104()@26/07/02 22:09 #2718148; Ending sequence
  ;
  IF SIG (s.cmd.n.op.stop) AND SIG (s.opt.placed) THEN
    CALL log("Return OPT in state 104")
    state = 6
    RETURN
  END
  ;
  IF SIG (s.cmd.n.op.stop) AND NOT SIG (s.opt.placed) THEN
    CALL log ("Program complete")
    SIGNAL rs13.no.ot.stop
    state = 255
    RETURN
  END
  ;
  IF SIG (s.ot.placed) AND SIG (s.grip.full) AND BITS (rs7.det.picked[0], 16) == count.put THEN
    $action = "WaitPosFree"
    IF NOT SIG (rs7.work[1]) AND SIG (s.cmd.put) AND NOT SIG (rs7.locked.zone) THEN
      state = 4
      RETURN
    END
  END
  ;
  IF NOT SIG (s.grip.full) AND SIG (s.opt.placed) THEN
    CALL log("Return OPT in state 104")
    state = 6
    RETURN
  END
  ;
  .m1 = NOT SIG (s.grip.full) AND SIG (s.ot.placed) AND NOT SIG (rs7.tare.chg)
  .m2 = count.opt >= max.count.opt OR count.put == detail.count
  .m3 = SIG (s.cmd.stop) OR SIG (rs7.etalon.stop)
  IF .m1 AND (.m2 OR .m3) THEN
    SIGNAL s.cmd.finish
    SIGNAL rs13.finish
    CALL log ("Wait for RS007L finish task")
    SWAIT rs7.finish.ack
    state = 5
    RETURN
  END
  ;
  ; Priority 5
  IF SIG (rs7.tare.chg) AND SIG (s.ot.placed) THEN
    CALL log("Return OT in state 104")
    state = 5
    RETURN
  END
  ;
  IF NOT SIG (s.grip.full) AND SIG (s.cmd.finish) THEN
    CALL log ("Program complete")
    state = 255
    RETURN
  END
  ;
  IF NOT SIG (s.grip.full) AND count.ot >= max.count.ot AND NOT SIG (s.ot.placed) THEN
    CALL log("Fix for case 1???!")
    SIGNAL s.cmd.finish
    SIGNAL rs13.finish
    CALL log ("Wait for RS007L finish task")
    SWAIT rs7.finish.ack
    state = 255
    RETURN
  END
  ; Impossible situation
  IF SIG (rs7.tare.chg) AND NOT SIG (s.ot.placed) THEN
    CALL log("How ever you got here???")
    PULSE rs13.tare.ack, 15
    RETURN
  END
  ;
.END
.PROGRAM state105()@26/07/02 09:53 #125; Program paused
  CALL log("State 105: Program paused")
  $action = "Paused"
  SWAIT s.cmd.resume
  SIGNAL -s.cmd.resume
  SIGNAL -s.cmd.pause
  $action = " "
  CALL log("Program resumed")
  SIGNAL -s.cmd.pause
  state = 101
.END
.PROGRAM state106()@26/06/25 16:09 #477; Check program
  CALL log("State 106: Check program")
  IF $pg.name<>"NULL" THEN
    CALL log("Selected program: "+$pg.name)
    state = 7
  ELSE
    CALL log("Wrong program name. Program reset")
    BREAK
    $action = "WrongProgramName"
    TWAIT 10
    BREAK
    state = 0
  END
.END
.PROGRAM state2()@26/07/02 08:08 #481; Pick OPT from stocker
;
  CALL log("State 2: Pick OPT")
  IF count.opt>=max.count.opt THEN
    CALL log("Reached out of maximum tare count")
    LMOVE #homyak
    state = 103 ;!!!
    RETURN
  END
; Check all start positions
  POINT .current.pos = #HERE
  POINT .stz.wait = #stz.wait
  POINT .pos.wait = #pos.wait
; Move to start position
  IF DISTANCE(.current.pos,.stz.wait)<=25 THEN
    LMOVE #pos.wait
  END
; home -> take -> put -> stz.wait
; pos.wait -> take -> put -> stz.wait
  .i = opt.cell[count.opt+1,1]
  .j = opt.cell[count.opt+1,2]
  CALL opt.take(.i,.j); count.opt + 1
;
;POINT #current.pos = #stz.wait
;
  SIGNAL -s.cmd.chg.opt
;
  state = 101
;
.END
.PROGRAM state255()@26/06/25 16:09 #356; Program complete
  CALL log("State 255: Program complete")
  state = 0
.END
.PROGRAM state3()@26/06/25 16:09 #5317; Pick from STZ
;
  CALL log("State 3: Pick from STZ")
; Check all start positions
  POINT .current.pos = #HERE
  POINT .stz.wait = #stz.wait
  POINT .pos.wait = #pos.wait
  IF SIG(do.home) THEN
    LMOVE #opt.take.safe
    LMOVE #opt.put.safe
    LMOVE #stz.wait
  END
  IF DISTANCE(.current.pos,.pos.wait)<=25 THEN
    LMOVE #stz.wait
  END
; stz.wait -> pick -> pos.wait
  CALL stz.pick
;
;POINT #current.pos = #pos.wait
;
  state = 101
;
.END
.PROGRAM state4()@26/07/02 08:08 #5255; Put detail to positioner
  CALL log("State 4: Put detail to positioner")
; Check all start positions
  POINT .current.pos = #HERE
  POINT .stz.wait = #stz.wait
  POINT .pos.wait = #pos.wait
  IF SIG(do.home) THEN
    LMOVE #opt.take.safe
    LMOVE #pos.wait
  END
  IF DISTANCE(.current.pos,.stz.wait)<=25 THEN
    LMOVE #pos.wait
  END
; pos.wait -> put -> pos.wait
  CALL pos.put
;
;POINT #current.pos = #pos.wait JMOVE
;
  IF SIG(s.cmd.stop) OR SIG(rs7.etalon.stop) THEN
    state = 103
  ELSE
    state = 101
  END
;
.END
.PROGRAM state5()@26/06/25 16:09 #493; Return OT
  CALL log("State 5: Return OT")
; Check all start positions
  POINT .current.pos = #HERE
  POINT .stz.wait = #stz.wait
  POINT .pos.wait = #pos.wait
  IF DISTANCE(.current.pos,.stz.wait)<=25 THEN
    LMOVE #pos.wait
  END
;
  SWAIT -rs7.work[1]
; pos.wait -> take -> put -> Decide
  .i = ot.cell[count.ot,1]
  .j = ot.cell[count.ot,2]
  CALL ot.return(.i,.j); count.ot + 1
;
;POINT #current.pos = #HERE
  state = 8
;
.END
.PROGRAM state6()@26/06/30 22:03 #248; Return OPT
;
  CALL log("State 6: Return OPT")
;
  IF NOT SIG(s.opt.placed) THEN
    CALL log("OPT does not exists on STZ")
    state = 9
    RETURN
  END
; Check all start positions
  POINT .current.pos = #HERE
  POINT .stz.wait = #stz.wait
  POINT .pos.wait = #pos.wait
  IF SIG(do.home) THEN
    LMOVE #opt.take.safe
    LMOVE #opt.put.safe
    LMOVE #stz.wait
  END
  IF DISTANCE(.current.pos,.pos.wait)<=25 THEN
    LMOVE #stz.wait
  END
;
  SIGNAL -s.cmd.chg.opt
; stz.wait -> take -> put -> Decide
  .i = opt.cell[count.opt,1]
  .j = opt.cell[count.opt,2]
  CALL opt.return(.i,.j); count.ot + 1
;
;POINT #current.pos = #HERE
  SIGNAL -s.cmd.chg.opt
  state = 9
;
.END
.PROGRAM state7()@26/06/25 16:09 #467; Check grippers
  CALL log("State 7: Check if gripper change is required")
; We are at home at this point. No cases without home!
  IF current.gripper<>pg13.gripper THEN
    CALL log("Selected wrong gripper, perform change")
    LMOVE #opt.take.safe
    LMOVE #stz.wait
    IF current.gripper<>0 THEN
      CALL gripper.put(current.gripper)
    END
    CALL gripper.pick(pg13.gripper)
    LMOVE #opt.take.safe
    LMOVE #homyak
  ELSE
    CALL log("Program gripper is the same as current gripper")
  END
  state = 1
.END
.PROGRAM state8()@26/07/02 08:08 #493; Decide if pick next OT
  CALL log("State 8: Decide if pick next OT")
  IF count.ot>=max.count.ot OR SIG(s.cmd.finish) THEN
    LMOVE #ot.take.safe
    LMOVE #homyak
;
;POINT #current.pos = #homyak
    state = 103
  ELSE
    state = 1
  END
.END
.PROGRAM state9()@26/07/02 08:08 #425; Decide if pick next OPT
  CALL log("State 9: Decide if pick next OPT")
;
  .m1 = count.opt>=max.count.opt OR count.put==detail.count
  .m2 = SIG(s.cmd.stop) OR SIG(rs7.etalon.stop)
  .m3 = SIG(s.cmd.n.op.stop)
  IF .m1 OR .m2 OR .m3 THEN
    LMOVE #homyak
;
;POINT #current.pos = #homyak
    state = 103
  ELSE
    state = 2
  END
.END
.PROGRAM stz.pick()@26/07/03 11:03 #5367
;
  .$temp = "Pick detail from stz ("+$ENCODE(/L,stz.x)+", "+$ENCODE(/L,stz.y)+", "+$ENCODE(/L,stz.a)+")"
  CALL log(.$temp)
;
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  TOOL tool.pick[current.gripper]
; Raw coordinates
  .x = stz.x
  .y = stz.y
  .a = stz.a
;
  IF .x==0 OR .y==0 THEN
    CALL log("Unexpected 0 coordinate")
    RETURN
  END
;
; Gripper shift
  .xsh = grip.xsh[current.gripper]
  .ysh = grip.ysh[current.gripper]
  .zsh = grip.zsh[current.gripper]
  IF .a==180 THEN
    .xsh = grip.180xsh[current.gripper]
    .ysh = grip.180ysh[current.gripper]
  END
; CV correction
  .xp = cv.x.plus[object.id]
  .xm = cv.x.minus[object.id]
  .yp = cv.y.plus[object.id]
  .ym = cv.y.minus[object.id]
;
  IF .x>center.x+10 THEN
    .x = .x-.xp*(.x-center.x)
  END
  IF .x<center.x-10 THEN
    .x = .x+.xm*(-.x+center.x)
  END
  IF .y>center.y+10 THEN
    .y = .y-.yp*(.y-center.y)
  END
  IF .y<center.y-10 THEN
    .y = .y+.ym*(-.y+center.y)
  END
;
  POINT .pick = stz.frame+TRANS(.x+.xsh,.y+.ysh,.zsh)+RZ(.a)
  DECOMPOSE .c[1] = #pick.in
  POINT .#pick.in = #PPOINT(.c[1],.c[2],.c[3],.c[4],.c[5],.c[6]-.a)
;
  LMOVE #stz.wait
  ACCURACY 20
  LMOVE .#pick.in
  IF NOT SIG(grip.unclamped) THEN
    PULSE grip.unclamp
    CALL log("Wait for unclamp gripper")
    $action = "WaitingGripUnclamped"
    WAIT SIG(grip.unclamped) OR SIG(s.force.in[1])
  END
  ACCURACY 20
  LAPPRO .pick,-30
  SPEED 20 MM/S
  ACCURACY 0.02
  LMOVE .pick
  BREAK
;
  TWAIT 0.5
  PULSE grip.clamp
  TWAIT 0.5
  SIGNAL s.grip.full
  $action = "WaitPosFree"
;
  ACCURACY 5
  LAPPRO .pick,-30
  BREAK
  TWAIT 0.1
;
  LMOVE .#pick.in
  LMOVE #stz.wait
  LMOVE #pos.wait
;
.END
.PROGRAM tcp.callback.pc(.$data[],.data.length)@26/08/02 14:55 #160776
  .$temp = "Received "+$ENCODE(.data.length)+" strings:"
  PRINT tcp.recv.ena: .$temp
  FOR .i = 1 TO .data.length
    PRINT tcp.recv.ena: .$data[.i]
    CALL tcp.log.pc(.$data[.i])
; Strings for parsing
;
; START COMMAND
; String format:
; START;DETAILNAME;DETAILCOUNT;[INTAREID1,INTAREID2,..];[OTAREID1,INTAREID2,..];
    IF INSTR(.$data[.i] , "START") THEN
; Decode command
      .$temp = $DECODE(.$data[1],";",0)
      .$temp = $DECODE(.$data[1],";",1)
; Decode detail type
      $pg.name = $DECODE(.$data[1],";",0)
      .$temp = $DECODE(.$data[1],";",1)
; Decode detail spec
      detail.spec = VAL($DECODE(.$data[1],";",0))
      .$temp = $DECODE(.$data[1],";",1)
; Decode detail count
      detail.count = VAL($DECODE(.$data[1],";",0))
      .$temp = $DECODE(.$data[1],";",1)
; Decode intare ids
      $ot.data = $DECODE(.$data[1],";",0)
; Decode outtare ids
      .$temp = $DECODE(.$data[1],";",1)
      $opt.data = $DECODE(.$data[1],";",0)
; Decode layout
      .$temp = $DECODE(.$data[1],";",1)
      layout = VAL($DECODE(.$data[1],";",0))
;
      stz.x = -1
      stz.y = -1
      PULSE s.cmd.start,5
    END
;
; SENSOR COMMAND
; String format:
; SENSOR;SENSORNAME;STATE;
    IF INSTR(.$data[.i] , "SENSOR") THEN
; Decode command
      .$temp = $DECODE(.$data[1],";",0)
      .$temp = $DECODE(.$data[1],";",1)
; Decode sensor name
      .$sensor.name = $DECODE(.$data[1],";",0)
      .$temp = $DECODE(.$data[1],";",1)
; Decode sensor state
      .$sensor.state = $DECODE(.$data[1],";",0)
;CALL tcp.log.pc(.$sensor.state)
;
      IF INSTR(.$sensor.state , "TRUE") THEN
        IF .$sensor.name=="STOCKERINTARESENSOR" THEN
          SIGNAL s.stock.opt.ok
        END
;
        IF .$sensor.name=="STOCKEROUTTARESENSOR" THEN
          SIGNAL s.stock.ot.ok
        END
;
        IF .$sensor.name=="OUTPALLETSENSOR" THEN
          PULSE s.ot.pos.ok,5
        END
      END
      IF INSTR(.$sensor.state , "FALSE") THEN
        IF .$sensor.name=="STOCKERINTARESENSOR" THEN
          SIGNAL s.stock.opt.ng
        END
;
        IF .$sensor.name=="STOCKEROUTTARESENSOR" THEN
          SIGNAL s.stock.ot.ng
        END
;
        IF .$sensor.name=="OUTPALLETSENSOR" THEN
          PULSE s.ot.pos.ng,5
        END
      END
    END
;
; PNEUMOOPEN COMMAND
; String format:
; PNEUMOOPEN;
    IF INSTR(.$data[.i] , "PNEUMOOPEN") THEN
      $action = " "
      PULSE s.cmd.pneum.op,5
    END
;
; PNEUMOCLOSE COMMAND
; String format:
; PNEUMOCLOSE;
    IF INSTR(.$data[.i] , "PNEUMOCLOSE") THEN
      $action = " "
      PULSE s.cmd.pneum.cl,5
    END
;
; PICK COMMAND
; String format
; PICK;x;y;a;
    IF INSTR(.$data[.i] , "PICK") THEN
      .$temp = $DECODE(.$data[1],";",0)
      .$temp = $DECODE(.$data[1],";",1)
      .$x = $DECODE(.$data[1],",",0)
      .$temp = $DECODE(.$data[1],",",1)
      .$y = $DECODE(.$data[1],",",0)
      .$temp = $DECODE(.$data[1],",",1)
      .$a = .$data[1]
      stz.y = VAL(.$x)/10
      stz.x = VAL(.$y)/10
      stz.a = VAL(.$a)
      PULSE s.cmd.pick,5
;$action = " "
;s.cmd.put
    END
;
; POSITIONEREMPTY COMMAND
; String format
; POSITIONEREMPTY;
    IF INSTR(.$data[.i] , "POSITIONEREMPTY") THEN
      PULSE s.cmd.put,5
    END
;
; PALLETEMPTY COMMAND
; String format:
; PALLETEMPTY;
    IF INSTR(.$data[.i] , "PALLETEMPTY") THEN
      SIGNAL s.cmd.chg.opt
    END
;
; SPEED COMMAND
; String format:
; SPEED;VALUE;
;
    IF INSTR(.$data[.i] , "SPEED") THEN
      .$temp = $DECODE(.$data[1],";",0)
      .$temp = $DECODE(.$data[1],";",1)
      .$spd = $DECODE(.$data[1],";",0)
      .speed = VAL(.$spd)
      IF .speed<=0 THEN
        .speed = 1
      END
      IF .speed>100 THEN
        .speed = 100
      END
      MON_SPEED (.speed)
    END
;
; PAUSE COMMAND
; String format:
; PAUSE;
;
    IF INSTR(.$data[.i] , "PAUSE") THEN
      CALL log.pc2("Received PAUSE command")
      SIGNAL s.cmd.pause
    END
;
; RESUME COMMAND
; String format:
; RESUME;
;
    IF INSTR(.$data[.i] , "RESUME") THEN
      CALL log.pc2("Received RESUME command")
      SIGNAL s.cmd.resume
    END
;
; STOP COMMAND
; String format:
; STOP;
;
    IF INSTR(.$data[.i] , "STOP") THEN
      CALL log.pc2("Received STOP command")
      SIGNAL s.cmd.stop
    END
;
;
; CYCLEON COMMAND
; String format:
; CYCLEON;
;
    IF INSTR(.$data[.i] , "CYCLEON") AND NOT SWITCH(CS ) THEN
      CALL log.pc2("Received CYCLE ON command")
      IF SIG(do.automatic) THEN
        MC CONTINUE
      END
    END
;
; STEPMODE COMMAND
; String format:
; STEPMODE;VALUE
;
    IF INSTR(.$data[.i] , "STEPMODE") THEN
; Decode command
      .$temp = $DECODE(.$data[1],";",0)
      .$temp = $DECODE(.$data[1],";",1)
; Decode measurement result
      .$state = $DECODE(.$data[1],";",0)
      IF INSTR(.$state , "TRUE") THEN
        STP_ONCE ON
        CALL log.pc2("Received SET STEP MODE TRUE command")
      END
      IF INSTR(.$state , "FALSE") THEN
        STP_ONCE OFF
        CALL log.pc2("Received SET STEP MODE FALSE command")
      END
    END
;
; NEXTSTEP COMMAND
; String format:
; NEXTSTEP;
;
    IF INSTR(.$data[.i] , "NEXTSTEP") THEN
      CALL log.pc2("Received NEXTSTEP command")
      STPNEXT
    END
;
; ERESET COMMAND
; String format:
; ERESET;
;
    IF INSTR(.$data[.i] , "ERESET") THEN
      CALL log.pc2("Received ERROR RESET command")
      MC ERESET
      .$data[.i] = ""
      RETURN
    END
;
; RESET COMMAND
; String format:
; RESET;
;
    IF INSTR(.$data[.i] , "RESET") THEN
      CALL log.pc2("Received RESET command")
      state = 0
      IF NOT SWITCH(CS) THEN
        MC PRIME a.main
      END
    END
;
    .$data[.i] = ""
  END
.END
.PROGRAM tcp.client.pc()@26/06/25 16:09 #0
;
  tcp.socket = -1
  .tcp.retry.count = 10
  .tcp.connect.tmo = 5
  .tcp.receive.tmo = 5
;
  WHILE TRUE DO
; Checking for active sockets and closing them
    PRINT tcp.ena: "Checking for active sockets and closing them"
    TCP_STATUS .number,.ports[0],.sockets[0],.errors[0],.suberrors[0],.$ips[0]
    IF .number>0 THEN
      FOR .i = 0 TO .number-1
        IF .sockets[.i]<>0 THEN
          .$temp = "Closing socket with id: "+$ENCODE(.sockets[.i])
          PRINT tcp.ena: .$temp
          TCP_CLOSE .status,.sockets[.i]
        END
      END
    END
; Get IP from string
    .$tcp.ip.copy = $tcp.ip
    FOR .i = 1 TO 4
      .$ip = $DECODE(.$tcp.ip.copy,".")
      .ip[.i] = VAL(.$ip)
      IF .i<4 THEN
        .$ip = $DECODE(.$tcp.ip.copy,".",1)
      END
    END
;
; Connect to server
    .$temp = "Connecting to server with ip: "+$tcp.ip
    PRINT tcp.ena: .$temp
    TCP_CONNECT tcp.socket,tcp.port,.ip[1],.tcp.connect.tmo
;
; Start data processing cycle
    IF tcp.socket>=0 THEN
      .$temp = "Connection established with socket id:"+$ENCODE(tcp.socket)
      PRINT tcp.ena: .$temp
      .connected = TRUE
; Start receiving data cycle
      .tcp.error.cnt = 0
      WHILE .connected AND .tcp.error.cnt<=.tcp.retry.count DO
        TCP_RECV .status,tcp.socket,.$tcp.request[1],.request.size,.tcp.receive.tmo,255
        IF .status>=0 THEN
          IF .request.size==0 THEN
            .tcp.error.cnt = .tcp.error.cnt+1
            .$temp = "Received data with 0 length. Error count:"+$ENCODE(.tcp.error.cnt)
            PRINT tcp.ena: .$temp
          ELSE
            CALL tcp.callback.pc(.$tcp.request[],.request.size)
          END
        ELSE
          IF .status==-34024 THEN
            PRINT tcp.ena: "Timeout in receive, it\'s ok"
          ELSE
            .tcp.error.cnt = .tcp.error.cnt+1
            .$temp = "Failed to receive data with error:"+$ENCODE(.status)+". Error count:"+$ENCODE(.tcp.error.cnt)
            PRINT tcp.ena: .$temp
          END
        END
        TWAIT 0.05
      END
    ELSE
      .$temp = "Connection failed with error:"+$ENCODE(tcp.socket)
      PRINT tcp.ena: .$temp
      IF tcp.socket>0 THEN
        TCP_CLOSE .status,tcp.socket
      END
    END
    TWAIT 0.05
  END
.END
.PROGRAM tcp.log.pc(.$msg)@26/06/25 16:09 #255348
  IF NOT SIG(s.tcp.log) THEN
    RETURN
  END
;
; 1 line = 55 symbols max
;
  FOR .i = 0 TO 126
    $log.entry[.i] = $log.entry[.i+1]
  END
  $log.entry[127] = $TIME+" "+.$msg
;
  IFPWPRINT 1,1,1,9,10=$log.entry[116],$log.entry[117],$log.entry[118],$log.entry[119]
  IFPWPRINT 2,1,1,9,10=$log.entry[120],$log.entry[121],$log.entry[122],$log.entry[123]
  IFPWPRINT 3,1,1,9,10=$log.entry[124],$log.entry[125],$log.entry[126],$log.entry[127]
;
.END
.PROGRAM tcp.send.pc(.$data[],.data.length)@26/06/25 16:09 #685038
;
  .tcp.send.tmo = 5
;
  IF tcp.socket>0 THEN
    TCP_SEND .status,tcp.socket,.$data[1],.data.length,.tcp.send.tmo
    IF .status>=0 THEN
      .$temp = "Sent "+$ENCODE(.data.length)+" strings"
      PRINT tcp.send.ena: .$temp
      FOR .i = 1 TO .data.length
        PRINT tcp.send.ena: .$data[.i]
      END
    ELSE
      .$temp = "Failed to send data with error:"+$ENCODE(.status)
      PRINT tcp.send.ena: .$temp
      tcp.socket = -1
    END
  ELSE
    PRINT tcp.send.ena: "Failed to send data. Socket is not opened. Waiting for 5 seconds"
    TWAIT 5
  END
;
.END
.PROGRAM tcp.sender.pc()@26/06/25 16:09 #0
;
  WHILE TRUE DO
;
    CALL get.state.pc(.$data[1])
    .$data[2] = "ACTION:"+$action+";"
    .$data[2] = .$data[2]+"WATCHDOG:"+$wdog.state+";"
    .$data[2] = .$data[2]+"TAREIN:"+$ENCODE(count.opt)+";"
    .$data[2] = .$data[2]+"TAREOUT:"+$ENCODE(count.ot)+";"
    .$data[2] = .$data[2]+"GRIPPER:"+$ENCODE(current.gripper)+";"
    .$data[2] = .$data[2]+"PICKCOUNT:"+$ENCODE(count.put)+";"
    .$data[2] = .$data[2]+"STATE:"+$ENCODE(state)+";"
    .$data[2] = .$data[2]+"HOUR:"+$ENCODE(OPEINFO(3))+";"
;
    IF SWITCH(STP_ONCE) THEN
      .$data[2] = .$data[2]+"STEPMODE:TRUE;"
    ELSE
      .$data[2] = .$data[2]+"STEPMODE:FALSE;"
    END
;
;
    .$data[2] = .$data[2]+"\n"
;
    CALL tcp.send.pc(.$data[],2)
    TWAIT tcp.sender.dly
  END
;
.END
.PROGRAM watchdog.pc()@26/06/25 16:09 #0
;
  HERE .last.pos
  TIMER 1 = 0
;
  WHILE TRUE DO
;
    CALL check.tasks.pc
    CALL check.disp.pc
    CALL check.zone.pc
;
    HERE .current.pos
    .c1 = SWITCH(CS )
    .c2 = $action=="Paused"
    .c3 = DISTANCE(.current.pos,.last.pos)>5
    .c4 = state<>0 OR state<>100
    .c5 = TIMER(1)>wdog.tmr
;
    IF NOT .c1 OR .c2 OR .c3 OR NOT .c4 THEN
      TIMER 1 = 0
    END
;
    IF .c3 THEN
      HERE .last.pos
    END
;
    IF .c5 THEN
      IF $wdog.state<>"TRUE" THEN
        $wdog.state = "TRUE"
      END
    ELSE
      IF $wdog.state<>"FALSE" THEN
        $wdog.state = "FALSE"
      END
    END
;
;
    IF NOT SIG(s.debug.mode) THEN
      IF SWITCH(REPEAT ) AND NOT SWITCH(TEACH_LOCK ) AND NOT SWITCH(EMERGENCY ) AND NOT SWITCH(CS ) AND NOT SWITCH(ERROR ) THEN
        MC ZPOWER ON
;MC PRIME a.main
;WHILE NOT SWITCH(POWER)
;  TWAIT 0.01
;  MC CONTINUE
;END
      END
    END
;
    IF NOT SWITCH(REPEAT ) THEN
      CALL check.teach.pc
    END
    TWAIT 0.01
  END
;
.END
.PROGRAM Comment___ () ; Comments for IDE. Do not use.
	; @@@ PROJECT @@@
	; @@@ PROJECTNAME @@@
	; ALKU_RS013N_MASTER
	; @@@ HISTORY @@@
	; @@@ INSPECTION @@@
	; count.opt
	; count.ot
	; count.put
	; rs7.finish.ack
	; s.cmd.finish
	; s.force.in[1]
	; s.force.in[2]
	; detail.count
	; $action
	; s.grip.full
	; s.opt.placed
	; s.ot.placed
	; ~Log
	; @@@ CONNECTION @@@
	; KROSET R01
	; 127.0.0.1
	; 9105
	; @@@ PROGRAM @@@
	;   Group:Objects:1
	;     1:id1:F
	;     1:id2:F
	;     1:id3:F
	;     1:id4:F
	;     1:id5:F
	;     1:id6:F
	;   Group:STZ:2
	;     2:a.teach.stz:F
	;       .plb 
	;       .plt 
	;       .prt 
	;       .prb 
	;       .dx1 
	;       .dx2 
	;       .dy1 
	;       .dy2 
	;     2:stz.pick:F
	;       .$temp 
	;       .x 
	;       .y 
	;       .a 
	;       .xsh 
	;       .ysh 
	;       .zsh 
	;       .xp 
	;       .xm 
	;       .yp 
	;       .ym 
	;       .pick 
	;       .c 
	;       .#pick.in 
	;     2:a.test.stz:F
	;       .$temp 
	;       .x 
	;       .y 
	;       .a 
	;       .xsh 
	;       .ysh 
	;       .zsh 
	;       .xp 
	;       .xm 
	;       .yp 
	;       .ym 
	;       .pick 
	;       .c 
	;       .#pick.in 
	;   Group:OPT:3
	;     3:load.opt.data:F
	;       .id 
	;       .temp 
	;     3:opt.table:F
	;       .id 
	;       .$temp 
	;       .$i1 
	;       .$i2 
	;       .$i3 
	;       .$i4 
	;     3:opt.take:F
	;       .i 
	;       .j 
	;       .$temp 
	;       .opt.take.safe 
	;       .ct1 
	;       .ct2 
	;       .mid.point 
	;       .opt.put 
	;     3:a.teach.opt:F
	;       .i 
	;       .j 
	;     3:a.test.opt:F
	;       .i 
	;       .j 
	;     3:opt.return:F
	;       .i 
	;       .j 
	;       .$temp 
	;       .post.tare.in 
	;       .ct1 
	;       .ct2 
	;       .mid.point 
	;       .put.stz 
	;     3:opt.push:F
	;   Group:Gripper:4
	;     4:a.test.gripper:F
	;     4:gripper.pick:F
	;       .gripper.no 
	;       .$temp 
	;       .temp 
	;     4:gripper.put:F
	;       .gripper.no 
	;       .$temp 
	;       .temp 
	;     4:a.teach.gripper:F
	;       .temp 
	;   Group:OT:5
	;     5:a.test.ot:F
	;       .i 
	;       .j 
	;     5:a.teach.ot:F
	;       .i 
	;       .j 
	;     5:load.ot.data:F
	;       .id 
	;       .temp 
	;     5:ot.table:F
	;       .id 
	;       .$temp 
	;       .$i1 
	;       .$i2 
	;       .$i3 
	;       .$i4 
	;       .$i5 
	;       .$i6 
	;     5:ot.take:F
	;       .i 
	;       .j 
	;       .$temp 
	;       .ot.take.safe 
	;       .ct1 
	;       .ct2 
	;       .mid.point 
	;       .ot.put 
	;     5:ot.return:F
	;       .i 
	;       .j 
	;       .$temp 
	;       .post.tare.out 
	;       .ct1 
	;       .ct2 
	;       .mid.point 
	;       .put.outpal 
	;   Group:Positioner:6
	;     6:a.teach.pos:F
	;       .temp 
	;     6:pos.put:F
	;       .$temp 
	;       .temp 
	;   Group:States:7
	;     7:state0:F
	;     7:state1:F
	;       .current.pos 
	;       .stz.wait 
	;       .pos.wait 
	;       .i 
	;       .j 
	;     7:state2:F
	;       .current.pos 
	;       .stz.wait 
	;       .pos.wait 
	;       .i 
	;       .j 
	;     7:state3:F
	;       .current.pos 
	;       .stz.wait 
	;       .pos.wait 
	;     7:state4:F
	;       .current.pos 
	;       .stz.wait 
	;       .pos.wait 
	;     7:state5:F
	;       .current.pos 
	;       .stz.wait 
	;       .pos.wait 
	;       .i 
	;       .j 
	;     7:state6:F
	;       .current.pos 
	;       .stz.wait 
	;       .pos.wait 
	;       .i 
	;       .j 
	;     7:state7:F
	;     7:state8:F
	;     7:state9:F
	;       .m1 
	;       .m2 
	;       .m3 
	;     7:state100:F
	;     7:state101:F
	;     7:state102:F
	;     7:state103:F
	;     7:state104:F
	;       .m1 
	;       .m2 
	;       .m3 
	;     7:state105:F
	;     7:state106:F
	;     7:state255:F
	;   Group:Utilities:8
	;     8:ship.pos:F
	;     8:a.home:F
	;     8:a.align:F
	;     8:safe.home:F
	;       .temp 
	;       .s 
	;       .c 
	;       .dz 
	;     8:log:F
	;       .$msg 
	;       .i 
	;     8:pg.select:F
	;     8:chk.lock:F
	;   0:a.main:F
	;     .$pg.string 
	;   0:pg0:F
	;   Group:Logs:9
	;     9:log.pc2:F
	;       .$msg 
	;       .i 
	;   Group:TCPIP:10
	;     10:get.state.pc:B
	;       .$state 
	;     10:tcp.sender.pc:B
	;       .$data 
	;     10:tcp.callback.pc:B
	;       .$data 
	;       .data.length 
	;       .$temp 
	;       .i 
	;       .$sensor.name 
	;       .$sensor.state 
	;       .$x 
	;       .$y 
	;       .$a 
	;       .$spd 
	;       .speed 
	;       .$state 
	;     10:tcp.client.pc:B
	;       .tcp.retry.count 
	;       .tcp.connect.tmo 
	;       .tcp.receive.tmo 
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
	;       .ip 
	;       .connected 
	;       .tcp.error.cnt 
	;       .$tcp.request 
	;       .request.size 
	;     10:tcp.send.pc:B
	;       .$data 
	;       .data.length 
	;       .tcp.send.tmo 
	;       .status 
	;       .$temp 
	;       .i 
	;     10:tcp.log.pc:B
	;       .$msg 
	;       .i 
	;   0:autostart.pc:B
	;     .$rob.name 
	;     .cont.no 
	;     .robot.no 
	;     .$robot.str 
	;     .$cont.str 
	;   0:errstart.pc:B
	;   Group:Initialization:11
	;     11:set.io.pc:B
	;     11:set.vars.pc:B
	;       .i 
	;       .n 
	;       .$name 
	;   Group:Watchdog:12
	;     12:watchdog.pc:B
	;       .last.pos 
	;       .current.pos 
	;       .c1 
	;       .c2 
	;       .c3 
	;       .c4 
	;       .c5 
	;     12:check.tasks.pc:B
	;     12:check.disp.pc:B
	;     12:check.zone.pc:B
	;     12:check.teach.pc:B
	; @@@ TRANS @@@
	; ot.point[] OT point i, j
	; opt.point[] OPT point i, j
	; @@@ JOINTS @@@
	; #homyak Home point
	; #tool.point[] Point for pick gripper i
	; #prb Right bottom STZ point
	; #prt Right top STZ point
	; #plt Left top STZ point
	; #plb Left bottom STZ point
	; #opt.put Put OTP to STZ point
	; #pick.in Point inside STZ
	; #ot.take.safe Safe point for taking OP
	; #ot.put.safe Safe point before put OP
	; #ot.put Put OT point
	; #pos.wait Point before STZ
	; #stz.wait Point before positioner
	; #opt.put.safe Safe point before put OTP to STZ
	; #opt.take.safe Safe point for taking OTP
	; #pos.point[] Positioner point for object i
	; #push[] 
	; #push.appro[] 
	; @@@ REALS @@@
	; tcp.socket TCP socket ID
	; tcp.ena Enable TCP connect display
	; tcp.recv.ena Enable TCP receive display
	; tcp.send.ena Enable TCP send display
	; tcp.sender.dly Delay between TCP send
	; tyterm Display destination terminal
	; tcp.port TCP port
	; state State variable
	; current.gripper Current gripper in robot (0,1,2,3)
	; pg13.gripper Object data: Gripper in current program for RS013
	; hmi.gripper HMI gripper number for teach and debug
	; max.count.ot Maximum count of OT in task
	; detail.count Count of details in tares
	; max.count.opt Maximum count of OPT in task
	; count.put Putted details counter
	; count.ot Processed OT counter
	; count.opt Processed OPT counter
	; stz.a Pick point Alpha
	; hmi.obj.id HMI Object ID
	; hmi.opt.i HMI OPT col index
	; hmi.opt.j HMI OPT row index
	; hmi.ot.i HMI OT col index
	; hmi.ot.j HMI OT row index
	; stz.x Pick point X
	; stz.y Pick point Y
	; cv.x.minus[] CV X- camera correction for object i
	; cv.x.plus[] CV X+ camera correction for object i
	; cv.y.minus[] CV Y- camera correction for object i
	; cv.y.plus[] CV Y+ camera correction for object i
	; grip.180xsh[] X shift for gripper i in 180
	; grip.180ysh[] Y shift for gripper i in 180
	; grip.xsh[] X shift for gripper i
	; grip.ysh[] Y shift for gripper i
	; grip.zsh[] Z shift for gripper i
	; center.x Center of camera view X
	; hmi.g180x HMI rotated gripper X shift for gripper N
	; hmi.g180y HMI rotated gripper Y shift for gripper N
	; hmi.gx HMI gripper X shift for gripper N
	; hmi.gy HMI gripper Y shift for gripper N
	; hmi.gz HMI gripper Z shift for gripper N
	; hmi.x.minus HMI CV correction X minus for object N
	; hmi.x.plus HMI CV correction X plus for object N
	; hmi.y.minus HMI CV correction Y minus for object N
	; hmi.y.plus HMI CV correction Y plus for object N
	; keep.gripper HMI aux variable
	; keep.object HMI aux variable
	; center.y Center of camera view Y
	; object.length Object data: detail length
	; max.tare.count Object data: Max details in tare
	; object.id Object data: ID
	; opt.cell[] OPT cells in task
	; ot.cell[] OT cells in task
	; spc.tare.count Object data: Max details in tare with spacer
	; detail.spec Detail specification
	; etalon.id Etalon ID for current object
	; pg7.gripper Object data: Gripper in current program for RS007
	; layout Put layout
	; direction 
	; pg.gripper 
	; wdog.tmr 
	; @@@ STRINGS @@@
	; $tcp.ip Server PC IP address
	; $log.entry[] Log entry
	; $action Current robot action to send
	; $pg.name Program name (same as in machine)
	; $ot.data Used OT cells string
	; $opt.data Used OPT cells string
	; $wdog.state 
	; @@@ INTEGER @@@
	; @@@ SIGNALS @@@
	; release.tare !Release tare!
	; capture.tare Capture tare
	; release.grip !Release gripper!
	; capture.grip Capture gripper
	; grip.unclamp Unclamp gripper
	; grip.clamp Clamp gripper
	; di.ifp.page[] Open IFP page i
	; grip.unclamped Gripper unclamped
	; grip.clamped Gripper clamped
	; do.home Robot in home position
	; s.tcp.send.ena Display TCP send prints
	; s.tcp.recv.ena Display TCP receive prints
	; s.tcp.ena Display TCP connect prints
	; do.work[] Robot in workspace i
	; rs7.work[] RS007L in common area
	; di.hold Set hold mode
	; s.zone.blocked RS013N first in common zone
	; s.cmd.pneum.op Pneumatics opened
	; s.force.in[] Force input signal i
	; s.stock.ot.ok OT exists in stocker
	; s.stock.ot.ng OT empty in stocker
	; s.stock.opt.ok OPT exists in stocker
	; s.stock.opt.ng OT empty in stocker
	; s.ot.pos.ok OT in positioner exists
	; s.ot.pos.ng OT in positioner empty
	; s.ot.placed OT placed to postioner
	; s.opt.placed OPT placed to stz
	; s.grip.full Gripper is full
	; s.cmd.start Start command
	; s.cmd.pneum.cl Pneumatics closed
	; s.cmd.pick Pick command
	; s.pr.tch.st.ot Prime a.teach.ot
	; s.pr.tch.st.opt Prime a.teach.opt
	; s.pr.home Prime a.home
	; s.pr.tch.stz Prime a.teach.stz
	; s.pr.tch.grip Prime a.teach.gripper
	; s.pr.tch.pos Prime a.teach.pos
	; s.apply.grip Apply gripper shift data from HMI
	; s.apply.cv Apply cv coeffciients data from HMI
	; s.cmd.put Command put to positioner
	; rs13.tare.ack Acknowledge of tare change
	; rs7.tare.chg Request tare change
	; s.cmd.chg.opt Change OPT command
	; s.cmd.finish Finish program
	; rs7.finish.ack RS007L finished work
	; rs7.locked.zone RS007L Blocked positioner zone
	; rs13.finish RS013N finish process
	; rs13.detail.put RS013N put detail to positioner
	; rs7.put.ack RS007L picked detail
	; s.hmi.pneum.op Open pneumatic from HMI
	; s.hmi.pneum.cl Close pneumatic from HMI
	; s.hmi.get.cv Get coordinates from CV
	; s.cmd.pause Pause program command
	; s.cmd.resume Resume program command
	; s.cmd.stop Stop program command
	; s.hmi.res.state Reset state from HMI
	; s.hmi.res.act Reset action from hmi
	; s.debug.mode Debug mode
	; do.bat.alm Battery low alarm
	; s.pr.tst.stz Prime test stz program
	; rs7.det.picked[] Picked details count from RS007L
	; rs13.det.put[] Put details count from RS0013N
	; s.pr.tst.ot Prime OT test program
	; s.pr.tst.opt Prime OPT test program
	; rs13.lock.zone RS013N locked in positioner zone
	; s.tcp.log Add log record for tcp.log
	; rs7.etalon.stop Etalon measurement was bad, need to stop
	; do.automatic Robot in automatic mode
	; rs13.opt.chg RS013 is in change OPT
	; rs13.no.ot.stop 
	; s.cmd.n.op.stop 
	; @@@ TOOLS @@@
	; tool.pin Tool for calibration pin and tare
	; tool.pick[] Gripper 3 tool
	; tool.teach.stz 
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
tool.pin -85.070000 -205.369995 -19.860001 67.500000 70.000000 0.000000
tool.pick[3] -2.000000 0.000000 171.199997 -113.500000 180.000000 0.000000
tool.pick[2] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[1] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
ot.point[1,1] -1111.654907 -739.913818 300.010284 0.736410 89.897484 179.961014
ot.point[1,2] -1111.369141 -740.069580 199.625275 0.663807 89.977646 -179.789429
ot.point[1,3] -1111.458252 -739.790161 100.705551 0.986979 89.941795 -179.868729
ot.point[1,4] -1111.057373 -740.725403 1.262161 0.590529 89.881622 179.598358
ot.point[1,5] -1110.757080 -740.478455 -99.105347 0.565860 90.564705 179.609573
ot.point[1,6] -1110.897339 -741.133179 -198.834229 0.485536 89.542709 179.729446
ot.point[1,7] -1111.472656 -741.500732 -299.220276 0.628907 89.987381 179.986176
ot.point[1,8] -1110.711426 -741.893311 -399.577667 0.867267 89.985268 179.988525
ot.point[1,9] -1110.729980 -742.304443 -498.647186 0.918011 89.898216 179.963440
ot.point[1,10] -1110.045654 -743.064758 -598.980469 0.737526 89.895813 179.962921
ot.point[1,11] -1110.022949 -743.103455 -699.565796 0.413598 89.891380 179.920242
ot.point[1,12] -1110.116089 -743.437073 -798.870239 0.523253 89.894653 179.962967
ot.point[2,1] -1119.717163 -250.408249 298.794495 0.731798 89.896118 179.860947
ot.point[2,2] -1119.510986 -250.742920 199.229065 0.732768 89.892517 179.964493
ot.point[2,3] -1119.052246 -251.078979 98.541916 0.669038 89.896530 -179.906265
ot.point[2,4] -1118.565430 -251.846237 -0.942902 0.732930 89.896118 179.963226
ot.point[2,5] -1118.614868 -251.328354 -101.489243 0.736556 89.895119 179.923752
ot.point[2,6] -1118.485596 -251.019119 -201.438934 0.377266 89.617615 179.628723
ot.point[2,7] -1118.302612 -252.113205 -300.606140 0.485951 89.893646 179.961884
ot.point[2,8] -1117.796875 -252.930603 -400.342224 0.436053 90.006752 179.962311
ot.point[2,9] -1117.939697 -251.673553 -500.349487 0.510684 89.895012 179.962021
ot.point[2,10] -1117.700928 -253.439590 -600.488831 0.535911 89.894524 179.963211
ot.point[2,11] -1116.388428 -253.557999 -700.811523 0.418628 89.893997 179.950012
ot.point[2,12] -1117.160645 -254.437271 -800.364563 0.734386 89.892822 179.961395
ot.point[3,1] -1125.477539 237.423615 297.821838 0.737709 89.941254 179.903122
ot.point[3,2] -1125.482910 238.289276 196.551727 0.735883 89.895164 179.960815
ot.point[3,3] -1124.346802 237.944138 97.539612 0.732866 89.897110 179.961533
ot.point[3,4] -1123.657959 237.382080 -3.162827 0.733291 90.432663 179.962051
ot.point[3,5] -1124.287598 237.883133 -102.039978 0.732394 89.892296 179.962784
ot.point[3,6] -1123.658813 237.367798 -202.480652 0.373593 89.893196 179.961884
ot.point[3,7] -1123.853638 236.265610 -301.203735 0.733813 89.895332 179.960510
ot.point[3,8] -1122.936279 236.706314 -401.833557 0.738421 89.895683 179.960388
ot.point[3,9] -1122.611328 236.058990 -501.025879 0.715740 90.469109 179.954636
ot.point[3,10] -1122.256592 236.817459 -602.069824 0.360843 89.898277 179.960358
ot.point[3,11] -1121.770996 235.748108 -703.458130 0.498732 89.897102 179.959946
ot.point[3,12] -1121.316650 235.073242 -801.565063 0.614506 89.897026 179.961853
ot.point[4,1] -1133.979370 727.690918 296.780609 0.733801 89.895287 179.959793
ot.point[4,2] -1132.682129 727.293823 197.394394 0.735658 89.891945 179.957245
ot.point[4,3] -1132.569580 727.766174 97.452484 0.584195 89.892494 179.957230
ot.point[4,4] -1131.822510 726.716675 -2.797195 0.604038 89.894531 179.957718
ot.point[4,5] -1130.892700 726.926147 -101.870880 0.211270 89.891434 179.957596
ot.point[4,6] -1130.360474 726.408752 -201.634247 0.308122 89.894325 179.961105
ot.point[4,7] -1129.766846 725.911560 -301.125519 0.997188 89.897339 179.959167
ot.point[4,8] -1128.462036 726.190735 -402.914124 0.857846 90.353661 179.959656
ot.point[4,9] -1129.845459 726.129761 -502.727722 0.496983 89.895515 179.959534
ot.point[4,10] -1128.630859 725.219971 -602.626831 0.735067 89.894585 179.958817
ot.point[4,11] -1128.067383 725.600586 -702.881592 0.384235 89.891808 179.956802
ot.point[4,12] -1128.350830 724.875061 -800.114441 0.582651 89.893852 179.956451
opt.point[1,5] -629.917603 1169.801147 -1.113297 -89.581078 89.984138 179.651932
opt.point[1,4] -630.320496 1169.627686 78.074677 -89.297699 90.470970 179.650391
opt.point[1,3] -630.840332 1168.696533 158.936188 -89.601089 90.468666 179.646561
opt.point[1,2] -630.655579 1168.490723 239.020737 -89.594971 89.601250 179.646301
opt.point[1,1] -631.685608 1168.400513 319.015869 -89.601135 90.469864 179.645187
opt.point[1,6] -629.479858 1169.978516 -78.251968 -89.638512 90.503296 179.675430
opt.point[1,7] -629.059631 1171.140625 -161.026154 -89.640205 90.468040 179.282379
opt.point[1,8] -628.538269 1171.049805 -240.408813 -89.405479 90.467392 179.648270
opt.point[1,9] -629.140076 1171.364380 -321.279724 -89.394127 90.469261 179.647903
opt.point[1,10] -628.669556 1172.164062 -399.897339 -89.597221 90.466919 179.648193
opt.point[2,1] -21.808992 1175.382568 315.229797 -89.595238 90.466522 179.643005
opt.point[2,2] -22.219978 1175.921631 237.925934 -89.341194 89.483421 179.651688
opt.point[2,3] -22.710728 1175.207642 157.563995 -89.598274 90.468819 179.645767
opt.point[2,4] -21.407572 1176.899414 77.910309 -89.601936 90.467896 179.646744
opt.point[2,5] -21.638943 1176.298584 -1.211349 -90.005096 90.463722 179.333420
opt.point[2,6] -21.028332 1177.123535 -80.911247 -89.794907 90.771591 179.533264
opt.point[2,7] -20.423031 1176.523437 -160.862854 -89.602203 90.781036 179.645432
opt.point[2,8] -20.607676 1177.213257 -240.968643 -89.829315 90.983459 179.642822
opt.point[2,9] -20.043625 1176.714844 -321.063171 -89.610970 91.024788 179.644623
opt.point[2,10] -20.108852 1177.242187 -400.928223 -89.911018 90.468697 179.643768
opt.point[3,1] 586.341980 1182.977661 319.447784 -89.387474 90.412498 179.759888
opt.point[3,2] 586.599426 1183.727905 239.512939 -89.362350 90.409515 179.378067
opt.point[3,3] 586.409058 1182.944092 159.906281 -89.362816 90.406548 179.377106
opt.point[3,4] 586.531311 1182.707764 79.594635 -89.461105 90.932907 179.376953
opt.point[3,5] 587.182068 1182.476807 -2.380333 -89.789978 90.925163 179.371338
opt.point[3,6] 587.362793 1183.365234 -79.906029 -89.463066 90.502296 179.373276
opt.point[3,7] 587.794128 1182.431519 -160.216370 -89.467316 90.903534 179.372711
opt.point[3,8] 588.255859 1182.869507 -238.759796 -89.691757 90.900261 179.391769
opt.point[3,9] 588.266479 1182.886719 -320.512634 -89.766251 89.898415 179.213760
opt.point[3,10] 588.891357 1182.884766 -400.920135 -89.698425 90.473976 178.915314
stz.frame 1017.526978 -393.391937 95.348770 178.919846 0.115481 1.379133
tool.teach.stz -103.050003 -248.779999 -36.959999 67.500000 70.000000 0.000000
.END
.JOINTS
#homyak -45.000000 -30.000002 -120.000008 0.000000 -90.000000 22.500000
#tool.point[3] 152.468979 39.979961 -103.785278 0.009844 -36.182102 -40.835827
#tool.point[2] 147.377747 33.842480 -116.311241 0.012920 -29.801104 -35.746784
#tool.point[1] 140.325165 28.539387 -127.252174 0.017227 -24.169922 -28.705080
#prb 146.058258 30.649822 -79.780716 -57.429665 67.489700 -100.066101
#prt 134.807739 46.821167 -53.884495 -55.575966 53.100361 -97.663338
#plt 113.957413 23.380470 -90.331917 -29.980986 48.877491 -127.864609
#plb 123.666023 3.765710 -114.678970 -37.725555 57.652130 -122.111366
#opt.put 139.791321 18.456614 -106.269028 -15.190752 -69.163750 -20.509375
#pick.in 131.972565 20.340382 -89.749924 -0.814570 -69.824982 -17.155291
#ot.take.safe -35.996922 10.180959 -121.562561 -5.131054 -67.795944 11.253090
#ot.put.safe 35.497650 -37.572060 -132.300156 16.290791 -96.920013 77.315880
#ot.put 64.605232 55.283337 -113.476852 17.697216 -29.917833 31.399326
#pos.wait 62.065971 -11.377430 -122.238724 -0.289775 -69.805077 52.576439
#stz.wait 143.892761 5.799493 -104.503166 -0.795498 -69.457626 -29.072502
#opt.put.safe 160.053391 -1.668782 -116.894211 -19.530001 -72.850349 -38.309544
#opt.take.safe 30.699938 -18.854830 -127.388382 0.332227 -91.897202 24.509468
#pos.point[1] 83.583176 44.026722 -103.849152 -32.444386 -38.966450 -34.892979
#pos.point[4] 84.780319 50.917202 -88.309273 -26.680868 -48.481979 -40.995033
#pos.point[2] 84.642494 46.813137 -97.024872 -30.374737 -42.035755 -39.589493
#pos.point[3] 82.818977 40.690620 -110.485077 -36.123489 -37.370686 -28.853739
#pos.point[5] 84.910202 58.561409 -72.906898 -26.703018 -52.976074 -46.407791
#pos.point[6] 85.206505 54.985500 -80.083771 -24.648750 -52.014774 -46.814835
#push[1] 129.465469 12.173496 -112.137871 -12.591388 -72.061386 -10.240178
#push[2] 144.050842 29.893173 -87.567604 -16.258799 -75.406723 -25.162800
#push.appro[1] 129.473801 10.918990 -111.317017 -12.458496 -74.086304 -10.716833
#push.appro[2] 144.054016 28.953665 -86.818436 -16.144365 -77.028580 -25.650068
.END
.REALS
release.tare = 1
capture.tare = 2
release.grip = 5
capture.grip = 6
grip.unclamp = 3
grip.clamp = 4
di.ifp.page[6] = 2006
grip.unclamped = 1001
grip.clamped = 1002
di.ifp.page[1] = 2001
di.ifp.page[2] = 2002
di.ifp.page[3] = 2003
di.ifp.page[4] = 2004
di.ifp.page[8] = 2008
di.ifp.page[7] = 2007
di.ifp.page[5] = 2005
tcp.socket = 36
tcp.ena = -1
tcp.recv.ena = -1
tcp.send.ena = -1
tcp.sender.dly = 2
tyterm = 0
tcp.port = 9013
do.home = 2010
s.tcp.send.ena = 2201
s.tcp.recv.ena = 2202
s.tcp.ena = 2203
do.work[2] = 2212
do.work[3] = 2213
do.work[4] = 2214
do.work[5] = 2215
do.work[6] = 2216
do.work[7] = 2217
do.work[8] = 2218
do.work[1] = 17
rs7.work[1] = 1017
di.hold = 2009
s.zone.blocked = 2209
state = 100
s.cmd.pneum.op = 2235
s.force.in[1] = 2221
s.force.in[2] = 2222
current.gripper = 1
pg13.gripper = 1
hmi.gripper = 1
max.count.ot = 3
detail.count = 308
max.count.opt = 2
count.put = 0
count.ot = 2
count.opt = 2
s.stock.ot.ok = 2223
s.stock.ot.ng = 2224
s.stock.opt.ok = 2225
s.stock.opt.ng = 2226
s.ot.pos.ok = 2227
s.ot.pos.ng = 2228
s.ot.placed = 2229
s.opt.placed = 2230
s.grip.full = 2231
s.cmd.start = 2232
s.cmd.pneum.cl = 2236
s.cmd.pick = 2233
s.pr.tch.st.ot = 2251
s.pr.tch.st.opt = 2252
s.pr.home = 2250
s.pr.tch.stz = 2253
s.pr.tch.grip = 2254
s.pr.tch.pos = 2255
s.apply.grip = 2256
s.apply.cv = 2257
s.cmd.put = 2234
stz.a = 180
hmi.obj.id = 2
hmi.opt.i = 3
hmi.opt.j = 1
hmi.ot.i = 4
hmi.ot.j = 12
stz.x = 57.4195
stz.y = 36.5653
cv.x.minus[1] = 0.02
cv.x.minus[2] = 0.02
cv.x.minus[3] = 0.01
cv.x.minus[4] = 0.02
cv.x.minus[5] = 0.02
cv.x.minus[6] = 0.015
cv.x.minus[7] = 0
cv.x.minus[8] = 0
cv.x.minus[9] = 0
cv.x.minus[10] = 0
cv.x.minus[11] = 0
cv.x.minus[12] = 0
cv.x.minus[13] = 0
cv.x.minus[14] = 0
cv.x.minus[15] = 0
cv.x.minus[16] = 0
cv.x.minus[17] = 0
cv.x.minus[18] = 0
cv.x.minus[19] = 0
cv.x.minus[20] = 0
cv.x.minus[21] = 0
cv.x.minus[22] = 0
cv.x.minus[23] = 0
cv.x.minus[24] = 0
cv.x.minus[25] = 0
cv.x.minus[26] = 0
cv.x.minus[27] = 0
cv.x.minus[28] = 0
cv.x.minus[29] = 0
cv.x.minus[30] = 0
cv.x.minus[31] = 0
cv.x.minus[32] = 0
cv.x.plus[1] = 0.005
cv.x.plus[2] = 0.01
cv.x.plus[3] = 0.01
cv.x.plus[4] = 0.001
cv.x.plus[5] = 0
cv.x.plus[6] = 0.01
cv.x.plus[7] = 0
cv.x.plus[8] = 0
cv.x.plus[9] = 0
cv.x.plus[10] = 0
cv.x.plus[11] = 0
cv.x.plus[12] = 0
cv.x.plus[13] = 0
cv.x.plus[14] = 0
cv.x.plus[15] = 0
cv.x.plus[16] = 0
cv.x.plus[17] = 0
cv.x.plus[18] = 0
cv.x.plus[19] = 0
cv.x.plus[20] = 0
cv.x.plus[21] = 0
cv.x.plus[22] = 0
cv.x.plus[23] = 0
cv.x.plus[24] = 0
cv.x.plus[25] = 0
cv.x.plus[26] = 0
cv.x.plus[27] = 0
cv.x.plus[28] = 0
cv.x.plus[29] = 0
cv.x.plus[30] = 0
cv.x.plus[31] = 0
cv.x.plus[32] = 0
cv.y.minus[1] = 0.005
cv.y.minus[2] = 0.001
cv.y.minus[3] = 0.007
cv.y.minus[4] = 0.01
cv.y.minus[5] = 0.008
cv.y.minus[6] = 0
cv.y.minus[7] = 0
cv.y.minus[8] = 0
cv.y.minus[9] = 0
cv.y.minus[10] = 0
cv.y.minus[11] = 0
cv.y.minus[12] = 0
cv.y.minus[13] = 0
cv.y.minus[14] = 0
cv.y.minus[15] = 0
cv.y.minus[16] = 0
cv.y.minus[17] = 0
cv.y.minus[18] = 0
cv.y.minus[19] = 0
cv.y.minus[20] = 0
cv.y.minus[21] = 0
cv.y.minus[22] = 0
cv.y.minus[23] = 0
cv.y.minus[24] = 0
cv.y.minus[25] = 0
cv.y.minus[26] = 0
cv.y.minus[27] = 0
cv.y.minus[28] = 0
cv.y.minus[29] = 0
cv.y.minus[30] = 0
cv.y.minus[31] = 0
cv.y.minus[32] = 0
cv.y.plus[1] = 0.01
cv.y.plus[2] = 0.01
cv.y.plus[3] = 0.005
cv.y.plus[4] = 0.012
cv.y.plus[5] = 0.01
cv.y.plus[6] = 0.01
cv.y.plus[7] = 0
cv.y.plus[8] = 0
cv.y.plus[9] = 0
cv.y.plus[10] = 0
cv.y.plus[11] = 0
cv.y.plus[12] = 0
cv.y.plus[13] = 0
cv.y.plus[14] = 0
cv.y.plus[15] = 0
cv.y.plus[16] = 0
cv.y.plus[17] = 0
cv.y.plus[18] = 0
cv.y.plus[19] = 0
cv.y.plus[20] = 0
cv.y.plus[21] = 0
cv.y.plus[22] = 0
cv.y.plus[23] = 0
cv.y.plus[24] = 0
cv.y.plus[25] = 0
cv.y.plus[26] = 0
cv.y.plus[27] = 0
cv.y.plus[28] = 0
cv.y.plus[29] = 0
cv.y.plus[30] = 0
cv.y.plus[31] = 0
cv.y.plus[32] = 0
grip.180xsh[1] = -6
grip.180xsh[2] = -5
grip.180xsh[3] = 0
grip.180ysh[1] = 4
grip.180ysh[2] = 4
grip.180ysh[3] = 0
grip.xsh[1] = 2.5
grip.xsh[2] = 1.5
grip.xsh[3] = -3.5
grip.ysh[1] = -2.5
grip.ysh[2] = -2
grip.ysh[3] = -1
grip.zsh[1] = 1
grip.zsh[2] = 1.5
grip.zsh[3] = 7
center.x = 147.8
hmi.g180x = -6
hmi.g180y = 4
hmi.gx = 2.5
hmi.gy = -2.5
hmi.gz = 1
hmi.x.minus = 0.02
hmi.x.plus = 0.01
rs13.tare.ack = 18
hmi.y.minus = 0.001
hmi.y.plus = 0.01
keep.gripper = 1
keep.object = 2
rs7.tare.chg = 1018
center.y = 245.4
s.cmd.chg.opt = 2237
s.cmd.finish = 2238
rs7.finish.ack = 1020
rs7.locked.zone = 1019
rs13.finish = 20
rs13.detail.put = 21
rs7.put.ack = 1021
s.hmi.pneum.op = 2258
s.hmi.pneum.cl = 2259
s.hmi.get.cv = 2260
object.length = 40
max.tare.count = 105
object.id = 2
opt.cell[1,1] = 3
opt.cell[1,2] = 1
opt.cell[2,1] = 3
opt.cell[2,2] = 2
opt.cell[3,1] = 1
opt.cell[3,2] = 3
opt.cell[4,1] = 1
opt.cell[4,2] = 4
ot.cell[1,1] = 4
ot.cell[1,2] = 1
ot.cell[2,1] = 4
ot.cell[2,2] = 2
ot.cell[3,1] = 4
ot.cell[3,2] = 3
ot.cell[4,1] = 3
ot.cell[4,2] = 4
ot.cell[5,1] = 3
ot.cell[5,2] = 5
ot.cell[6,1] = 3
ot.cell[6,2] = 6
spc.tare.count = 50
s.cmd.pause = 2239
s.cmd.resume = 2240
s.cmd.stop = 2241
s.hmi.res.state = 2261
s.hmi.res.act = 2262
s.debug.mode = 2300
do.bat.alm = 2011
s.pr.tst.stz = 2248
rs7.det.picked[0] = 1040
rs7.det.picked[1] = 1041
rs7.det.picked[2] = 1042
rs7.det.picked[3] = 1043
rs7.det.picked[4] = 1044
rs7.det.picked[5] = 1045
rs7.det.picked[6] = 1046
rs7.det.picked[7] = 1047
rs13.det.put[0] = 40
rs13.det.put[1] = 41
rs13.det.put[2] = 42
rs13.det.put[3] = 43
rs13.det.put[4] = 44
rs13.det.put[5] = 45
rs13.det.put[6] = 46
rs13.det.put[7] = 47
detail.spec = 1
cv.x.minus[33] = 0
cv.x.minus[34] = 0
cv.x.minus[35] = 0
cv.x.minus[36] = 0
cv.x.minus[37] = 0
cv.x.minus[38] = 0
cv.x.minus[39] = 0
cv.x.minus[40] = 0
cv.x.minus[41] = 0
cv.x.minus[42] = 0
cv.x.minus[43] = 0
cv.x.minus[44] = 0
cv.x.minus[45] = 0
cv.x.minus[46] = 0
cv.x.minus[47] = 0
cv.x.minus[48] = 0
cv.x.minus[49] = 0
cv.x.minus[50] = 0
cv.x.minus[51] = 0
cv.x.minus[52] = 0
cv.x.minus[53] = 0
cv.x.minus[54] = 0
cv.x.minus[55] = 0
cv.x.minus[56] = 0
cv.x.minus[57] = 0
cv.x.minus[58] = 0
cv.x.minus[59] = 0
cv.x.minus[60] = 0
cv.x.minus[61] = 0
cv.x.minus[62] = 0
cv.x.minus[63] = 0
cv.x.minus[64] = 0
cv.x.plus[33] = 0
cv.x.plus[34] = 0
cv.x.plus[35] = 0
cv.x.plus[36] = 0
cv.x.plus[37] = 0
cv.x.plus[38] = 0
cv.x.plus[39] = 0
cv.x.plus[40] = 0
cv.x.plus[41] = 0
cv.x.plus[42] = 0
cv.x.plus[43] = 0
cv.x.plus[44] = 0
cv.x.plus[45] = 0
cv.x.plus[46] = 0
cv.x.plus[47] = 0
cv.x.plus[48] = 0
cv.x.plus[49] = 0
cv.x.plus[50] = 0
cv.x.plus[51] = 0
cv.x.plus[52] = 0
cv.x.plus[53] = 0
cv.x.plus[54] = 0
cv.x.plus[55] = 0
cv.x.plus[56] = 0
cv.x.plus[57] = 0
cv.x.plus[58] = 0
cv.x.plus[59] = 0
cv.x.plus[60] = 0
cv.x.plus[61] = 0
cv.x.plus[62] = 0
cv.x.plus[63] = 0
cv.x.plus[64] = 0
cv.y.minus[33] = 0
cv.y.minus[34] = 0
cv.y.minus[35] = 0
cv.y.minus[36] = 0
cv.y.minus[37] = 0
cv.y.minus[38] = 0
cv.y.minus[39] = 0
cv.y.minus[40] = 0
cv.y.minus[41] = 0
cv.y.minus[42] = 0
cv.y.minus[43] = 0
cv.y.minus[44] = 0
cv.y.minus[45] = 0
cv.y.minus[46] = 0
cv.y.minus[47] = 0
cv.y.minus[48] = 0
cv.y.minus[49] = 0
cv.y.minus[50] = 0
cv.y.minus[51] = 0
cv.y.minus[52] = 0
cv.y.minus[53] = 0
cv.y.minus[54] = 0
cv.y.minus[55] = 0
cv.y.minus[56] = 0
cv.y.minus[57] = 0
cv.y.minus[58] = 0
cv.y.minus[59] = 0
cv.y.minus[60] = 0
cv.y.minus[61] = 0
cv.y.minus[62] = 0
cv.y.minus[63] = 0
cv.y.minus[64] = 0
cv.y.plus[33] = 0
cv.y.plus[34] = 0
cv.y.plus[35] = 0
cv.y.plus[36] = 0
cv.y.plus[37] = 0
cv.y.plus[38] = 0
cv.y.plus[39] = 0
cv.y.plus[40] = 0
cv.y.plus[41] = 0
cv.y.plus[42] = 0
cv.y.plus[43] = 0
cv.y.plus[44] = 0
cv.y.plus[45] = 0
cv.y.plus[46] = 0
cv.y.plus[47] = 0
cv.y.plus[48] = 0
cv.y.plus[49] = 0
cv.y.plus[50] = 0
cv.y.plus[51] = 0
cv.y.plus[52] = 0
cv.y.plus[53] = 0
cv.y.plus[54] = 0
cv.y.plus[55] = 0
cv.y.plus[56] = 0
cv.y.plus[57] = 0
cv.y.plus[58] = 0
cv.y.plus[59] = 0
cv.y.plus[60] = 0
cv.y.plus[61] = 0
cv.y.plus[62] = 0
cv.y.plus[63] = 0
cv.y.plus[64] = 0
s.pr.tst.ot = 2249
s.pr.tst.opt = 2247
rs13.lock.zone = 22
etalon.id = 2
s.tcp.log = 2204
rs7.etalon.stop = 1033
do.automatic = 2012
pg7.gripper = 1
layout = 0
rs13.opt.chg = 33
direction = 1
pg.gripper = 2
rs13.no.ot.stop = 34
s.cmd.n.op.stop = 2242
wdog.tmr = 180
rs13.det.put[15] = 55
rs13.det.put[14] = 54
rs13.det.put[13] = 53
rs13.det.put[12] = 52
rs13.det.put[11] = 51
rs13.det.put[10] = 50
rs13.det.put[9] = 49
rs13.det.put[8] = 48
rs7.det.picked[8] = 1048
rs7.det.picked[9] = 1049
rs7.det.picked[10] = 1050
rs7.det.picked[11] = 1051
rs7.det.picked[12] = 1052
rs7.det.picked[13] = 1053
rs7.det.picked[14] = 1054
rs7.det.picked[15] = 1055
.END
.STRINGS
$tcp.ip = "192.168.7.100"
$log.entry[0] = "03:12:19 State 3: Pick from STZ"
$log.entry[1] = "03:12:19 Pick detail from stz (75.28773, 458.19403, 180)"
$log.entry[2] = "03:12:20 Wait for unclamp gripper"
$log.entry[3] = "03:12:24 State 101: Calculating next step"
$log.entry[4] = "03:12:30 State 4: Put detail to positioner"
$log.entry[5] = "03:12:30 Put detail to positioner (ID: 1)"
$log.entry[6] = "03:12:30 Check if positioner is occupied"
$log.entry[7] = "03:12:32 Detail counter: 193"
$log.entry[8] = "03:12:33 State 101: Calculating next step"
$log.entry[9] = "03:12:34 State 3: Pick from STZ"
$log.entry[10] = "03:12:34 Pick detail from stz (245.59708, 312.51816, 180)"
$log.entry[11] = "03:12:36 Wait for unclamp gripper"
$log.entry[12] = "03:12:40 State 101: Calculating next step"
$log.entry[13] = "03:12:45 State 4: Put detail to positioner"
$log.entry[14] = "03:12:45 Put detail to positioner (ID: 1)"
$log.entry[15] = "03:12:45 Check if positioner is occupied"
$log.entry[16] = "03:12:48 Detail counter: 194"
$log.entry[17] = "03:12:48 State 101: Calculating next step"
$log.entry[18] = "03:12:49 State 3: Pick from STZ"
$log.entry[19] = "03:12:49 Pick detail from stz (185.6057, 220.79065, 180)"
$log.entry[20] = "03:12:50 Wait for unclamp gripper"
$log.entry[21] = "03:12:54 State 101: Calculating next step"
$log.entry[22] = "03:13:00 State 4: Put detail to positioner"
$log.entry[23] = "03:13:00 Put detail to positioner (ID: 1)"
$log.entry[24] = "03:13:01 Check if positioner is occupied"
$log.entry[25] = "03:13:03 Detail counter: 195"
$log.entry[26] = "03:13:04 State 101: Calculating next step"
$log.entry[27] = "03:13:05 State 3: Pick from STZ"
$log.entry[28] = "03:13:05 Pick detail from stz (216.48958, 128.97754, 180)"
$log.entry[29] = "03:13:07 Wait for unclamp gripper"
$log.entry[30] = "03:13:10 State 101: Calculating next step"
$log.entry[31] = "03:13:17 State 4: Put detail to positioner"
$log.entry[32] = "03:13:17 Put detail to positioner (ID: 1)"
$log.entry[33] = "03:13:17 Check if positioner is occupied"
$log.entry[34] = "03:13:20 Detail counter: 196"
$log.entry[35] = "03:13:20 State 101: Calculating next step"
$log.entry[36] = "03:13:21 State 3: Pick from STZ"
$log.entry[37] = "03:13:21 Pick detail from stz (75.77645, 421.7746, 180)"
$log.entry[38] = "03:13:23 Wait for unclamp gripper"
$log.entry[39] = "03:13:27 State 101: Calculating next step"
$log.entry[40] = "03:13:32 State 4: Put detail to positioner"
$log.entry[41] = "03:13:32 Put detail to positioner (ID: 1)"
$log.entry[42] = "03:13:32 Check if positioner is occupied"
$log.entry[43] = "03:13:35 Detail counter: 197"
$log.entry[44] = "03:13:35 State 101: Calculating next step"
$log.entry[45] = "03:13:36 State 3: Pick from STZ"
$log.entry[46] = "03:13:36 Pick detail from stz (191.31532, 37.49669, 180)"
$log.entry[47] = "03:13:37 Wait for unclamp gripper"
$log.entry[48] = "03:13:41 State 101: Calculating next step"
$log.entry[49] = "03:13:47 State 4: Put detail to positioner"
$log.entry[50] = "03:13:47 Put detail to positioner (ID: 1)"
$log.entry[51] = "03:13:48 Check if positioner is occupied"
$log.entry[52] = "03:13:50 Detail counter: 198"
$log.entry[53] = "03:13:51 State 101: Calculating next step"
$log.entry[54] = "03:13:52 State 3: Pick from STZ"
$log.entry[55] = "03:13:52 Pick detail from stz (216.1239, 147.4617, 180)"
$log.entry[56] = "03:13:53 Wait for unclamp gripper"
$log.entry[57] = "03:13:57 State 101: Calculating next step"
$log.entry[58] = "03:14:02 State 4: Put detail to positioner"
$log.entry[59] = "03:14:02 Put detail to positioner (ID: 1)"
$log.entry[60] = "03:14:03 Check if positioner is occupied"
$log.entry[61] = "03:14:05 Detail counter: 199"
$log.entry[62] = "03:14:06 State 101: Calculating next step"
$log.entry[63] = "03:14:06 State 3: Pick from STZ"
$log.entry[64] = "03:14:06 Pick detail from stz (246.29794, 458.6601, 180)"
$log.entry[65] = "03:14:08 Wait for unclamp gripper"
$log.entry[66] = "03:14:12 State 101: Calculating next step"
$log.entry[67] = "03:14:17 State 4: Put detail to positioner"
$log.entry[68] = "03:14:17 Put detail to positioner (ID: 1)"
$log.entry[69] = "03:14:17 Check if positioner is occupied"
$log.entry[70] = "03:14:20 Detail counter: 200"
$log.entry[71] = "03:14:21 State 101: Calculating next step"
$log.entry[72] = "03:14:21 State 3: Pick from STZ"
$log.entry[73] = "03:14:21 Pick detail from stz (185.41812, 312.19858, 180)"
$log.entry[74] = "03:14:22 Wait for unclamp gripper"
$log.entry[75] = "03:14:26 State 101: Calculating next step"
$log.entry[76] = "03:14:32 State 4: Put detail to positioner"
$log.entry[77] = "03:14:32 Put detail to positioner (ID: 1)"
$log.entry[78] = "03:14:33 Check if positioner is occupied"
$log.entry[79] = "03:14:35 Detail counter: 201"
$log.entry[80] = "03:14:36 State 101: Calculating next step"
$log.entry[81] = "03:14:36 State 6: Return OPT"
$log.entry[82] = "03:14:36 Return OPT with (i: 2, j: 6)"
$log.entry[83] = "03:14:37 Wait pneumatics open"
$log.entry[84] = "03:14:59 State 9: Decide if pick next OPT"
$log.entry[85] = "03:15:00 State 103: Calculating ending sequence step"
$log.entry[86] = "03:15:01 Wait for RS007L finish task"
$log.entry[87] = "03:15:03 State 5: Return OT"
$log.entry[88] = "03:15:03 Return OT with (i: 1, j: 5)"
$log.entry[89] = "03:15:23 State 8: Decide if pick next OT"
$log.entry[90] = "03:15:26 State 103: Calculating ending sequence step"
$log.entry[91] = "03:15:26 Program complete"
$log.entry[92] = "03:15:26 State 255: Program complete"
$log.entry[93] = "03:15:27 State 0: Program reset. Initialization of parameters"
$log.entry[94] = "03:15:27 State 100: Waiting for start"
$log.entry[95] = "03:15:30 Received STOP command"
$log.entry[96] = "13:58:37 Main program executed"
$log.entry[97] = "13:58:37 Robot already in home position"
$log.entry[98] = "13:58:37 State 0: Program reset. Initialization of parameters"
$log.entry[99] = "13:58:38 State 100: Waiting for start"
$log.entry[100] = "13:58:46 START with Name:440.00.111- 2 Count: 9 OT:1 OPT:1"
$log.entry[101] = "13:58:46 Load OPT IDs from string: 1"
$log.entry[102] = "13:58:46 Processing OPT with ID: 1"
$log.entry[103] = "13:58:46 OPT indicies: (i:3, j:1), (i:3, j:2)"
$log.entry[104] = "13:58:46 Processing OT with ID: 1"
$log.entry[105] = "13:58:46 OT indicies: (i:4, j:1), (i:4, j:2), (i:4, j:2)"
$log.entry[106] = "13:58:46 State 106: Check program"
$log.entry[107] = "13:58:46 Selected program: 440.00.111"
$log.entry[108] = "13:58:47 State 7: Check if gripper change is required"
$log.entry[109] = "13:58:47 Selected wrong gripper, perform change"
$log.entry[110] = "13:58:48 Put gripper 2"
$log.entry[111] = "13:58:51 Gripper 2 put"
$log.entry[112] = "13:58:52 Pick gripper 1"
$log.entry[113] = "13:58:54 Gripper 1 picked"
$log.entry[114] = "13:58:57 State 1: Pick OT"
$log.entry[115] = "13:58:57 Take OT from (i: 4, j: 1)"
$log.entry[116] = "13:59:03 Wait OT sensor state"
$log.entry[117] = "13:59:07 Take OT from (i: 4, j: 1)"
$log.entry[118] = "13:59:07 OT exists, continue"
$log.entry[119] = "13:59:16 State 101: Calculating next step"
$log.entry[120] = "13:59:17 State 2: Pick OPT"
$log.entry[121] = "13:59:17 Take OPT from (i: 3, j: 1)"
$log.entry[122] = "13:59:22 Wait OPT sensor state"
$log.entry[123] = "13:59:27 Take OPT from (i: 3, j: 1)"
$log.entry[124] = "13:59:27 OPT exists, continue"
$log.entry[125] = "13:59:35 Wait pneumatics close"
$log.entry[126] = "13:59:43 Take OPT from (i: 3, j: 1)"
$log.entry[127] = "13:59:55 State 101: Calculating next step"
$action = " "
$pg.name = "440.00.111"
$ot.data = "1"
$opt.data = "1"
$wdog.state = "FALSE"
.END
