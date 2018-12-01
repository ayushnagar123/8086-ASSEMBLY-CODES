;sort a series of numbers-8086
.model small
.stack 100h
.data
	array db 11h,99h,22h,88h,33h,77h,44h,66h
	count dw 8
.code
begin:	mov ax,@data
		mov dx,ax

		count cx,count
		dec cx
		mov si,0

nextscan:	mov bx,cx
			mov si,0

nextcomp:	mov al,n[si]
			mov dl,n[si+1]
			cmp al,dl
			jc noswap
			mov n[si],dl
			mov[si+1],al

noswap:	inc si
		dec bx
		jnz nextcomp
		loop nextscan

		mov ah,4ch
		int 21h
		end begin