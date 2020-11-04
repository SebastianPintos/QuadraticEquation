sudo nasm -f elf32 sumaArray.asm -o sumaArray.o
sudo gcc -m32 sumaArray.c sumaArray.o -o main
./main

