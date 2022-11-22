import 'dart:math';
import 'dart:io';

guessNumber() {
  var random = Random();
  bool find = true;

  int randomNum = random.nextInt(50);
  print(randomNum);
  print("guess the number");
  int? number = int.parse(stdin.readLineSync()!);

  do {
    if (randomNum == number) {
      print("Congrats! your guess is correct");
      find = false;
    } else if (randomNum > number!) {
      print("your guess is lower, please try agin");
      int newNumber = int.parse(stdin.readLineSync()!);
      number = newNumber;
    } else if (randomNum < number) {
      print("your guess is bigger, please try agin");
      int? newNumber = int.parse(stdin.readLineSync()!);
      number = newNumber;
    } 
  } while (find);
}
