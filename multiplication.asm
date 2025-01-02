MVI D, 00     ; Move 00H into register D (to store carry count)
LDA 5000      ; Load accumulator with the value at memory address 5000H
MOV B, A      ; Move the value in the accumulator (A) to register B
LDA 5001      ; Load accumulator with the value at memory address 5001H
MOV C, A      ; Move the value in the accumulator (A) to register C
MVI A, 00     ; Move 00H into the accumulator (initialize result to 0)
ADD B         ; Add the value in register B to the accumulator (A = A + B)
JNC 4111      ; Jump to address 4111 if there is no carry (CY = 0)
INR D         ; Increment register D by 1 (if there is a carry)
DCR C         ; Decrement register C by 1
JNZ 410C      ; Jump to address 410C if register C is not zero
STA 5003      ; Store the accumulator (result of multiplication) at memory address 5003H
MOV A, D      ; Move the value in register D to the accumulator
STA 5004      ; Store the accumulator (value of D) at memory address 5004H
HLT           ; Halt the program
