não consegui fazer com a matricula, sempre que coloca um numero grande da erro, tentei de todas formas
warning: dword data exceeds bounds [-w+number-overflow]

section .text
global _start

soma:

  mov eax, [esp+4]; 
  mov ebx, [esp+8];
  add eax, ebx;
  ret

_start:

  push ebp
  mov ebp, esp
  sub ebp, 4

  push 3
  push 4
  call soma
  add esp, 8

  add eax, 0x30
  mov [ebp-4], eax

  mov eax, 4
  mov ebx, 1
  lea ecx, [ebp-4]
  mov edx, 1
  int 0x80

  pop ebp

  mov eax, 1 ;
  mov ebx, 0 ;
  int 0x80
