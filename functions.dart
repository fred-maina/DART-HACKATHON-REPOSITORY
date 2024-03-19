import 'dart:io';

// Function to add two numbers
int add(int a, int b) {
  return a + b;
}

// Function to calculate the remainder of dividing two numbers
int calculateRemainder(int dividend, int divisor) {
  return dividend % divisor;
}

void main() {
  stdout.write("Choose operation:\n");
  stdout.write("1. Addition\n");
  stdout.write("2. Remainder calculation\n");

  int choice = int.parse(stdin.readLineSync()!);
  int result;

  // Perform selected operation based on user's choice
  switch (choice) {
    case 1:
      // Perform addition
      stdout.write("Enter first number: ");
      int num1 = int.parse(stdin.readLineSync()!);
      stdout.write("Enter second number: ");
      int num2 = int.parse(stdin.readLineSync()!);
      result = add(num1, num2);
      stdout.write("Result of addition: $result\n");
      break;
    case 2:
      // Perform modulo operation
      stdout.write("Enter dividend: ");
      int dividend = int.parse(stdin.readLineSync()!);
      stdout.write("Enter divisor: ");
      int divisor = int.parse(stdin.readLineSync()!);
      result = calculateRemainder(dividend, divisor);
      stdout.write("Remainder of $dividend divided by $divisor: $result\n");
      break;
    default:
      stdout.write("Invalid choice! Please choose 1 or 2.\n");
      break;
  }
}
