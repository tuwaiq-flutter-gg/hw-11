import 'dart:math';
import 'dart:io';

rockPaperScissors() {
  int computer = Random().nextInt(2);
  computer++;
  //Rock-Paper-Scissors

  print("please chase\n1- Rock\n2- Paper\n3- Scissors");
  String? input =  stdin.readLineSync().toString();
  //print(computer); check computer input
  switch (input) {
    case "1":
      {
        if (computer == 1) {
          print("We have a tie!");
        } else if (computer == 2) {
          print("You lose");
        } else if (computer == 3) {
          print("You win");
        }
      }
      break;
    case "2":
      {
        if (computer == 1) {
          print("You win");
        } else if (computer == 2) {
          print("We have a tie!");
        } else if (computer == 3) {
          print("You lose");
        }
      }
      break;
    case "3":
      {
        if (computer == 1) {
          print("You lose");
        } else if (computer == 2) {
          print("You win");
        } else if (computer == 3) {
          print("We have a tie!");
        }
      }
      break;
    default:
      {
        print("WRONG!");
      }
      break;
  }
}
