%{
    
%}

%%
[a-z] {
    yytext[0] = yytext[0]+3;
    printf("%c", yytext[0]);
}

[A-Z] {
    yytext[0] = yytext[0]+3;
    printf("%c", yytext[0]);
}

[0-9] {printf("%c", yytext[0]);}

. {}

%%

int main(int args, char* argv[]){
    yyin = fopen("replace3.txt", "r");
    yylex();

    fclose(yyin);
    return 0;    
}