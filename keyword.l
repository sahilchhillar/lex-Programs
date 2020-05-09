%{
    int num=0;
    int count=0;
%}

keyword int|char|float|double|bool|if|else|do|for|while|switch|case|default|exit|delete|new

%%
{keyword} {count++;}
[a-zA-Z_][a-zA-Z0-9_]+ {num++;}

.*|'\n' {}

%%

int main(int args, char* argv[]){
    yyin = fopen("keyword.txt", "r");
    yylex();

    printf("Number of valid keywords are: %d \n", count);
    printf("Number of valid identifiers are: %d \n", num);

    fclose(yyin);
    return 0;
}