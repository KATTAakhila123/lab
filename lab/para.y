%{
#include<stdio.h>
void yyerror(char *s);
int flag=0;
%}
%token '('')' '\n'
%%
N:L '\n' {printf("valid\n");flag=1;return 0;}
;
L:L '(' L ')' {}
| {}
;
%%
void main()
{
yyparse();
if(flag==0)
printf("invalid");
}
void yyerror(char *s){
}

