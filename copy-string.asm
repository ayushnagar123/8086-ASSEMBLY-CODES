;copying a string-8086
.model small
.stack 100h
.data
	text1 db 'Hello welcome'
	text2 db 13 dup(?)
	count dw 13
.code
begin:	mov ax,@data
		mov dx,ax

		mov si,offset text1
		mov di,offset text2
		mov cx,count
		cld						;direction flag=0,siand di are incremented

		rep movsb				;repeat moving string byte by byte

		mov ah,4ch
		int 21h
		end begin