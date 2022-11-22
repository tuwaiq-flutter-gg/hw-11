import 'packges.dart';

void main(List<String> args) {
  allergicFun();
  print("---------------------------------------------------------");
  printNumber();
  print("---------------------------------------------------------");
  stdout.write("Enter a Words: ");
  palindrome(word: stdin.readLineSync());
  print("---------------------------------------------------------");
  stdout.write("Enter Number: ");
  divisors(number: int.parse(stdin.readLineSync()!));
  print("---------------------------------------------------------");
  stdout.write("Guess Number: ");
  guessNumber(number: int.parse(stdin.readLineSync()!));
  print("---------------------------------------------------------");
  FirstAndLast f =FirstAndLast();
  stdout.write("Plaes Enter 5 Numbers: ");
  for (var i = 0; i < 5; i++) {
   f.numberOfList.add(int.parse(stdin.readLineSync()!));
  }
  f.firstandlast();
  print("---------------------------------------------------------");
  birthDay();
  
}