;counting 1 in a string of 0 and 1
.model small
.stack 100h
.data
	n db 5fh;
	count db ?
.code
begin:	mov ax,@data
		mov dx,ax

		mov al,n
		mov cx,08
		mov bl,0

again:	shr al,1
		jnc noadd
		inc bl

noddd:	loop again

		mov count,bl

		mov ah,4ch
		int 21h
		end begin