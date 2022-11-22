import 'dart:math';
import 'dart:io';

gamePlay() {
  Random random = Random();
  int fourDigt = random.nextInt(8999) + 1000;
  String randomNum = fourDigt.toString();
  int gussing = 0;

  while (gussing != 4) {
    gussing = 0;
    print(randomNum);
    stdout.write("guess a 4-digit number: ");
    int input = int.parse(stdin.readLineSync()!);

    String inputStr = input.toString();
    if (input.toString().length == 4) {
      for (var i = 0; i < inputStr.length; i++) {
        if (inputStr[i] == randomNum[i]) {
          print("you got a bonus  ");
          input++;
        } else {
          print("you got a minus  ");
        }
      }
    } else {
      print("the number is not 4-digit number");
    }
  }
}
