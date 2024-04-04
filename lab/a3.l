%{
	#include<stdio.h>
	int length;
%}

%%
[a-zA-Z0-9]+ {length=yyleng;fun(length);}
%%
fun(int l)
{
if(yytext[0]=='a' || yytext[0]=='A'){  
   if(length==3){
   printf("%s is with length 3 and start with a\n",yytext);
   }
   else{
   printf(" not with length 3\n");
   }
 }
 else{
 printf("Is not starting with a\n");
 }
 }
 int yywrap()
 {return 1;}
int main()
{
printf("enter the sentence");
yylex();
return 0;
}