# Hello world 

This is a very simple hello world program

## Sections

The sections here are "data" and "text". The data section is meant to declare initialized data or constants. In this program, a char array called 
"printtxt" is stored here. The text section must declare the starting point, so the kernel knows where to go when the program is run. There is also a 
section called "bss" section, where the data is allocated for future use, but it is not needed in this exercise.

## db

The db command on line 2 simply means "define bytes". After this we define a string, "Hello world!", and a ASCII character 10 (in decimals), which means 
new line ( \n does not work in assembly ).

## labels

In this code we also have a label called "_start", which is the entrypoint of our function. In assembly, you can jump to different parts of the program by 
simply "jumping" to different labels.

## mov-command

mov simply MOVES a value from a source to destination. In this program the first move is when we move the value 1 into the register "rax" (We can use 
literals!). Usage is `mov dest, src`.

## registers

In this program, there are different registers used such as RAX, RDI, RSI, RDX... There are different size of registers for different computing 
environments. We use & compile for 64-bit computer, so we use RAX (64-bit) register instead of EAX (32-bit). Here is a cheatsheet of registers: 

![alt text](http://i45.tinypic.com/10wtooh.png "Register cheat sheet")

## syscalls

We call a syscall twice in this program, on lines 12 and 16. Before a system call can be made, we need to tell the machine which syscall function to call, 
and the possible parameters for it. First we set the syscall ID into the RAX register. Then we input the syscall arguments into registers in this order: 
RDI, RSI, RDX, R10, R8, R9.

The first syscall is 1. 1 calls for `sys_write(fd, buffer, count)` so we start inputting the parameters for the syscall. As told earlier, we input the 
first argument (1) into the RDI register. Here 1 means standard output. Then we put the printtxt pointer into the RSI register and last the string length 
into the RDX register, so the output won't be too long. After it we can ask the kernel to complete the system call.

The latter syscall is simply exit, with parameter 0 showing that the program returned normally (basically same as return 0 from main.c or exit(0) from 
anywhere 
inside a C program.)
