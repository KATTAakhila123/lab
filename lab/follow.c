#include<stdio.h>
#include<ctype.h>
#include<string.h>
int n,m=0,p,i=0,j=0;
char a[10][10],followresult[10];
void follow(char c);
void first(char c);
void addtoresult(char);
int main()
{
int i;
int choice;
char c,ch;
printf("enter no. of productions\n");
scanf("%d",&n);
printf("enter %d production\n production with multiple termes should be give as separate productions \n",n);
for(i=0;i<n;i++)
scanf("%s",a[i]);
do{
m=0;
printf("\nfind follow of:");
scanf("%s",&c);
follow(c);
printf("\n follow(%c)={",c);
for(i=0;i<m;i++)
printf("%c",followresult[i]);
printf("}\n");
printf("press '1' to continue");
scanf("%d",&choice);
}
while(choice==1);
}
void follow(char c)
{
if(a[0][0]==c)addtoresult('$');
for(i=0;i<n;i++)
{
for(j=2;j<strlen(a[i]);j++)
{
if(a[i][j]==c)
{
if(a[i][j+1]!='\0')first(a[i][j+1]);
if(a[i][j+1]=='\0')
follow(a[i][0]);
}
}
}
}
void first(char c)
{
int k;
if(!(isupper(c)))
addtoresult(c);
for(k=0;k<n;k++)
{
if(a[k][0]==c)
{
if(a[k][2]=='$')follow(a[k][0]);
else if(islower(a[k][2]))
addtoresult(a[k][2]);
else first(a[k][2]);
}
}
}
void addtoresult(char c)
{
int i;
for(i=0;i<=m;i++)
if(followresult[i]==c)
return;
followresult[m++]=c;
}

