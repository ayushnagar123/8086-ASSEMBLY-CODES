;16 bit multipliucation-8086
.model small
.stack 100h
.data
	n1 dw 7895h
	n2 dw 0ffffh
	product dw 2 dup(?)
.code
begin:	mov ax,@data
		mov dx,ax

		mov dx,0
		mov ax,n1
		mul n2				;7895*0ffffh=>dx:ax
		mov product[0],ax
		mov product[2],dx

		mov ah,4ch
		int 21h