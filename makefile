output: assignment.o
	gcc -m64 -no-pie assignment.o -o assignment
assignment.o: assignment.asm
	yasm -f elf64 assignment.asm
