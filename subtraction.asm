LDA 4200      ; Load accumulator with the value at memory address 4200H
MOV B, A      ; Move the value in the accumulator (A) to register B
LDA 4201      ; Load accumulator with the value at memory address 4201H
SUB B         ; Subtract the value in register B from the accumulator (A = A - B)
JNC 4111      ; Jump to address 4111 if there is no borrow (CY = 0)
INR C         ; Increment register C by 1 (if there is a borrow)
CMA           ; Complement the accumulator (1's complement of A)
ADI 01        ; Add 1 to the accumulator (2's complement of A)
STA 4154      ; Store the accumulator (result of subtraction) at memory address 4154H
MOV A, C      ; Move the value in register C to the accumulator
STA 4153      ; Store the accumulator (value of C) at memory address 4153H
HLT           ; Halt the program
