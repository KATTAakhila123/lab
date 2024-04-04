%{
	#include<stdio.h>
	int v=0;
	int c=0;
%}

%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;}
%%
int yywrap()
{return 1;}
int main()
{
printf("enter the sentence");
yylex();
printf("vowel count=%d\nconsonent count=%d",v,c);
return 0;
}