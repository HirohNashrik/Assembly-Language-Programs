ORG 000H
MOV A,30H
MOV R0,A
MOV B,31H
MOV R1,B
MOV R2,#01H
CJNE A,B,CHECK
MOV 32H,R0
MOV 33H,#01H
SJMP STOP

CHECK:
JNC CONTINUE 
MOV R0,B
MOV R1,A

CONTINUE:
MOV A,R1
MOV B,R2
MUL AB
MOV 32H,A
MOV B,R0
DIV AB
MOV A,B
CJNE A,#00H,AGAIN
MOV A,R0
MOV B,R1
MUL AB
MOV B,32H
DIV AB
MOV 33H,A

STOP: SJMP STOP

AGAIN: INC R2
SJMP CONTINUE

END 