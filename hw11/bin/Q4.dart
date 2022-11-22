import 'dart:io';

numberDivisors() {
  print("please inter number");
  int? number = int.parse(stdin.readLineSync()!);
  print(number % 2);

  if (number > 1) {
    for (var i = 1; i <= number; i++) {
      if (number % i == 0) {
        print("$i is divisor by $number");
      }
    }
  }
}
