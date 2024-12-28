// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
// 填滿螢幕的程式
(fill)
    @SCR   
    D=A    // D = 螢幕當前位址
(fillLoop)
    A=D    // 設定 A 為當前螢幕位址
    M=-1   
    D=D+1  
    @endSCR
    D-A    
    D;JLT  
    @KBD   
    0;JMP

// 清空螢幕的程式
(clr)
    @SCR  
    D=A    
(clrLoop)
    A=D    
    M=0    
    D=D+1  
    @endSCR 
    D-A
    D;JLT  
    @KBD
    0;JMP

// 符號定義
(SCR)
@16384

(endSCR)
@24575
