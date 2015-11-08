/* Nested for loops, terrible implementation O(n^4) for this one, luckily we have a small n , looks to create all possible combinations of binary numbers in this case for length 4 */
/* Pipe into: egrep -e "1\d00" | uniq -u     .... In order to get numbers starting with 1*00.    */
/* | sort |  uniq | wc -l */
#include <stdio.h>
#include <string.h>

int main() {
	// for(int a=0;a<=1;a++) {
	// 	for(int b=0;b<=1;b++) {
	// 		for(int c=0;c<=1;c++) {
	// 			for(int d=0;d<=1;d++) {
	// 				printf("%d%d%d%d\n",a,b,c,d);
	// 			}
	// 		}
	// 	}
	// }
	// // printf("\n\n");

	// for(int a=0;a<=1;a++) {
	// 	for(int b=0;b<=1;b++) {
	// 		for(int c=0;c<=1;c++) {
	// 			for(int d=0;d<=1;d++) {
	// 				printf("%d%d%d%d\n",a,b,c,d);
	// 			}
	// 		}
	// 	}
	// }

	int n = 3;
	n = n%3;
	printf("%d\n", n);
}