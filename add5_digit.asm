section .text
global _start
_start:
mov esi,4
mov ecx,5
clc
addloop:
mov al,[num1+esi]
adc al,[num1+esi]
aaa
pushf
or al,30h
popf
mov [sum+esi],al
dec esi
loop addloop
mov edx,len
mov ecx,msg
mov ebx,1
mov eax,4
int 80h
mov edx,5
mov ecx,sum
mov ebx,1
mov eax,4
int 80h
mov eax,1
int 80h
section .data
msg db 'the sum is: ',0xa
len equ $- msg
num1 db '12345'
num2 db '23456'
sum db '     '


