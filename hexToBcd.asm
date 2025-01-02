LXI 5000       ; Invalid instruction (LXI requires a register pair)
MVI D, 00      ; Move 00H into register D
MOV A, M       ; Move the value at memory location (HL) to the accumulator (A)
XRA A          ; XOR the accumulator with itself (A = A XOR A)
CMP M          ; Compare the accumulator (A) with the value at memory location (HL)
JZ 4118        ; Jump to address 4118 if A = M (Zero Flag = 1)
XRA A          ; XOR the accumulator with itself (A = A XOR A)
MOV C, M       ; Move the value at memory location (HL) to register C
ADI 01         ; Add 01H to the accumulator (A = A + 01H)
DAA            ; Decimal adjust the accumulator (A)
JNZ 4114       ; Jump to address 4114 if A ≠ 0 (Zero Flag = 0)
INR D          ; Increment register D
DCR C          ; Decrement register C
JNZ 4100       ; Jump to address 4100 if C ≠ 0 (Zero Flag = 0)
STA 5001       ; Store the accumulator at memory address 5001H
MOV A, D       ; Move the value in register D to the accumulator (A)
STA 5002       ; Store the accumulator at memory address 5002H
HLT            ; Halt the program
