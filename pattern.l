%{
    int i,j;
    int c=0;
%}

%%
[a-zA-Z0-9]* {
    for(i=0; i<yyleng; i++){
        for(j=0; j<=i; j++){
            printf("%c", yytext[j]);
        }
        printf("\n");
    }
}
%%

int main(int args, char* argv[]){
    yyin = fopen("pattern.txt","r");
    yylex();
   
    fclose(yyin);
    return 0;
}