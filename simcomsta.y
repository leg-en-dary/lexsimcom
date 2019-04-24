%{
	#include<stdio.h>
	#include"y.tab.h"
%}

%token DOT compound word

%%

s1	:s s1
	|s
	;
s	:wordlist compound wordlist DOT					{printf("Statement is Compound statement\n");}
	|wordlist DOT							{printf("Statement is Simple statement\n");}
	; 

wordlist:word  wordlist
	|word
	;


%%

extern FILE *yyin;

int main()
{
	yyin=fopen("input_sim_comp.txt","r");
	yyparse();			
	return 0;
}

int yyerror()
{
	return 0;
}
