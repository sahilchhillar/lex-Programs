%{
    int length=0;
    char word[100];
    #include<string.h>
%}

%%

[a-z]* {
    if(yyleng>length){
        length = yyleng;
        strcpy(word, yytext);
    }
}

. {}

%%

int main(int args, char* argv[]){
    yyin = fopen("longestWord.txt","r");
    yylex();

    printf("Longest string in the sentence is %s and its length is %d", word, length);

    fclose(yyin);
    return 0;
}