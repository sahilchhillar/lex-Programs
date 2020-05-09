%{
int operator=0, operand=0, openbrac=0, closebrac=0;
%}

%%
[+-/*] {
    operator++;
} 

[a-zA-Z0-9]+ {
    operand++;
}

"(" {
    openbrac++;
}

")" {
    closebrac++;
}

\n {
    if(openbrac==closebrac && operand>operator){
        printf("valid exp");
    }else {
        printf("invalid exp");
    }
    exit(0);
}
%%
int main(int args, char* argv[]){
yylex();
return 0;
}