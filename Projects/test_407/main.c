#include <stdio.h>
extern long long int sum(long long int, long long int);

int main(){
	long long int num1 = 4294967294;
	long long int num2 = 1000000000;
	long long int result;
	result = sum(num1, num2);
	printf("%lld + %lld = %lld\n", num1, num2, result);
	if((num1 + num2) == result){
		printf("Result is right!\n");
	}
	return 0;
}