ORG 000H        ; Starting address of the program


MOV R0, #35H    ; Move the value 0x35 to register R1
MOV R1, #60H    ; Move the value 0x60 to register R2
MOV R2, #0AH    ; Move the value 0x0A to register R0

BACK:
MOV A, @R0      ; Move the value from the address pointed by R1 to the accumulator (A)
MOV @R1, A      ; Move the value from the accumulator (A) to the address pointed by R2
INC R0          ; Increment the value of R1
INC R1          ; Increment the value of R1 (twice)
DJNZ R2, BACK   ; Decrement the value of R0 and jump back to the label 'BACK' if R0 is not zero

END             ; End of the program

