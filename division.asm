MVI D, 00     ; Move 00H into register D (to store the quotient)
LDA 5000      ; Load accumulator with the value at memory address 5000H
MOV B, A      ; Move the value in the accumulator (A) to register B
LDA 5001      ; Load accumulator with the value at memory address 5001H
CMP B         ; Compare the value in register B with the accumulator (A)
JC 4412       ; Jump to address 4412 if A < B (Carry Flag = 1)
SUB B         ; Subtract the value in register B from the accumulator (A = A - B)
INR C         ; Increment register C by 1 (to count the quotient)
JMP 4404      ; Jump to address 4404 (repeat the subtraction)
STA 5004      ; Store the accumulator (remainder) at memory address 5004H
MOV A, C      ; Move the value in register C to the accumulator
STA 5002      ; Store the accumulator (quotient) at memory address 5002H
HLT           ; Halt the program
