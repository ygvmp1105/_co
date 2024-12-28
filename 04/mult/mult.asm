// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@0       // Load RAM[0] into D
D=M
@i       // i = 0 (loop index)
M=0
@res     // res = 0 (accumulator for result)
M=0
(loop)
    @D   // If D == 0, exit loop
    D=D-1
    @end
    D;JEQ

    @1   // Add RAM[1] to res
    A=M
    D=M
    @res
    M=M+D

    @i   // Increment i
    M=M+1
    @loop
    0;JMP

(end)
    @res // Store result in RAM[2]
    D=M
    @2
    M=D
    (halt)
    @halt
    0;JMP
