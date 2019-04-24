%{
	#include<stdio.h>
	#include"y.tab.h"
%}

%%

(""[aA][nN][dD]"")|(""[oO][rR]"")|(""[bB][uU][tT]"")			return compound;
[a-zA-Z]+								return word;
[.]									return DOT;
[\n|\t|" "]								;
.									return 0;

%%

int yywrap()
{
	return 1;
}
