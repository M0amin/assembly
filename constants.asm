sys_exit equ 1
sys_write equ 4
stdin equ 0
stdout equ 1
section .text
global _start
_start:
mov eax,sys_write
mov ebx,stdout
mov ecx,msg1
mov edx,len1
int 80h
mov eax,sys_write
mov ebx,stdout
mov ecx,msg2
mov edx,len2
int 80h
mov eax,sys_write
mov ebx,stdout
mov ecx,msg3
mov edx,len3
int 80h
mov eax,sys_exit
int 80h
section .data
msg1 db 'hello programmer!',0xa,0xd
len1 equ $- msg1
msg2 db 'welcome to the world of ',0xa,0xd
len2 equ $- msg2
msg3 db 'linux assembly programing!'
len3 equ $- msg3
