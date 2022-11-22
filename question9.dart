//Make a two-player Rock-Paper-Scissors game against the computer, ask for user’s input, compare the user input with the computer chosen (Randomly), print out a message to the user if he did win "You win", print out a message to the user "We have a tie!" if the computer and user are the same, or "You lose" otherwise. Don't forget to handel wrong inputs.



import 'dart:io';
import 'dart:math';

enum move { rock, paper, Scissors }

main() {
  var playermove;
  while (true) {
    stdout.write("welcome to the game ROCK PAPER SCISSORS");
    final input = stdin.readLineSync();
    //player move

    if (input == "r") {
      playermove = move.rock;
    } else if (input == "p") {
      playermove = move.paper;
    } else if (input == "s") {
      playermove = move.Scissors;
    } else if (input == "q") {
      break;
    } else {
      print("Enter valid input");
    }
  }
  //computer move
  final randomnumber = Random().nextInt(3);
  final ComputerMove = move.values[randomnumber];

  print("you played $playermove");
  print("computer played $ComputerMove");

  if (playermove == move.rock && ComputerMove == move.Scissors ||
      playermove == move.paper && ComputerMove == move.rock ||
      playermove == move.Scissors && ComputerMove == move.paper) {
    print("YOU WIN !!");
  } else if (playermove == ComputerMove) {
    print("ITS DRAW");
  } else {
    print("UNFORTUNATELY YOU LOSE!!");
  }
}