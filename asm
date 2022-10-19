# 直接运行asm的二进制
asm(".insn \n\t"
".word(0xEF380000) \n\t");

# mips64用寄存器的写法
asm("ori $t9, $sp, 0\n\t");

#include <stdio.h>

int main() 
{
        int a = 10, b;

	__asm__("movl %1, %%eax\n\t"
		"movl %%eax, %0\n\t"
		:"=r"(b)        /* output */
		:"r"(a)         /* input */
		:"%eax"         /* clobbered register */
		);
	printf("Result: %d, %d\n", a, b);
	return 0;
}
https://akaedu.github.io/book/ch19s05.html

# gcc官方用法
https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html
