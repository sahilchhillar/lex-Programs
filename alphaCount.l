%{
    int vowel=0;
    int consonent=0;
%}

%%

[a-z|A-Z] {
    if(yytext[0] == 'a' || yytext[0] == 'e' || yytext[0] == 'i' || yytext[0] == 'o' || yytext[0] == 'u' || yytext[0] == 'A' || yytext[0] == 'E' || yytext[0] == 'I' || yytext[0] == 'O' || yytext[0] == 'U'){
        vowel++;
    }else{
        consonent++;
    }
}

. {}

%%

int main(int args, char* argv[]){
    yyin = fopen("alphaCount.txt", "r");
    yylex();

    printf("\nNumber of vowels are: %d", vowel);
    printf("\nNumber of consonents are: %d", consonent);

    fclose(yyin);
    return 0;
}