;string case conversion-8086
.model small
.stack 100h
.data
	text db 'abcdefghijklmnopqrstuvwxyz'
	count dw 26
.code
begin:	mov ax,@data
		mov dx,ax
		mov es,ax

		mov si,0
		mov cx,count

		;from upper to lower case
		;mov al,text[si]
		;add al,20h
		;mov text[si],al
		;inc si
		;loop again
		;jmp over

		;from lower to upper case
again:	mov al,text[si]
		sub al,20h
		mov text[si],al
		inc si
		loop again

over:	mov ah,4ch
		int 21h
		end begin