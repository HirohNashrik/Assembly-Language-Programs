ORG 000H
MOV R0,#00H
MOV R1,#01H
MOV A,20H
CLR A 
REPEAT:
SUBB A,R1
INC R0
JZ ANS
JC NANS
INC R1
INC R1
JMP REPEAT;
ANS: MOV 30H,R0
SJMP LAST
NANS: MOV 30H,R0
SJMP LAST
LAST:
END 