;8 bit addition using 8086
.model small
.stack
.data
	n1 db 56h
	n2 db 98h
	sum dw ?

.code
begin:	mov ax,@data
		mov ds,ax

		mov ah,00
		mov al,n1
		add al,n2
		jnc nocarry
		inc ah
nocarry:mov sum,ax

		mov dx,sum
		mov ah,09h
		int 21h

		mov ah,4ch
		int 21h
		end begin