section .data
userMsg db 'please enter a number:'
lenuserMsg equ $- userMsg
dispMsg db 'you have entered:'
lendisMsg equ $-  dispMsg
section .bss
num resb 5
section .text
global _start
_start:
mov eax,4	;sys_write
mov ebx,1 ;stdout
mov ecx,userMsg
mov edx,lenuserMsg
int 80h

mov eax,3 ;sys_read
mov ebx,2	;stdin
mov ecx,num
mov edx,5
int 80h

mov eax,4
mov ebx,1
mov ecx,dispMsg
mov edx,lendisMsg
int 80h

mov eax,4
mov ebx,1
mov ecx,num
mov edx,5
int 80h

mov eax,1 ;sys_exit
mov ebx,0 ;exit(0) or return 0
int 80h

