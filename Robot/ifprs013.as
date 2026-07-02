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

