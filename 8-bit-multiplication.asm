;8 bit multiplication-8086
.model small
.stack 100h
.data
	n1 db 56h
	n2 db 78h
	product dw ?
.code
begin:	mov ax,@data
		mov dx,ax

		mov ah,00
		mov al,n1
		mul n2				;56*78=>ax
		mov product,ax

		mov ah,4ch
		int 21h
		end begin