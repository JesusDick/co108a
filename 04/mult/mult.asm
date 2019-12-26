// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


// R2=0   // @2, M=0
(LOOP)
@2
M=0
@0
D=M
@END
D;JLT

@2
M=D+M
@0
D=D-1
@LOOP

// (LOOP)                               // D=R0     D<0, goto END
while (R0 >= 0) { // if R0 < 0 goto END // @0, D=M, @END, D;JLT
    R2 = R2 + R1  // R2 = R2 + R1       // @2, M=D+M 
    R0 = R0-1     // R0 = R0 - 1        // @0, D=D-1
}                 // goto LOOP          //@LOOP

// (END)