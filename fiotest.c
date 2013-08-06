#include <stdio.h>

void writefile();

int main(){
	printf("stupid test i am stupid relearn c bcs i suk\n");
    writefile();
    printf("completed\n");
return 0;
}

FILE *fp;
int i = 0;

void writefile(){
    fp = fopen("testfile", "w");
    for(i;i<1240;i++){
        fprintf(fp, "%d\n",i);       
    }    

    fclose(fp);
}
