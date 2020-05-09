%{
    int count=0;
    int keywordCount=0;
%}

keyword int|char|float|double|bool|if|else|do|for|while|switch|case|default|exit|delete|new

%%
{keyword} {keywordCount++;}
[a-zA-Z_][a-zA-Z0-9_]+ {count++;}
. {}
%%

int main(int args, char* argv[]){
    yyin = fopen("identifier.txt", "r");
    yylex();

    printf("\nNumber of valid indentifiers are: %d\n Number of keyqords are: %d", count, keywordCount);

    fclose(yyin);
    return 0;
}