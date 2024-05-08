//
//  exec.c
//  
//
//  Created by Louis on 3/25/24.
//
#include <stdio.h>
#include <stdlib.h>

int main() {
  // Input two hexadecimal numbers
  unsigned char x, y;
  printf("Enter first hexadecimal number (0-9F): ");
  scanf("%x", &x);
  printf("Enter second hexadecimal number (0-9F): ");
  scanf("%x", &y);

  // Input character for operation (A, B, C, or D)
  char choice;
  printf("Enter operation (A, B, C, or D): ");
  scanf(" %c", &choice);

  // Calculate result based on user input
  unsigned char result;
  switch (choice) {
    case 'A':
      result = x + y;
      printf("Sum: %x\n", result);
      break;
    case 'B':
      result = abs(x - y);
      printf("Difference: %x\n", result);
      break;
    case 'C':
      result = x * y;
      printf("Product: %x\n", result);
      break;
    case 'D':
      if (y == 0) {
        printf("Division by zero error\n");
      } else {
        result = x / y;
        printf("Quotient: %x\n", result);
      }
      break;
    default:
      printf("Invalid input\n");
  }

  return 0;
}
