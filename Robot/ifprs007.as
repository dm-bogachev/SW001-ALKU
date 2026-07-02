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
33,2,"","  Release ","  gripper","",10,4,6,1,-1
34,2,"","  Capture","  gripper","",10,4,6,2,0
35,2,"","   Open ","  gripper","",10,4,5,3,0
36,2,"","   Close","  gripper","",10,4,5,4,0
42,4,1,"OFF     ON","","","FORCE IN 1",10,4,4,0,2221,0
43,4,1,"OFF     ON","","","FORCE IN 2",10,4,4,0,2222,0
49,2,"","   MAIN","<---------","",10,4,11,2001,0
56,14,"tcp.ip","Server IP","",10,15,0
57,8,"tcp.port","Server","port",10,15,5,1,0
58,8,"tcp.sender.dly","Polling","delay, s",10,15,2,2,0
61,8,"state","  CURRENT","   STATE",10,15,3,1,0
62,2,"","   RESET","   STATE","",10,4,15,2261,0
63,4,1,"OFF     ON","","","TCP COMMON",10,4,4,0,2203,0
64,4,1,"OFF     ON","",""," TCP SEND",10,4,4,0,2201,0
65,4,1,"OFF     ON","",""," TCP RECV",10,4,4,0,2202,0
66,4,1,"OFF     ON","",""," TCP LOG",10,4,4,0,2204,0
67,8,"wdog.tmr","  WATCHDOG"," TIMER, s",10,15,3,1,0
68,14,"action","  CURRENT","  ACTION",10,15,0
69,2,"","   RESET","   ACTION","",10,4,15,2262,0
70,1,"GRIP FULL","","","",10,15,4,10,2231,0
71,1," POS FULL","","","",10,15,4,10,2233,0
76,4,1,"OFF     ON","","","  DEBUG",10,4,4,0,2300,0
77,2,"","   MAIN","<---------","",10,4,11,2001,0
79,7,"  RS007L","COUNT PICK",10,15,4,0,0,40,16,1
80,7,"  RS013N","COUNT PUT",10,15,4,0,0,1040,16,1
81,8,"count.defect","Current","defect",10,15,2,1,0
82,8,"max.defect.cnt","Max defect","tare count",10,15,2,1,0
83,4,1,"OFF     ON","","","  OT SHIFT",10,4,4,0,2301,0
84,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
85,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
86,8,"hmi.tool.no","    HMI","  GRIPPER ",10,2,2,1,0
90,2,"","   Open ","  gripper","",10,4,5,3,0
91,2,"   PRIME","","   TEACH","POSITIONER",10,4,11,2255,0
97,2,"","   Close","  gripper","",10,4,5,4,0
105,2,"","   MAIN","<---------","",10,4,11,2001,0
108,2,"","   TEACH","  MACHINE","",10,4,11,2005,0
109,2,"","   TEACH","    OT","",10,4,11,2006,0
110,2,"","   TEACH","  DEFECT","",10,4,11,2007,0
111,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
112,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
113,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
114,8,"hmi.tool.no","    HMI","  GRIPPER ",10,2,2,1,0
118,2,"","   Open ","  gripper","",10,4,5,3,0
119,2,"   PRIME","","   TEACH","  MACHINE",10,4,11,2253,0
125,2,"","   Close","  gripper","",10,4,5,4,0
126,2,"   PRIME","","   TEACH","   ETALON",10,4,11,2254,0
127,8,"hmi.etalon.id","  ETALON","    ID",10,2,2,1,0
133,2,"","   MAIN","<---------","",10,4,11,2001,0
136,2,"","   TEACH","POSITIONER","",10,4,11,2004,0
137,2,"","   TEACH","    OT","",10,4,11,2006,0
138,2,"","   TEACH","  DEFECT","",10,4,11,2007,0
139,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
140,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
141,8,"hmi.obj.id","  OBJECT","    ID",10,2,2,1,0
142,8,"hmi.tool.no","    HMI","  GRIPPER ",10,2,2,1,0
143,8,"hmi.gx","OBJECT N"," X SHIFT",10,3,4,2,0
144,8,"hmi.gy","OBJECT N"," Y SHIFT",10,3,4,2,0
145,8,"hmi.gz","OBJECT N"," Z SHIFT",10,3,4,2,0
146,2,"","   Open ","  gripper","",10,4,5,3,0
147,2,"   PRIME","","   TEACH","  MACHINE",10,4,11,2251,0
150,8,"hmi.g180x","OBJECT N","180X SHIFT",10,3,4,2,0
151,8,"hmi.g180y","OBJECT N","180Y SHIFT",10,3,4,2,0
152,2,""," APPLY FOR"," N OBJECT","",10,4,14,2256,0
153,2,"","   Close","  gripper","",10,4,5,4,0
154,2,"   PRIME","","    TEST","    OT",10,4,11,2249,0
155,8,"ot.x","    OT","X POSITION",10,3,2,1,0
156,8,"ot.y","    OT","Y POSITION",10,3,2,1,0
157,8,"hmi.ot.k","    OT","  PUT ID ",10,3,3,1,0
161,2,"","   MAIN","<---------","",10,4,11,2001,0
164,2,"","   TEACH","POSITIONER","",10,4,11,2004,0
165,2,"","   TEACH","  MACHINE","",10,4,11,2005,0
166,2,"","   TEACH","  DEFECT","",10,4,11,2007,0
167,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
168,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
170,8,"hmi.defect.pos","  DEFECT","    ID",10,2,2,1,0
174,2,"","   Open ","  gripper","",10,4,5,3,0
175,2,"   PRIME","","   TEACH","  DEFECT",10,4,11,2252,0
177,8,"defect.x.cor","TARE X COR","",10,15,4,2,0
178,8,"defect.y.cor","TARE Y COR","",10,15,4,2,0
179,8,"defect.h.cor","TARE Z COR","",10,15,4,2,0
181,2,"","   Close","  gripper","",10,4,5,4,0
189,2,"","   MAIN","<---------","",10,4,11,2001,0
192,2,"","   TEACH","POSITIONER","",10,4,11,2004,0
193,2,"","   TEACH","  MACHINE","",10,4,11,2005,0
194,2,"","   TEACH","    OT","",10,4,11,2006,0
195,2,"","   TEACH","  GRIPPERS","",10,4,11,2008,0
196,2,"  ","  PRIME","  HOME","",10,4,11,2250,0
199,8,"current.gripper","  CURRENT","  GRIPPER ",10,2,2,1,0
200,8,"hmi.gripper","    HMI","  GRIPPER ",10,2,2,1,0
202,2,"","  Capture","  gripper","",10,4,6,6,0
203,2,"   PRIME","","   TEACH","  GRIPPERS",10,4,11,2260,0
209,2,"","  Release ","  gripper","",10,4,6,5,-1
217,2,"","   MAIN","<---------","",10,4,11,2001,0
220,2,"","   TEACH","POSITIONER","",10,4,11,2004,0
221,2,"","   TEACH","  MACHINE","",10,4,11,2005,0
222,2,"","   TEACH","    OT","",10,4,11,2006,0
223,2,"","   TEACH","  DEFECT","",10,4,11,2007,0
.END
.INTER_PANEL_TITLE
"MAIN",1
"GRIPPERS",1
"DEBUG",1
"TEACH POSITIONER",1
"TEACH MEASURE MACHINE",1
"TEACH OT",1
"TEACH DEFECT TARE",1
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

