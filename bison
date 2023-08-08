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

# .y文件需要在include下加上下面两个声明消除warnning
void yyerror(const char* msg);
int yylex(void);

# 一行一行解析文件的用法
%{
#include <stdio.h>
#include <string.h>

extern char* current_line;
%}

%token LINE

%%
start:   /* 语法规则 */
        ;
%%

int main() {
    FILE* file = fopen("input.txt", "r");
    if (file == NULL) {
        printf("Failed to open file.\n");
        return 1;
    }
    char line[256];
    while (fgets(line, sizeof(line), file) != NULL) {
        current_line = strdup(line); // 保存当前行的副本
        yyparse(); // 解析当前行
        free(current_line); // 释放保存的行副本的内存
    }
    fclose(file);
    return 0;
}

void yyerror(const char* msg) {
    printf("Error: %s\n", msg);
}



