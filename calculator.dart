import 'dart:io';

void main() {
  print("Welcome to the Simple Calculator!");
  
  stdout.write("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double sum = num1 + num2;
  
  print("The sum of $num1 and $num2 is: $sum");
}
