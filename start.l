%{
    int countWord=0;
    char text[100];
%}

%%

[A-Z][a-zA-Z0-9]* {countWord++;}
. {}

%%

int main(int args, char* argv[]){
    yyin = fopen("start.txt", "r");
    yylex();

    printf("Number of words starting with a capital letter are %d:", countWord);
    fclose(yyin);
    return 0;
}