section .text
global _start
_start:
mov eax,'3'
sub eax,'0'
mov ebx,'4'
sub ebx,'0'
add eax,ebx
add eax,'0'
mov [sum],eax
mov ecx,msg
mov edx,len
mov ebx,1
mov eax,4
int 80h
mov ecx,sum
mov edx,1
mov ebx,1
mov eax,4
int 80h
mov eax,1
int 80h
section .data
msg db "the sum is: ",0xa,0xd
len equ $- msg
segment .bss
sum resb 1
