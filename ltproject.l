%{
  /* Definition section */
  #include<stdio.h>
  #include<stdlib.h>
  #include"y.tab.h"
  extern int yylval;
%}
  
/* Rule Section */
 %%
 F {yylval=0;return ZERO;}
 T {yylval=1;return ONE;}
   
 [ \t] {;}
 \n return 0;
 . return yytext[0];
%%
  
    
int yywrap()  
 {  
  return 1;  
 }  