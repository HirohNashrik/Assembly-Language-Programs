ORG 000H
MOV DPTR, #4000H
MOVX A,@DPTR
MOV 20H,A
INC DPTR
MOVX A,@DPTR
ADD A,20H
MOV 30H,A
INC DPTR
MOV 30H,A
MOVX @DPTR,A
END