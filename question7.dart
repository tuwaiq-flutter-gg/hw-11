//Using functions write a program that asks the user for a multiple words string. Print the words in backwards order to the user.


import 'dart:io';

void main() {
  stdout.write("Please give a sentence: ");
  String sentence = stdin.readLineSync()!;

  reverseSentence(sentence);
}

void reverseSentence(String sentence) {
  /* Split the sentence into a list of words
  Reverse the list, then join the words back */
  String a = sentence.split(" ").reversed.toList().join(" ");
  print(a);
}