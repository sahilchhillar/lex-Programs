%{
    int int_count=0, float_count=0;
%}

%%

^[-+]?[0-9]* {int_count++;}
^[-+]?[0-9]*[.][0-9]+$ {float_count++;}
.* {}

%%

int main(int args, char* argv[]){
    yyin = fopen("datatype.txt", "r");
    yylex();

    if(int_count != 0){
        printf("Number of integers are: %d\n", int_count);
    }
    if(float_count != 0){
        printf("Number of floating point number are: %d\n", float_count);
    }
    else{
        printf("\nNo integer or floating point number exists in the file");
    }

    fclose(yyin);
    return 0;
}