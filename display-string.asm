;program to display a string-8086
.model small
.stacj 100h
.data
	text tb 'Hello Ayush$'
.code
begn:	mov ax,@data
		mov dx,ax

		mmov dx,offset text
		mov ah,09h
		int 21h

		mov ah,4ch
		int 21h