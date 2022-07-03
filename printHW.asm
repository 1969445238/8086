data segment
    buf db 'Hello World!$'
data ends

code segment
	assume cs:code,ds:data
start:
	mov ax,data
	mov ds,ax
	
	lea dx,buf
	
	mov ah,09h
	int 21h
	
	nov ah,4ch
	int 21h

code ends
end start
