xchg si,ax
xchg cx,ax
x:
lodsb
aam 16
mov bl,255
l:
xchg al,ah
cmp al,10
sbb al,105
das
sub bl,51
js h
salc
h:
int 29h
jnz l
loop x
ret

; also, special thx HellMood
