%{
    int yyerror();
    int yylex();
    #include<stdio.h>
    #include<stdlib.h>
%}

%token A B

%%
S: A E B'\n' {return 0;}
E: E A|;
%%

int main(int args, char* argv[]){
    printf("\nEnter the string:");
    yyparse();
    printf("\nThe string is valid");
}

int yyerror(){
    printf("\nThe string is invalid");
    exit(0);
}