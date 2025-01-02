MVI D, FFH     ; Move FFH into register D (to act as a flag)
LXI H, 4100    ; Load the HL pair with the address 4100H (start of the list)
MOV B, M       ; Move the value at memory location (HL) to register B (number of elements)
INX H          ; Increment HL to point to the first element in the list
MOV A, M       ; Move the value at memory location (HL) to the accumulator (A)
INX H          ; Increment HL to point to the next element
CMP M          ; Compare the value in the accumulator (A) with the value at memory location (HL)
JC 4214        ; Jump to address 4214 if A < M (Carry Flag = 1)
MOV C, M       ; Move the value at memory location (HL) to register C
MOV M, A       ; Move the value in the accumulator (A) to memory location (HL)
INX H          ; Increment HL to point to the next element
DCR D          ; Decrement register D (flag)
DCR B          ; Decrement register B (number of elements)
JNZ 4208       ; Jump to address 4208 if B ≠ 0 (repeat the process)
MOV A, D       ; Move the value in register D to the accumulator (A)
CPI FFH        ; Compare the accumulator (A) with FFH
JNZ 4200       ; Jump to address 4200 if A ≠ FFH (repeat the sorting process)
HLT            ; Halt the program
