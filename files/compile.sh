nasm -felf32 -o matricula.o matricula.asm
ld -melf_i386 -o matricula matricula.o
./matricula
 
