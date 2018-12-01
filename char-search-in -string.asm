;searching a character using linear search in string-8086
.odel small
,.stack 100h
.data
	text db 'Hello Ayush'
	count dw 11
	search db 'h'
	found db 'string Found$'
	notfound db 'string not Found$'
.code
begin:	mov ax,@data
		mov dx,ax

		mov es,ax
		mov cx,count

		mov di,offset text
		mov al.search

		repne scasb				;repeat scan string if not equal
		jz yes

		mov dx,offset notfound
		mov ah,09h
		int 21h
		jmp over

yes:	mov dx,offset found
		mov ah,09h
		int 21h
over:	mov ah,4ch
		int 21h
		end begin