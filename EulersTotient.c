#include <stdio.h>
#include <string.h>

int greatestCommonDivisor(int firstValue, int secondValue) {
    if (firstValue == 0){
        return secondValue;
    }
    return greatestCommonDivisor(secondValue%firstValue, firstValue);
}
 
int calculator(unsigned int n) {
    unsigned int result = 1;
    for (int i=2; i<n; i++)
        if (greatestCommonDivisor(i, n) == 1) {
            result++;
        }
    return result;
}

int main() {
    for (int n=0; n<=10; n++)
      printf("calculator(%d) = %d\n", n, calculator(n));
    return 0;
}