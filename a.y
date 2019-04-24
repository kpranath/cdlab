%{
 #include<stdio.h>
%}
%token id num
%left '+' '-'
%left '*' '/'
%left '(' ')'
%%

stmt: E {printf("\n Expression is valid");}
E:E '+' E  {$$= $1+$3 ;printf("Addition %d",$$);}
|num
|id
;
%%
main()
{
 printf("Enter arithmatic expression\n");
 yyparse();
 }
int yyerror(){
printf("syntax error");
exit(1);
}
