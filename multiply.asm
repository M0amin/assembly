section .text
global _start
_start:
mov al,'3'
sub al,'0'
mov bl,'2'
sub bl,'0'
mul bl
add al,'0'
mov [res],al
mov ecx,msg
mov edx,len
mov ebx,1
mov eax,4
int 80h
mov ecx,res
mov edx,1
mov ebx,1
mov eax,4
int 0x80
mov eax,1
int 80h
section .data
msg db 'the result is: ',0xa,0xd
len equ $- msg
segment .bss
res resb 1
