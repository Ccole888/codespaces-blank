#include <stdio.h>

extern unsigned char ram[];
extern void fill_Ram_Indirect(void);

int main()
{
    fill_Ram_Indirect();
    printf("RAM contents from 50h to 58H: \n");

    for(int i = 0x50; i <= 0x58; i++)
    {
        printf("%02X ", ram[i]);
    }
    printf("\n");

    return 0;
}