ORG 00H
MOV B,#00H
MOV R1,#30H
MOV R2,#10H
REPEAT: MOV A,@R1
CJNE A,B,SKIP
SKIP: JC SKIP1
MOV B,A
MOV 20H,B
SKIP1: INC R1
DJNZ R2,REPEAT

STOP: SJMP STOP
END 
