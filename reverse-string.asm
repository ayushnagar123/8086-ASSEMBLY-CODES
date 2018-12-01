;reversing a string-8086
.model small
.stack 100h
.data
	text1 db 'Hello Ayush'
	text2 db 11 dup(?)
	count dw 11
.code
begin:	mov ax,@data
		mov dx,ax

		movcx,count
		mov si,0
		mov di,0

		add di,count
		dec dl

again:	mov al,text1[si]
		mov text2[di],al
		inc si
		dec di
		loop again

		mov ah,4ch
		int 21h
		end begin