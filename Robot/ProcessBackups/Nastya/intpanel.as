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
58,14,"$action"," Action"," String",10,15,0
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
98,10,"","","","",10,4,15,3,"$action=waitforpick",0
99,1,"","","","",10,15,4,15,19,0
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
138,4,1,"OFF     ON","","","  RECEIVE ",10,4,4,0,2028,0
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
