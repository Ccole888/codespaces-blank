#include <stdio.h>

extern unsigned char ram[];
extern void sum(void);

int main()
{
    sum();
    printf("RAM contents from 50h\n");

        printf("%02i ", ram[0x50]);
    
    printf("\n");

    return 0;
}