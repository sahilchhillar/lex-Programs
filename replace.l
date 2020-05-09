%{
%}

%%

[a-z]* {
    yytext[0] = yytext[0]+3;
    printf("%s",yytext);
}

.* {}

%%

int main(int args, char* argv[]){
    yyin = fopen("replace.txt","r");
    yylex();

    fclose(yyin);

    return 0;
}