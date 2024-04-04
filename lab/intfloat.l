%{
	#include<stdio.h>
	int i=0;
	int f=0;
%}

%%
[0-9]+"."[0-9]+ {ECHO;printf("\ndecimal value\n");f++;}
[0-9]+ {ECHO;printf("\ninteger value\n");i++;}
%%
int yywrap()
{return 1;}
int main()
{
printf("enter the values");
yylex();
printf("float count=%d\ninteger count=%d",f,i);
return 0;
}