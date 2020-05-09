%{
    int line=0, character=0;
%}

%%

[a-zA-Z0-9] {character++;}
. {} 
\n {line++;}

%%

int main(int args, char* argv[]){
    yyin = fopen("count.txt", "r");
    yylex();

    printf("Number of lines are: %d\n Number of characters are: %d", line, character);

    fclose(yyin);
    return 0;
}