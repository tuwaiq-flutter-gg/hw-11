import 'dart:io';
//Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
main() {}

class divisors {
  List<num> numbers = [];

  userinput() {
    int i = 0;
    print("Enter number : ");
    int number = int.parse(stdin.readLineSync()!);
    for (var i = 1; i <= number; i++) {
      if (number % i == 0) {
        print(i);
      }
    }
  }
}
