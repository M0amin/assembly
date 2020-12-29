sys_exit equ 1
sys_read equ 3
sys_write equ 4
stdin equ 0
stdout equ 1
segment .data
msg1 db 'enter a digit',0xa,0xd
len1 equ $- msg1
msg2 db 'please enter a second digit',0xa,0xd
len2 equ $- msg2
msg3 db 'the sum is: '
len3 equ $- msg3

segment .bss
num1 resb 2
num2 resb 2
res resb 1

section .text
global _start
_start:
mov eax,sys_write
mov ebx,stdout
mov ecx,msg1
mov edx,len1
int 80h
mov eax,sys_read
mov ebx,stdin
mov ecx,num1
mov edx,2
int 80h
mov eax,sys_write
mov ebx,stdout
mov ecx,msg2
mov edx,len2
int 80h
mov eax,sys_read
mov ebx,stdin
mov ecx,num2
mov edx,2
int 80h
mov eax,sys_write
mov ebx,stdout
mov ecx,msg3
mov edx,len3
int 80h
mov eax,[num1]
sub eax,'0'
mov ebx,[num2]
sub ebx,'0'
add eax,ebx
add eax,'0'
mov [res],eax
mov eax,sys_write
mov ebx,stdout
mov ecx,res
mov edx,1
int 80h
exit:
mov eax,sys_exit
xor ebx,ebx
int 0x80
