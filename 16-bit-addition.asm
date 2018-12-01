;adding 16 bit numbers-8086
.model small
.stack 100h
.data
	n1 dw 1234h
	n2 dw 6789h
	sum dw 2 dup(?)
.code
begin:	mov ax,@data
		mov dx,ax

		mov bx,0
		mov ax,n1
		add ax,n2
		mov sum,ax
		add bx,0
		mov sum[2],bx

		mov ah,54ch
		int 21h
		wnd begin