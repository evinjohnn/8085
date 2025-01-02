MVI C, 00     ; Move 00H into register C
LDA 4200      ; Load accumulator with the value at memory address 4200H
MOV B, A      ; Move the value in the accumulator (A) to register B
LDA 4201      ; Load accumulator with the value at memory address 4201H
ADD B         ; Add the value in register B to the accumulator (A = A + B)
JNC 410E      ; Jump to address 410E if there is no carry (CY = 0)
INR C         ; Increment register C by 1 (if there is a carry)
STA 4154      ; Store the accumulator (result of addition) at memory address 4154H
MOV A, C      ; Move the value in register C to the accumulator
STA 4153      ; Store the accumulator (value of C) at memory address 4153H
HLT           ; Halt the program
