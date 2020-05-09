%{
    int countWord=0;
%}

%%

[a-z][a-zA-Z0-9]* {countWord++;}

%%

int main(int args, char* argv[]){
    yyin = fopen("start.txt", "r");
    yylex();

    printf("Number of words starting with a small letter are %d:", countWord);
    fclose(yyin);
    return 0;
}