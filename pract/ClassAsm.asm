

text segment 
assume CS:text, DS:data 

begin: mov AX, data
mov DS, AX ; (4)
lea BX, Num1 ; (5) 
mov CX, N ; (6) 
mov AX, 0 ; (7)
M1: add AX, [BX] ; (8) 
add BX, 2 ; (9) 
loop M1 ; (10) 
mov Sum, AX ; (11) 
mov AH, 4Ch ; (12)
mov AL, 0 ; (13) 
int 21h ; (14) 
text ends ; (15) 
data segment ; (16) 
Num1 Dw 17, 3, -51, 242, -113 ; (17) 
N Dw 5 ; (18) 
Sum Dw 0 ; (19) 
data ends ; (20) 
end begin ; (21) 