#include <stdio.h>
extern int cseg(int,int,int,int,int,int,int,int);
int main(){
	int a=1,b=2,c=3,d=4,e=5,f=6,g=7,h=8;
	printf("%d+%d+%d+%d-%d-%d-%d-%d = %d\n", a,b,c,d,e,f,g,h, cseg(a,b,c,d,e,f,g,h));
	return 0;
}