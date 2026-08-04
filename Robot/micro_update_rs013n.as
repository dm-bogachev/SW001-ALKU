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
