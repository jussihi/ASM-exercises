# Hello user!

This time we proceed to the user input

## Sections

This time we also use the bss section, which is used for the stored data in the future. We define one name there "inputname", and we reserve 20 bytes for it. 
So here resb stands for "reserve bytes". We can use this pointer just like the printtxt pointer etc in the first hello world program.


## syscalls

We call for a syscall 4 times in this program. Two of those times we call a `sys_write` which was also used in the first exercise.

The first syscall that differs is on line 23. This time, instead of calling syscall 1, we call for syscall 0, which is  `sys_read(fd, buffer, count)` . 
As told earlier, we input the first argument (0, meaning standard input instead of output this time) into the RDI register. We also must define how many bytes we would like to transfer into the given pointer. 
