# 编译命令
flex script_flex.l

%{
包含的是C语言头文件等功能
%}

%%
切词功能
%%

# 需要手动输入内容 调用yy_scan_string
%option noinput

# 生成的c文件的名称
%option outfile="lex.yy.c"

有优先级的区别 写在前面优先级更高

# yytext和yyleng来复制字符串给bison使用
yylval.str = strndup(yytext, yyleng);
