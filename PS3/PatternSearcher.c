/* This code looks to change each element with all possible following elements and then recusivley invoke the function */
/* We pipe the output into egrep with the following command: egrep -v -c -e "12|34|56|78" ... This gives us the inverse count of all those that match the pattern given*/
/* pipe into uniq -u to remove duplicates */
/*  ./PatternSearcher | egrep -cv  "^A|^.{1}B|^.{2}C|^.{3}D|^.{4}E|^.{5}F|^.{6}G|^.{7}H"  */

#include <stdio.h>
#include <string.h>

int permNumber = 0;

void swapValues(char *firstValue, char *secondValue) {
  char temp;
  temp = *firstValue;
  *firstValue = *secondValue;
  *secondValue = temp;
}

void permute(char *stringPointer, int start, int end) {
  int i;
  if (start == end){
    permNumber++;
    // printf("Permutation (%d): ",permNumber);
    printf("%s\n",stringPointer);
  } else {
    for (i = start; i <= end; i++) {
      swapValues((stringPointer+start), (stringPointer+i));
      permute(stringPointer, start+1, end);
      swapValues((stringPointer+start), (stringPointer+i));
    }
  }
}

int main() {
  char str[] = "1234567890";
  int n = strlen(str);
  permute(str, 0, n-1);
  return 0;
}