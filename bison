# 编译bison的命令
bison -d example.y

# 传入字符串的写法
#include <stdio.h>
#include "example.tab.h" // 包含由Bison生成的头文件

extern FILE* yyin; // Flex生成的词法分析器的输入流

int main() {
    const char* input = "1+2*3-4/2"; // 要解析的字符串
    yyin = fmemopen((void*)input, strlen(input), "r"); // 将字符串打开为输入流

    yyparse(); // 执行语法分析

    fclose(yyin); // 关闭输入流
    return 0;
}

int yyerror(const char* msg) {
    printf("Error: %s\n", msg);
    return 0;
}
