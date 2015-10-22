/* Checks up to 100 */
#include <stdio.h>
#include <string.h>

int main() {
	double firstFraction = 9;
	firstFraction = firstFraction/10;
	double secondFraction = 10;
	secondFraction = secondFraction/11;
	double thirdFraction = firstFraction*secondFraction;

	for(int i=0;i<100;i++){
		firstFraction = secondFraction;
		secondFraction = thirdFraction;
		thirdFraction = firstFraction*secondFraction;
		printf("dn = %f\n", thirdFraction);
		if(thirdFraction > 1.0) {
			printf("False\n");
			break;
		}
	}
}