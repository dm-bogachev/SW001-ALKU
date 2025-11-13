.AUXDATA
N_OX1    "release.tare"
N_OX2    "capture.tare"
N_OX3    "grip.unclamp"
N_OX4    "grip.clamp"
N_OX5    "release.grip"
N_OX6    "capture.grip"
N_OX17    "do.home1"
N_OX18    "do.work[1]"
N_OX19    "rs13.det.put"
N_OX20    "rs13.tare.ack"
N_WX1    "grip.unclamped"
N_WX2    "grip.clamped"
N_WX17    "rs7.home1"
N_WX18    "rs7.work[1]"
N_WX19    "rs7.working"
N_WX20    "rs7.tare.chg"
N_WX22    "rs07.put.ack"
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
N_INT15    "s.close.pneumo"
N_INT16    "s.open.pneumo"
N_INT17    "s.in1.disable"
N_INT18    "s.in2.disable"
N_INT19    "s.sensor.iss"
N_INT20    "s.sensor.oss"
N_INT21    "s.sensor.ot"
N_INT22    "s.pneumo.open"
N_INT23    "s.pneumo.close"
N_INT24    "s.debug"
N_INT102    "do.work[2]"
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
42,4,1,"OFF     ON","","","FORCE IN 1",10,4,4,0,2017,0
43,4,1,"OFF     ON","","","FORCE IN 2",10,4,4,0,2018,0
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
90,2,"","   CLOSE","PNEUMATICS","",10,4,15,2015,0
91,8,"hmi.st.out.i","OUTSTOCKER","SELECT COL",10,15,4,2,0
92,8,"hmi.st.out.j","OUTSTOCKER","SELECT ROW",10,15,4,2,0
95,8,"hmi.t.pos","TOOL CHANG"," POSITION",10,15,2,1,0
97,2,"","   OPEN","PNEUMATICS","",10,4,15,2016,0
98,10,"","","","",10,4,15,3,"$action="waitforpick"",0
102,8,"hmi.obj.id","  OBJECT","    ID",10,15,2,1,0
104,4,1,"OFF     ON","","","  DEBUG ",10,4,4,0,2024,0
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
.PROGRAM a.home ()
  JMOVE #homyak
.END
.PROGRAM a.align ()
  ALIGN
.END
.PROGRAM a.test ()
  ;
  SIGNAL -rs13.det.put
  JMOVE #homyak
  CALL stock.in.take (1, 1)
  JMOVE #wait.pick
  CALL gripper.pick (1, 1)
  JMOVE #wait.pick
  FOR .i = 1 TO 50
    CALL stz.pick
    CALL stz.put(4)
  END
  LMOVE #wait.pick
  CALL gripper.put (1, 1)
  CALL stock.in.back (1, 1)
  ;
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
.PROGRAM safe.home ()
  ; IMPLEMENT SAFE RETURN TO HOME POSITION
  CALL log("Moving to home position. State: MoveToHome")
  $action = "MoveToHome"
  SPEED 250 MM/S ALWAYS 
  ACCURACY 10 ALWAYS
  JMOVE #homyak
.END
.PROGRAM a.main ()
  ;
  CALL safe.home
  ;
  SPEED 100 ALWAYS
  ACCURACY 100 ALWAYS
  ;
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
      ANY :
        BREAK
    END
  END
  ;
.END
.PROGRAM pg.start ()
  $command = ""
  ;
  pick.count = 0
  ;
  CALL process.data (.state)
  IF NOT .state THEN
    CALL log ("Wrong program name. State: WrongProgramName")
    $action = "WrongProgramName"
    TWAIT 5
    RETURN
  END
  ; Change gripper if required
  IF current.gripper <> gripper.type THEN
    CALL log ("Required gripper change")
    JMOVE #post.tare.in
    JMOVE #wait.pick
    IF current.gripper <> 0 THEN
      CALL gripper.put (current.gripper, current.gripper)
    END
    CALL gripper.pick (gripper.type, gripper.type)
    current.gripper = gripper.type
    JMOVE #post.tare.in
    JMOVE #homyak
  END
  current.intare = 1
  current.outtare = 1
  tare.counter = 0
  full.counter = 0
  ; First tare pick
  CALL stock.out.take (outtare.i[1], outtare.j[1])
  JMOVE #homyak
  CALL stock.in.take (intare.i[1], intare.j[1])
  ;JMOVE #homyak
  JMOVE #wait.pick
  ;
  .keep.pick = TRUE
  $action = "WaitForPick"
  CALL log ("Wait for new pick. State: WaitForPick")
  WHILE .keep.pick DO
    ;
    IF SIG (rs7.tare.chg) THEN
      CALL log ("OutPalletChange requested")
      JMOVE #post.tare.in
      JMOVE #homyak
      CALL stock.out.back (outtare.i[current.outtare], outtare.j[current.outtare])
      current.outtare = current.outtare + 1
      CALL stock.out.take (outtare.i[current.outtare], outtare.j[current.outtare])
      ;JMOVE #homep1
      PULSE rs13.tare.ack, 10
      JMOVE #post.tare.in ;!!
      JMOVE #wait.pick
      $action = "WaitForPick"
      CALL log ("Wait for new pick. State: WaitForPick")
    END
    ;
    IF $cycle.command == "PICK" AND NOT SIG (rs7.tare.chg) THEN
      $cycle.command = ""
      JMOVE #wait.pick
      CALL stz.pick
      SWAIT -rs7.working, -rs7.work[1]
      CALL stz.put (object.id)
      tare.counter = tare.counter + 1
      full.counter = full.counter + 1
      $action = "WaitForPick"
      CALL log ("Wait for new pick. State: WaitForPick")
    END
    ;
    IF $cycle.command == "NOPICK" OR full.counter == max.tare.count THEN
      $cycle.command = ""
      IF current.intare <> intare.count THEN
        CALL stock.in.back (intare.i[current.intare], intare.j[current.intare])
        JMOVE #homyak
        current.intare = current.intare + 1
        CALL stock.in.take (intare.i[current.intare], intare.j[current.intare])
      ELSE
        .keep.pick = FALSE
        SIGNAL rs13.finish
        SWAIT rs07.fin.ack
      END
      $action = "WaitForPick"
      CALL log ("Wait for new pick. State: WaitForPick")
    END
  END
  ; Last tare put
  JMOVE #wait.pick
  CALL stock.in.back (intare.i[outtare.count], intare.j[outtare.count])
  JMOVE #homyak
  CALL stock.out.back (outtare.i[intare.count], outtare.j[intare.count])
  ;
  JMOVE #homyak
  
.END
.PROGRAM process.data (.state)
  ;
  intare.count = 0
  outtare.count = 0
  ;
  .break = FALSE
  WHILE NOT .break DO
    intare.count = intare.count + 1
    IF INSTR ($intare.ids, ",")
      .id = VAL ($DECODE ($intare.ids, ",", 0))
      CALL s.in.table (.id)
    ELSE
      .id = VAL ($intare.ids)
      CALL s.in.table (.id)
      .break = TRUE
    END
  END
  ;
  .break = FALSE
  WHILE NOT .break DO
    outtare.count = outtare.count + 1
    IF INSTR ($outtare.ids, ",")
      .id =  VAL ($DECODE ($outtare.ids, ",", 0))
      CALL s.out.table (.id)
      .$temp = $DECODE ($outtare.ids, ",", 1)
    ELSE
      .id = VAL ($outtare.ids)
      CALL s.out.table (.id)  
      .break = TRUE
    END
  END
  ;
  ;
  CALL pg.select(.state)
  RETURN
ANY:
  .state = FALSE
  RETURN
  
.END
.PROGRAM s.in.table (.no)
  .$temp = "Processing in" + $ENCODE (.no) + " cell"
  CALL log (.$temp)
  CASE .no OF
    VALUE 1:
      intare.i[intare.count] = 3;
      intare.j[intare.count] = 1;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 3;
      intare.j[intare.count] = 2;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count- 1]) + " Col:"+ $ENCODE (intare.i[intare.count- 1])
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 2:
      intare.i[intare.count] = 2;
      intare.j[intare.count] = 1;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 2;
      intare.j[intare.count] = 2;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 3:
      intare.i[intare.count] = 1;
      intare.j[intare.count] = 1;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 1;
      intare.j[intare.count] = 2;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 4:
      intare.i[intare.count] = 3;
      intare.j[intare.count] = 3;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 3;
      intare.j[intare.count] = 4;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 5:
      intare.i[intare.count] = 2;
      intare.j[intare.count] = 3;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 2;
      intare.j[intare.count] = 4;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 6:
      intare.i[intare.count] = 1;
      intare.j[intare.count] = 3;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 1;
      intare.j[intare.count] = 4;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 7:
      intare.i[intare.count] = 3;
      intare.j[intare.count] = 5;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 3;
      intare.j[intare.count] = 6;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 8:
      intare.i[intare.count] = 2;
      intare.j[intare.count] = 5;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 2;
      intare.j[intare.count] = 6;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 9:
      intare.i[intare.count] = 1;
      intare.j[intare.count] = 5;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 1;
      intare.j[intare.count] = 6;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 10:
      intare.i[intare.count] = 3;
      intare.j[intare.count] = 7;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 3;
      intare.j[intare.count] = 8;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 11:
      intare.i[intare.count] = 2;
      intare.j[intare.count] = 7;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 2;
      intare.j[intare.count] = 8;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 12:
      intare.i[intare.count] = 1;
      intare.j[intare.count] = 7;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 1;
      intare.j[intare.count] = 8;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 13:
      intare.i[intare.count] = 3;
      intare.j[intare.count] = 9;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 3;
      intare.j[intare.count] = 10;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 14:
      intare.i[intare.count] = 2;
      intare.j[intare.count] = 9;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 2;
      intare.j[intare.count] = 10;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
      ;
    VALUE 15:
      intare.i[intare.count] = 1;
      intare.j[intare.count] = 9;
      intare.count = intare.count + 1;
      intare.i[intare.count] = 1;
      intare.j[intare.count] = 10;
      .$temp = "Row:" + $ENCODE (intare.j[intare.count] - 1) + " Col:"+ $ENCODE (intare.i[intare.count] - 1)
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (intare.j[intare.count]) + " Col:"+ $ENCODE (intare.i[intare.count])
      CALL log (.$temp)
  END
.END
.PROGRAM s.out.table (.no)
  .$temp = "Processing out" + $ENCODE (.no) + " cell"
  CALL log (.$temp)
  CASE .no OF
    VALUE 1:
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 1;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 2;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 3;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 2:
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 1;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 2;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 3;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 3:
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 1;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 2;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 3;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 4:
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 1;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 2;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 3;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 5:
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 4;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 5;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 6;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 6:
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 4;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 5;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 6;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 7:
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 4;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 5;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 6;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 8:
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 4;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 5;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 6;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 9:
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 7;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 8;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 9;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 10:
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 7;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 8;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 9;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 11:
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 7;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 8;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 9;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 12:
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 7;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 8;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 9;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 13:
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 10;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 11;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 4;
      outtare.j[outtare.count] = 12;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 14:
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 10;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 11;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 3;
      outtare.j[outtare.count] = 12;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 15:
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 10;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 11;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 2;
      outtare.j[outtare.count] = 12;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
    VALUE 16:
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 10;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 11;
      outtare.count = outtare.count + 1;
      outtare.i[outtare.count] = 1;
      outtare.j[outtare.count] = 12;
      ;
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 2]) + " Col:"+ $ENCODE (outtare.i[outtare.count- 2] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count - 1] ) + " Col:"+ $ENCODE (outtare.i[outtare.count- 1] )
      CALL log (.$temp)
      .$temp = "Row:" + $ENCODE (outtare.j[outtare.count]) + " Col:"+ $ENCODE (outtare.i[outtare.count])
      CALL log (.$temp)
      ;
  END
.END
.PROGRAM s.in.table_old (.no,.i,.j)
  .j = INT((.no-1)/3) + 1
  .i = INT((.no-1) MOD 3) + 1
.END
.PROGRAM s.out.table_old (.no,.i,.j)
  .j = INT((.no-1)/4) + 1
  .i = INT((.no-1) MOD 4) + 1
.END
.PROGRAM pg.select (.state)
  SCASE $detail.type OF
    SVALUE "312.229.002_1":
      CALL id4
      .state = TRUE
      RETURN
    SVALUE "STRING":
      CALL id4
      .state = TRUE
      RETURN
  END
.END
.PROGRAM id4 () ; 312.229.002_1
    ; Object ID
    object.id = 4
    ; Working gripper
    gripper.type = 1
    ; Max objects in output tare
    max.tare.count = 168
    ;
    detail.length = 23.5
    start.shift.x = 0
    start.shift.y = 15
    start.shift.z = 0
    ;
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
  POINT stz.frame = FRAME (.plb, .prb, .prt, .plt)
  POINT stz.frame = stz.frame + RZ (-90)
  ; CIR1 = 100, 100 CIR2 = 148, 250
  ; CIR3 = 248, 300 CIR4 = 148; 450
  BREAK
  LMOVE stz.frame + TRANS (hmi.x, hmi.y, 10)
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
  POINT .temp = #pos.pos[hmi.obj.id]
  JMOVE .temp + TRANS (10, 0, 50)
  LMOVE .temp + TRANS (10, 0, 20)
  BREAK
  LMOVE #pos.pos[hmi.obj.id]
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
  POINT .pick = stz.frame+TRANS(cx+grip.xsh[hmi.tool.no]+.xsh,cy+grip.ysh[hmi.tool.no]+.ysh,grip.zsh[hmi.tool.no])+RZ(a)
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
  ;
  .$temp = "Pick detail from stz (" + $ENCODE (/L, hmi.x) + ", " + $ENCODE(/L, hmi.y) + ", " + $ENCODE(/L, hmi.a) + ")"
  CALL log (.$temp)
  CALL log ("State: PickDetail")
  $action = "PickDetail"
  ;
  SPEED 100 ALWAYS
  ACCURACY 0.1 ALWAYS
  TOOL tool.pick[current.gripper]
  ;
  cx = hmi.x
  cy = hmi.y
  a = hmi.a
  .ysh = 0
  .xsh = 0
  IF a == 180 THEN
    .xsh = grip.180xsh[current.gripper]
    .ysh = grip.180ysh[current.gripper]
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
  POINT .pick = stz.frame + TRANS (cx + hmi.gx + .xsh, cy + hmi.gy + .ysh, hmi.gz) + RZ (a)
  DECOMPOSE .c[1] = #pick.in
  POINT .#pick.in = #PPOINT (.c[1], .c[2], .c[3], .c[4], .c[5], .c[6] - a)
  ;
  JMOVE #wait.pick
  LMOVE .#pick.in
  IF NOT SIG (grip.unclamped) THEN
    PULSE grip.unclamp
    CALL log ("Wait for unclamp gripper. State: WaitingGripUnclamped")
    $action = "WaitingGripUnclamped"
    WAIT SIG(grip.unclamped) OR SIG(s.in1.disable)
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
  ;
  CALL log ("Waiting for free positioner. State: WaitPosFree")
  $action = "WaitPosFree"
  SWAIT -rs13.det.put
  ;
  .$temp = "Put detail to positioner" + $ENCODE (.pos)
  CALL log (.$temp)
  CALL log ("State: PutToPositioner")
  $action = "PutToPositioner"
  ;
  SPEED 100 ALWAYS
  ACCURACY 0 ALWAYS
  TOOL tool.pick[current.gripper]
  ;
  POINT .temp = #pos.pos[.pos]
  JMOVE .temp + TRANS (10, 0, 50)
  LMOVE .temp + TRANS (10, 0, 20)
  BREAK
  ;
  SPEED 20 MM/S
  LMOVE #pos.pos[.pos]
  BREAK
  PULSE grip.unclamp
  TWAIT 0.5
  ;
  LMOVE .temp + TRANS (0, 0, 200)
  SIGNAL rs13.det.put
  LMOVE #before.pos
  LMOVE #wait.pick
.END
.PROGRAM gripper.pick (.pos,.tool.no)
  IF FALSE THEN
    .pos = hmi.t.pos
    .tool.no = hmi.tool.no
  END
  ;
  PULSE release.grip
  .$temp = "Pick tool" + $ENCODE(.pos) + " from" + $ENCODE (.tool.no)
  CALL log (.$temp)
  CALL log ("State: PickTool")
  $action = "PickTool"
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
  .$temp = "Put tool" + $ENCODE (.pos) + " to" + $ENCODE (.tool.no)
  CALL log (.$temp)
  CALL log ("State: PutTool")
  $action = "PutTool"
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
  IF FALSE THEN
    .i = hmi.st.in.i
    .j = hmi.st.in.j
  END
  .$temp = "Take pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") from input stocker."
  CALL log (.$temp)
  CALL log ("State: TakingFromInStocker")
  $action = "TakingFromInStocker"
  ;
  PULSE release.tare
  ;
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
  SPEED 50 MM/S
  LMOVE stocker.in[.i, .j] + TRANS (20)
  ;
  SPEED 20
  ACCURACY 0
  LMOVE stocker.in[.i, .j] + TRANS (20, 0, 40)
  BREAK
  CALL log ("Wait sensor state. State: WaitInStockerSensor")
  $action = "WaitInStockerSensor"
  SWAIT s.sensor.iss
  SIGNAL -s.sensor.iss
  .$temp = "Take pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") from input stocker."
  CALL log (.$temp)
  CALL log ("State: TakingFromInStocker")
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
  ;
  CALL log ("Wait stz pneumatic close. State: WaitPneumaticClose")
  $action = "WaitPneumaticClose"
  SWAIT s.pneumo.close
  TWAIT 0.5
  SIGNAL -s.pneumo.close
  ;
  LMOVE #before.stz
  ;
  LMOVE #wait.pick
  ;
.END
.PROGRAM stock.in.back (.i,.j)
  IF FALSE THEN
    .i = hmi.st.in.i
    .j = hmi.st.in.j
  END
  .$temp = "Return pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") to input stocker."
  CALL log (.$temp)
  CALL log ("State: ReturnToInStocker")
  $action = "ReturnToInStocker"
  ;
  PULSE release.tare
  ;
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
  ;
  CALL log ("Wait stz pneumatic open. State: WaitPneumaticOpen")
  $action = "WaitPneumaticOpen"
  SWAIT s.pneumo.open
  TWAIT 0.5
  SIGNAL -s.pneumo.open
  ;
  .$temp = "Return pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") to input stocker."
  CALL log (.$temp)
  CALL log ("State: ReturnToInStocker")
  $action = "ReturnToInStocker"
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
  SPEED 50 MM/S
  LMOVE stocker.in[.i, .j]
  BREAK
  PULSE release.tare
  TWAIT 0.5
  ;
  LMOVE stocker.in[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.in[.i, .j] + TRANS (0, 0, 200)
.END
.PROGRAM stock.out.take (.i,.j)
  IF FALSE THEN
    .i = hmi.st.out.i
    .j = hmi.st.out.j
  END
  .$temp = "Take pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") from output stocker."
  CALL log (.$temp)
  CALL log ("State: TakingFromOutStocker")
  $action = "TakingFromOutStocker"
  ;
  PULSE release.tare
  ;
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
  JMOVE #post.tare.out
  LMOVE stocker.out[.i, .j] + TRANS (0, 0, 200)
  ACCURACY 5
  JMOVE stocker.out[.i, .j] + TRANS (0, 0, 50)
  ;
  ACCURACY 0
  SPEED 50 MM/S
  LMOVE stocker.out[.i, .j]
  BREAK
  PULSE capture.tare
  TWAIT 0.5
  ;
  ACCURACY 0
  SPEED 50 MM/S
  LMOVE stocker.out[.i, .j] + TRANS (20)
  ;
  SPEED 20
  ACCURACY 0
  LMOVE stocker.out[.i, .j] + TRANS (20, 0, 40)
  BREAK
  CALL log ("Wait sensor state. State: WaitOutStockerSensor")
  $action = "WaitOutStockerSensor"
  SWAIT s.sensor.oss
  SIGNAL -s.sensor.oss
  .$temp = "Take pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") from output stocker."
  CALL log (.$temp)
  CALL log ("State: TakingFromOutStocker")
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
  LMOVE .put.outpal + TRANS (,,50)
  BREAK
  LMOVE #before.outpal
  LMOVE #post.tare.out
  ;
  ;LMOVE #homep1
.END
.PROGRAM stock.out.back (.i,.j)
  IF FALSE THEN
    .i = hmi.st.out.i
    .j = hmi.st.out.j
  END
  .$temp = "Return pallet (" + $ENCODE (/L, .i) + ", " + $ENCODE (/L, .j) + ") to output stocker."
  CALL log (.$temp)
  CALL log ("State: ReturnToOutStocker")
  $action = "ReturnToOutStocker"
  ;
  PULSE release.tare
  ;
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
  SPEED 50 MM/S
  LMOVE stocker.out[.i, .j]
  BREAK
  PULSE release.tare
  TWAIT 0.5
  ;
  LMOVE stocker.out[.i, .j] + TRANS (0, 0, 50)
  LMOVE stocker.out[.i, .j] + TRANS (0, 0, 200)
  
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
    IF SIG(rs07.put.ack) THEN
      SIGNAL -rs13.det.put
    END
    ;
    IF SIG(s.open.pneumo) AND NOT SWITCH(CS) THEN
      $action="WaitPneumaticOpen"
    END
    ;
    IF SIG(s.close.pneumo) AND NOT SWITCH(CS)  THEN
      $action="WaitPneumaticClose"
      TWAIT 1
      $action="None"
    END
    ;
    IF TASK (1002) <> 1 THEN
      PCEXECUTE 2: tcp.client.pc
      TWAIT 2
    END
    IF TASK (1003) <> 1 THEN
      PCEXECUTE 3: sender.pc
      TWAIT 2
    END
    ;
    IF NOT SIG(s.debug) THEN
      IF SWITCH(REPEAT) AND NOT SWITCH(TEACH_LOCK) AND NOT SWITCH(EMERGENCY) AND NOT SWITCH(CS) AND NOT SWITCH(ERROR) THEN
        MC ZPOWER ON 
        WAIT SWITCH(POWER)
        ;
        MC CONTINUE
      END
    END
    ;
    TWAIT 0.01
  END
.END
.PROGRAM set.vars.pc ()
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
    FOR .i = 0 TO 12
      $log.entry[.i] = " "
    END
  END
  ;
  IF NOT EXISTREAL ("current.gripper")
    current.gripper = 0
  END
  ;
  IF NOT EXISTREAL ("mon.speed")
    mon.speed = 100
    pick.count = 0
  END
  ; Variables init
  ;
  ;tcp.socket = 0
  tcp.connect.tmo = 5
  tcp.receive.tmo = 5
  tcp.send.tmo = 5
  ;
  tyterm = 0
  ;
  $command = ""
  $cycle.command = ""
  
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
  ;ABS.SPEED ON
  autostart.pc ON
  errstart.pc ON  ;
  ;
  IFPWPRINT 8, 1, 1, 5, 10 = "Robot: RS013N S/N: C2392", "Controller: F60 S/N: C10632"," ", "Powered by Robowizard Co.Ltd."
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
  rs13.det.put = 19; EIP
  rs7.working = 1019; EIP
  ;
  rs7.home1 = 1017 ; EIP
  rs7.work[1] = 1018 ; EIP
  rs13.tare.ack = 20
  rs7.tare.chg = 1020
  rs13.finish = 21
  rs07.fin.ack = 1021
  rs07.put.ack = 1022
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
  s.close.pneumo = 2015
  s.open.pneumo = 2016
  s.in1.disable = 2017
  s.in2.disable = 2018
  ;
  s.sensor.iss = 2019
  s.sensor.oss = 2020
  s.sensor.ot = 2021
  ;
  s.pneumo.open = 2022
  s.pneumo.close = 2023
  ;
  s.debug = 2024
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
    CALL get.state.pc(.$data[1])
    .$data[2] = "ACTION:" + $action + ";"
    .$data[2] = .$data[2] + "TAREIN:" + $ENCODE(current.intare) + ";"
    .$data[2] = .$data[2] + "TAREOUT:" + $ENCODE(current.outtare) + ";"
    .$data[2] = .$data[2] + "GRIPPER:" + $ENCODE(current.gripper) + ";"
    .$data[2] = .$data[2] + "PICKCOUNT:" + $ENCODE(pick.count) + ";"
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
      IF .$sensor.name == "STOCKERINTARESENSOR" THEN
        PULSE s.sensor.iss, 5
      END
      ;
      IF .$sensor.name == "STOCKEROUTTARESENSOR" THEN
        PULSE s.sensor.oss, 5
      END
      ;
      IF .$sensor.name == "OUTPALLETSENSOR" THEN
        PULSE s.sensor.ot, 5
      END
    END
  END
  ;
  ; String format:
  ; MEASUREMENT;STATE;
  ;IF INSTR (.$data[1], "MEASUREMENT") THEN
  ;  ; Decode command
  ;  .$temp = $DECODE (.$data[1], ";", 0)
  ;  .$temp = $DECODE (.$data[1], ";", 1)
  ;  ; Decode measurement result
  ;  .sensor.state = $DECODE (.$data[1], ";", 0)
  ;END
  ;
  ; String format:
  ; SPEED;VALUE;
  ;
  IF INSTR (.$data[1], "SPEED") THEN
    .$temp = $DECODE (.$data[1], ";", 0)
    .$temp = $DECODE (.$data[1], ";", 1)
    .$spd = $DECODE (.$data[1], ";", 0)
    mon.speed = VAL(.$spd)
    MON_SPEED(mon.speed)
  END
  ; String format:
  ; PAUSE;
  ;
  IF INSTR (.$data[1], "NOPICK") THEN
    $cycle.command = "NOPICK"
    $action = " "
  END
  ;
  IF INSTR (.$data[1], "PAUSE") THEN
    PULSE 2222
  END
  ;
  ; String format:
  ; RESUME;
  IF INSTR (.$data[1], "RESUME") THEN
    PULSE 2222
  END
  ; PNEUMOOPEN;
  IF INSTR (.$data[1], "PNEUMOOPEN") THEN
    $action = " "
    PULSE s.pneumo.open, 5
  END
  ;
  ; PNEUMOCLOSE;
  IF INSTR (.$data[1], "PNEUMOCLOSE") THEN
    $action = " "
    PULSE s.pneumo.close, 5
  END
  ;
  ;
  IF INSTR (.$data[1], "PICK") AND NOT INSTR (.$data[1], "NO") THEN
    .$temp = $DECODE (.$data[1], ";", 0)
    .$temp = $DECODE (.$data[1], ";", 1)
    .$x = $DECODE (.$data[1], ",", 0)
    .$temp = $DECODE (.$data[1], ",", 1)
    .$y = $DECODE (.$data[1], ",", 0)
    .$temp = $DECODE (.$data[1], ",", 1)
    .$a = .$data[1]
    hmi.y = VAL (.$x) / 10
    hmi.x = VAL (.$y) / 10
    hmi.a = VAL (.$a)
    $cycle.command = "PICK"
    $action = " "
  END
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
.PROGRAM Comment___ () ; Comments for IDE. Do not use.
	; @@@ PROJECT @@@
	; @@@ PROJECTNAME @@@
	; ALKU_RS013N
	; @@@ HISTORY @@@
	; @@@ INSPECTION @@@
	; $detail.type
	; $intare.ids
	; $outtare.ids
	; $command
	; current.gripper
	; $cycle.command
	; intare.i[1]
	; intare.j[1]
	; current.outtare
	; s.pneumo.open
	; #homyak
	; @@@ CONNECTION @@@
	; KROSET R01
	; 127.0.0.1
	; 9105
	; @@@ PROGRAM @@@
	; Group:Utils:1
	; 1:a.home:F
	; 1:a.align:F
	; 1:a.test:F
	; .i 
	; .det.put 
	; 1:log:F
	; .$msg 
	; .i 
	; 1:safe.home:F
	; Group:Main:2
	; 2:a.main:F
	; 2:pg.start:F
	; .state 
	; .keep.pick 
	; .tare.chg 
	; .tare.ack 
	; .working 
	; .work 
	; .finish 
	; .fin.ack 
	; 2:process.data:F
	; .state 
	; .break 
	; .id 
	; .$temp 
	; 2:s.in.table:F
	; .no 
	; .$temp 
	; .i 
	; .j 
	; 2:s.out.table:F
	; .no 
	; .$temp 
	; .i 
	; .j 
	; 2:s.in.table_old:F
	; .no 
	; .i 
	; .j 
	; 2:s.out.table_old:F
	; .no 
	; .i 
	; .j 
	; 2:pg.select:F
	; .state 
	; Group:Objects:3
	; 3:id4:F
	; Group:Teach:4
	; 4:a.teach.stz:F
	; .plb 
	; .plt 
	; .prt 
	; .prb 
	; .dx1 
	; .dx2 
	; .dy1 
	; .dy2 
	; 4:a.tch.stock.in:F
	; .i 
	; .j 
	; 4:a.tch.stock.out:F
	; .i 
	; .j 
	; 4:a.teach.pos:F
	; .temp 
	; 4:a.teach.gripper:F
	; .temp 
	; 4:a.test.pick:F
	; .ysh 
	; .xsh 
	; .pick 
	; .c 
	; .#pick.in 
	; Group:STZ:5
	; 5:stz.pick:F
	; .$temp 
	; .ysh 
	; .xsh 
	; .pick 
	; .c 
	; .#pick.in 
	; .disable 
	; 5:stz.put:F
	; .pos 
	; .$temp 
	; .temp 
	; .det.put 
	; Group:ToolChange:6
	; 6:gripper.pick:F
	; .pos 
	; .tool.no 
	; .$temp 
	; .temp 
	; 6:gripper.put:F
	; .pos 
	; .tool.no 
	; .$temp 
	; .temp 
	; Group:Stockers:7
	; 7:stock.in.take:F
	; .i 
	; .j 
	; .$temp 
	; .post.tare.in 
	; .ct1 
	; .ct2 
	; .mid.point 
	; .put.stz 
	; 7:stock.in.back:F
	; .i 
	; .j 
	; .$temp 
	; .post.tare.in 
	; .ct1 
	; .ct2 
	; .mid.point 
	; .put.stz 
	; 7:stock.out.take:F
	; .i 
	; .j 
	; .$temp 
	; .post.tare.out 
	; .ct1 
	; .ct2 
	; .mid.point 
	; .put.outpal 
	; 7:stock.out.back:F
	; .i 
	; .j 
	; .$temp 
	; .post.tare.out 
	; .ct1 
	; .ct2 
	; .mid.point 
	; .put.outpal 
	; Group:Autostart:8
	; 8:watchdog.pc:B
	; .det.put 
	; .put.ack 
	; 8:set.vars.pc:B
	; .i 
	; 8:autostart.pc:B
	; 8:set.io.pc:B
	; .home1 
	; .work 
	; .det.put 
	; .det.picked 
	; .tare.ack 
	; .tare.chg 
	; .disable 
	; .working 
	; .finish 
	; .fin.ack 
	; .put.ack 
	; Group:TCPIP:9
	; 9:get.state.pc:B
	; .$state 
	; 9:sender.pc:B
	; .$data 
	; .pc 
	; 9:tcp.send2.pc:B
	; .$data 
	; .data.length 
	; .status 
	; .$temp 
	; .i 
	; .$data[] 
	; 9:tcp.callback.pc:B
	; .$data 
	; .data.length 
	; .$temp 
	; .i 
	; .$sensor.name 
	; .$sensor.state 
	; .$spd 
	; .$x 
	; .$y 
	; .$a 
	; .pc 
	; 9:tcp.client.pc:B
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
	; 9:tcp.send3.pc:B
	; .$data 
	; .data.length 
	; .status 
	; .$temp 
	; .i 
	; .$data[] 
	; 0:errstart.pc:B
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
	; s.close.pneumo 
	; s.open.pneumo 
	; s.in1.disable 
	; s.in2.disable 
	; rs13.det.put 
	; rs7.working 
	; s.sensor.iss 
	; s.sensor.oss 
	; s.sensor.ot 
	; rs7.tare.chg 
	; rs13.tare.ack 
	; s.pneumo.open 
	; s.pneumo.close 
	; s.debug 
	; rs07.put.ack 
	; @@@ TOOLS @@@
	; tool.pin 
	; tool.pick[] 
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
stocker.in[1,5] -467.551514 1167.335327 -205.054337 -88.225647 89.910507 -179.936432
stocker.in[1,4] -467.644104 1167.457520 -125.054489 -88.225647 89.910507 -179.936432
stocker.in[1,3] -467.736664 1167.579712 -45.054626 -88.225647 89.910507 -179.936432
stocker.in[1,2] -467.831024 1168.710693 40.710327 -88.231415 89.905037 -179.931412
stocker.in[1,1] -467.921844 1167.823975 114.945084 -88.225647 89.910507 -179.936432
stocker.in[1,6] -467.458923 1167.213257 -285.054199 -88.225647 89.910507 -179.936432
stocker.in[1,7] -467.366333 1167.091064 -365.054077 -88.225647 89.910507 -179.936432
stocker.in[1,8] -467.273743 1166.968872 -445.053955 -88.225647 89.910507 -179.936432
stocker.in[1,9] -467.181183 1166.846802 -525.053772 -88.225647 89.910507 -179.936432
stocker.in[1,10] -467.088593 1166.724609 -605.053650 -88.225647 89.910507 -179.936432
stocker.in[2,1] 141.785309 1186.712646 115.621971 -88.225647 89.910507 -179.936432
stocker.in[2,2] 141.877899 1186.590576 35.622116 -88.225647 89.910507 -179.936432
stocker.in[2,3] 141.970490 1186.468384 -44.377731 -88.225647 89.910507 -179.936432
stocker.in[2,4] 142.063080 1186.346191 -124.377594 -88.225647 89.910507 -179.936432
stocker.in[2,5] 142.155670 1186.224121 -204.377457 -88.225647 89.910507 -179.936432
stocker.in[2,6] 142.248199 1186.101929 -284.377319 -88.225647 89.910507 -179.936432
stocker.in[2,7] 142.340790 1185.979736 -364.377197 -88.225647 89.910507 -179.936432
stocker.in[2,8] 142.433380 1185.857666 -444.377075 -88.225647 89.910507 -179.936432
stocker.in[2,9] 142.525970 1185.735474 -524.376892 -88.225647 89.910507 -179.936432
stocker.in[2,10] 142.618561 1185.613281 -604.376770 -88.225647 89.910507 -179.936432
stocker.in[3,1] 751.492432 1205.601440 116.298859 -88.225647 89.910507 -179.936432
stocker.in[3,2] 751.584961 1205.479248 36.299004 -88.225647 89.910507 -179.936432
stocker.in[3,3] 751.677612 1205.357178 -43.700851 -88.225647 89.910507 -179.936432
stocker.in[3,4] 751.770142 1205.234985 -123.700714 -88.225647 89.910507 -179.936432
stocker.in[3,5] 751.862793 1205.112793 -203.700546 -88.225647 89.910507 -179.936432
stocker.in[3,6] 751.955322 1204.990723 -283.700439 -88.225647 89.910507 -179.936432
stocker.in[3,7] 752.047974 1204.868530 -363.700256 -88.225647 89.910507 -179.936432
stocker.in[3,8] 752.140503 1204.746338 -443.700195 -88.225647 89.910507 -179.936432
stocker.in[3,9] 752.233154 1204.624268 -523.700012 -88.225647 89.910507 -179.936432
stocker.in[3,10] 752.325684 1204.502075 -603.699890 -88.225647 89.910507 -179.936432
stocker.out[1,1] -1052.546387 -795.727783 -45.427361 0.430426 89.588951 -179.683609
stocker.out[1,2] -1051.372070 -794.572571 -145.292877 0.007129 89.661934 -179.680191
stocker.out[1,3] -1050.288818 -794.017334 -242.360001 0.008705 89.996239 -179.683685
stocker.out[1,4] -1052.497803 -793.365784 -343.645386 0.001783 89.995987 -179.682617
stocker.out[1,5] -1052.490845 -792.811829 -443.643860 0.001783 89.995987 -179.682617
stocker.out[1,6] -1052.483887 -792.257935 -543.642334 0.001783 89.995987 -179.682617
stocker.out[1,7] -1052.476807 -791.704041 -643.640747 0.001783 89.995987 -179.682617
stocker.out[1,8] -1052.469849 -791.150146 -743.639282 0.001783 89.995987 -179.682617
stocker.out[1,9] -1052.462891 -790.596252 -843.637695 0.001783 89.995987 -179.682617
stocker.out[1,10] -1052.455933 -790.042358 -943.636230 0.001783 89.995987 -179.682617
stocker.out[1,11] -1052.448853 -789.488403 -1043.634644 0.001783 89.995987 -179.682617
stocker.out[1,12] -1052.441895 -788.934509 -1143.633179 0.001783 89.995987 -179.682617
stocker.out[2,1] -1052.534180 -305.034943 -40.935745 0.001783 89.995987 -179.682617
stocker.out[2,2] -1052.527222 -304.481049 -140.934204 0.001783 89.995987 -179.682617
stocker.out[2,3] -1052.520264 -303.927124 -240.932678 0.001783 89.995987 -179.682617
stocker.out[2,4] -1052.513306 -303.373230 -340.931152 0.001783 89.995987 -179.682617
stocker.out[2,5] -1052.506226 -302.819336 -440.929626 0.001783 89.995987 -179.682617
stocker.out[2,6] -1052.499268 -302.265411 -540.928101 0.001783 89.995987 -179.682617
stocker.out[2,7] -1052.492310 -301.711517 -640.926514 0.001783 89.995987 -179.682617
stocker.out[2,8] -1052.485352 -301.157623 -740.925049 0.001783 89.995987 -179.682617
stocker.out[2,9] -1052.478271 -300.603729 -840.923462 0.001783 89.995987 -179.682617
stocker.out[2,10] -1052.471313 -300.049805 -940.921997 0.001783 89.995987 -179.682617
stocker.out[2,11] -1052.464355 -299.495911 -1040.920410 0.001783 89.995987 -179.682617
stocker.out[2,12] -1052.457275 -298.942017 -1140.918945 0.001783 89.995987 -179.682617
stocker.out[3,1] -1052.549683 184.957581 -38.221497 0.001783 89.995987 -179.682617
stocker.out[3,2] -1052.542725 185.511475 -138.219971 0.001783 89.995987 -179.682617
stocker.out[3,3] -1052.535645 186.065369 -238.218430 0.001783 89.995987 -179.682617
stocker.out[3,4] -1052.528687 186.619263 -338.216888 0.001783 89.995987 -179.682617
stocker.out[3,5] -1052.521729 187.173218 -438.215363 0.001783 89.995987 -179.682617
stocker.out[3,6] -1052.514771 187.727112 -538.213867 0.001783 89.995987 -179.682617
stocker.out[3,7] -1052.507690 188.281006 -638.212280 0.001783 89.995987 -179.682617
stocker.out[3,8] -1052.500732 188.834900 -738.210815 0.001783 89.995987 -179.682617
stocker.out[3,9] -1052.493774 189.388794 -838.209229 0.001783 89.995987 -179.682617
stocker.out[3,10] -1052.486694 189.942688 -938.207764 0.001783 89.995987 -179.682617
stocker.out[3,11] -1052.479736 190.496643 -1038.206177 0.001783 89.995987 -179.682617
stocker.out[3,12] -1052.472778 191.050537 -1138.204712 0.001783 89.995987 -179.682617
stocker.out[4,1] -1052.565063 674.950073 -35.507252 0.001783 89.995987 -179.682617
stocker.out[4,2] -1052.558105 675.504028 -135.505707 0.001783 89.995987 -179.682617
stocker.out[4,3] -1052.551147 676.057861 -235.504181 0.001783 89.995987 -179.682617
stocker.out[4,4] -1052.544189 676.611816 -335.502655 0.001783 89.995987 -179.682617
stocker.out[4,5] -1052.537109 677.165649 -435.501129 0.001783 89.995987 -179.682617
stocker.out[4,6] -1052.530151 677.719604 -535.499634 0.001783 89.995987 -179.682617
stocker.out[4,7] -1052.523193 678.273438 -635.498047 0.001783 89.995987 -179.682617
stocker.out[4,8] -1052.516113 678.827393 -735.496460 0.001783 89.995987 -179.682617
stocker.out[4,9] -1052.509155 679.381348 -835.494995 0.001783 89.995987 -179.682617
stocker.out[4,10] -1052.502197 679.935181 -935.493408 0.001783 89.995987 -179.682617
stocker.out[4,11] -1052.495239 680.489136 -1035.491943 0.001783 89.995987 -179.682617
stocker.out[4,12] -1052.488159 681.042969 -1135.490479 0.001783 89.995987 -179.682617
tool.pin -85.070000 -205.369995 -19.860001 67.500000 70.000000 0.000000
tool.pick[1] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[2] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[3] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[4] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
tool.pick[5] -5.960000 -6.028000 171.199997 -113.500000 180.000000 0.000000
stz.frame 988.154785 -343.346466 108.116516 -172.441833 1.937711 -8.772194
.END
.JOINTS
#before.stz 156.298325 -5.104897 -119.705116 -18.823097 -74.563522 -35.173157
#put.stz 136.263840 15.705241 -109.890045 -13.677276 -68.614426 -15.814918
#wait.pick 153.260971 -5.244692 -116.123528 -0.757969 -68.765495 -38.446480
#post.tare.in 30.800823 -12.718077 -134.300644 0.302695 -78.852997 24.346281
#put.outpal 66.063728 55.521683 -110.023979 11.797119 -34.001999 34.595959
#before.outpal 62.411133 28.136063 -114.655502 9.339873 -56.100311 42.658512
#post.tare.out -37.503078 7.653695 -123.335922 -4.558887 -68.644638 12.396273
#homyak -44.998138 -30.843269 -121.243866 0.000000 -90.000000 22.499559
#plb 120.860649 1.281152 -121.462181 -32.857822 60.155643 -127.981834
#plt 111.817329 21.086079 -96.765480 -25.279980 52.104725 -133.340485
#prb 146.296967 26.655985 -89.838234 -54.878906 71.183853 -105.880890
#prt 134.565048 41.486687 -65.941849 -50.747608 57.059559 -105.200981
#tool.pos[1] 138.009109 26.380774 -133.075394 2.785166 -19.660723 -27.889797
#before.pos 62.065971 -11.377430 -122.238724 -0.289775 -69.805077 52.576439
#pick.in 130.503326 12.590690 -97.431877 -0.818260 -69.914940 -15.682721
#pos.pos[4] 84.899872 50.424088 -87.945923 -23.932617 -48.573303 -45.927521
#tool.pos[4] 84.078476 44.192799 -101.346825 -26.757774 -42.315220 -40.994743
.END
.REALS
hmi.st.in.i = 1
hmi.st.in.j = 1
hmi.st.out.i = 1
hmi.st.out.j = 1
capture.tare = 2
hmi.gx = 4
hmi.gy = -2.2
hmi.x = 121.5
hmi.y = 144.731
ip[1] = 192
ip[2] = 168
ip[3] = 7
ip[4] = 100
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
cx = 198.768
cy = 128.933
dist.xn = 0.001
dist.xp = 0.015
dist.yn = 0.015
dist.yp = 0.015
do.bat.alm = 2010
do.home1 = 17
do.work[1] = 18
hmi.a = 0
hmi.gz = 4
hmi.stnew.i = 1
hmi.stnew.j = 1
hmi.ext.x = -38
hmi.ext.y = -4
grip.unclamped = 1001
grip.clamped = 1002
a = 180
hmi.obj.id = 4
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
grip.zsh[1] = 4
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
s.close.pneumo = 2015
s.open.pneumo = 2016
s.in1.disable = 2017
s.in2.disable = 2018
rs13.det.put = 19
rs7.working = 1019
s.sensor.iss = 2019
s.sensor.oss = 2020
s.sensor.ot = 2021
current.gripper = 1
rs7.tare.chg = 1020
rs13.tare.ack = 20
dbg.tcp = -1
detail.count = 10
gripper.id = 1
intare.count = 2
intare.i[1] = 1
intare.j[1] = 1
max.tare.count = 81
outtare.count = 3
outtare.i[1] = 1
outtare.j[1] = 1
positioner.id = 4
s.grip.sns1.dis = 2015
s.grip.sns2.dis = 2016
start.task = 2001
tcp.calb.dbg = -1
tcp.dbg = -1
tcp.recv.dbg = -1
tcp.send.dbg = -1
current.intare = 2
current.outtare = 1
full.counter = 6
gripper.type = 1
hmi.pos.pos = 4
intare.i[2] = 1
intare.j[2] = 2
object.id = 4
tare.counter = 6
s.pneumo.open = 2022
s.pneumo.close = 2023
s.debug = 2024
mon.speed = 100
pick.count = 0
rs07.put.ack = 1022
.END
.STRINGS
$tcp.ip = "192.168.7.100"
$action = "WaitForPick"
$log.entry[0] = "16:09:53 State: ReturnToInStocker"
$log.entry[1] = "16:09:55 Wait stz pneumatic open. State: WaitPneumaticOpen"
$log.entry[2] = "16:10:00 Return pallet (1, 1) to input stocker."
$log.entry[3] = "16:10:00 State: ReturnToInStocker"
$log.entry[4] = "16:10:09 Take pallet (1, 2) from input stocker."
$log.entry[5] = "16:10:09 State: TakingFromInStocker"
$log.entry[6] = "16:10:16 Wait sensor state. State: WaitInStockerSensor"
$log.entry[7] = "16:10:24 Take pallet (1, 2) from input stocker."
$log.entry[8] = "16:10:24 State: TakingFromInStocker"
$log.entry[9] = "16:10:33 Wait stz pneumatic close. State: WaitPneumaticClose"
$log.entry[10] = "16:10:38 Wait for new pick. State: WaitForPick"
$log.entry[11] = "16:10:48 Wait for new pick. State: WaitForPick"
$command = ""
$detail.type = "312.229.002_1"
$intare.ids = "3"
$outtare.ids = "4"
$cycle.command = "PICK"
.END
