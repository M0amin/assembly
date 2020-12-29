section .data
msg db 'displaying 9 stars:',0xa,0xd
s2 times 9 db '*'
len equ $- msg
section .text
global _start
_start:
mov edx,len
mov ecx,msg
mov ebx,1
mov eax,4
int 0x80
mov edx,9
mov ecx,s2
mov ebx,1
mov eax,4
int 0x80
mov ebx,0
mov eax,1
int 0x80
