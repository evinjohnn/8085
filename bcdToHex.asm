LXI H, 4150    ; Load the HL pair with the address 4150H
MOV A, M       ; Move the value at memory location (HL) to the accumulator (A)
ADD A          ; Add the accumulator to itself (A = A + A)
MOV B, A       ; Move the value in the accumulator (A) to register B
ADD A          ; Add the accumulator to itself (A = A + A)
ADD A          ; Add the accumulator to itself (A = A + A)
ADD B          ; Add the value in register B to the accumulator (A = A + B)
INX H          ; Increment HL to point to the next memory location
ADD M          ; Add the value at memory location (HL) to the accumulator (A = A + M)
INX H          ; Increment HL to point to the next memory location
MOV M, A       ; Move the value in the accumulator (A) to memory location (HL)
HLT            ; Halt the program
