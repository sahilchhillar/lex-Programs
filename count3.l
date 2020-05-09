%{
    int count=0;
%}

%%
[a-zA-Z0-9]+ {
    if(yyleng > 3){
        count++;
    }
}
%%

int main(int args, char* argv){
    yyin = fopen("count3.txt", "r");
    yylex();
    printf("Number of string are: %d", count);
    fclose(yyin);
    return 0;
}