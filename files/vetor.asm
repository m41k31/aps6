; nasm -felf32 -o vetor.o vetor.asm
; ld -melf_i386 -o vetor vetor.o

section .data
global x
array:
   db  2, 3, 4
   msg db "Resultado da soma: ", 0xA, 0xD
   len equ $- msg

sum:
   db  0

section .text
   global _start

;_start:
   mov  eax, 3
   mov  ebx, 0
   mov  ecx, array

f1:  add  ebx, [ecx]

   add  ecx, 1
   dec  eax
   jnz  f1

feito:

   add   ebx, '0'
   mov  [sum], ebx

mostrar:
   mov  edx, 1
   mov  ecx, sum
   mov  ebx, 1
   mov  eax, 4 
   int  0x80

exit:
   mov ebx, 0
   mov eax, 1
   int 0x80
 
