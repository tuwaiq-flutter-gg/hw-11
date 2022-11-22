import 'dart:collection';
import 'dart:math';

import 'package:hw_11/hw_11.dart' as hw_11;
import 'dart:io';

void main(List<String> arguments) {
  allergyScore(); //1

  printElement([1, 1, 4, 3, 6, 5, 2, 2, 8]); //2

  palindromeTest(); //3

  //divisorsNumber(); //4

  randomNumber(); // 5

  withoutDuplicates([2, 4, 4, 5, 5, 6, 6, 8, 8]); //6

   backwardsWord(); //7

  play();

  RockPaperScissors(); // 9


  passwords(); //10

  BODmap(); // 11

  numberOfList([6, 5, 8, 3, 4, 0]);
}

/* 1- Given a person's allergy score, determine whether or not they're allergic to a given item, and their full list of allergies. An allergy test produces a single numeric score which contains the information about all the allergies the person has (that they were tested for).
The list of items (and their value) that were tested are:

eggs (1)
peanuts (2)
shellfish (4)
strawberries (8)
tomatoes (16)
chocolate (32)
pollen (64)
cats (128)
So for example if Amal is allergic to peanuts and chocolate, he gets a score of 34. Now, given just that score of 34, your program should be able to say: Whether Amal is allergic to any one of those allergens listed above. All the allergens Amal is allergic to. */

allergyScore() {
  Map<String, int>? allergyScore = {
    'eggs': 1,
    'peanuts': 2,
    'shellfish': 4,
    'tomatoes': 16,
    'chocolate': 32,
    'pollen': 64,
    'cats': 128
  };

  print("Do you have a allergy? \n Answer Yes or No");
  String? answer = stdin.readLineSync();

  // User says yes we can continue
  if (answer == 'Yes') {
    print(
        " - eggs \n - peanuts \n - shellfish \n -tomatoes \n - chocolate \n - pollen \n - cats");
    print("________________________________________");
    print('\n How many foods are you allergic to?');
    int numFood = int.parse(stdin.readLineSync()!);

    int sum = 0;
    for (int i = 1; i <= numFood; i++) {
      stdout.write('entrt the name of the  food $i:');
      String? Food = stdin.readLineSync();
      sum = sum + allergyScore[Food]!;
    }
    print(" allergy Score : $sum");
  } else {
    print("I wish you good health ^ـ^");
  }
}

//2 - write a program that prints out all the elements of the list that
// are less than 3, and the total of all the elements in the list greater than 5.

printElement(List<int> elements) {
  List lessThan3 = [];
  for (var i = 0; i < elements.length; i++) {
    if (elements[i] < 5) {
      lessThan3.add(elements[i]);
    }
  }
  print(lessThan3);
}

//3 - write a program that that take a string from the user, and print out whether this
//string is a palindrome or not. A palindrome is a string that reads the same forwards and backwards for example: reviver is a palindrome.

palindromeTest() {
  print("enter number or word to reverse test it :");
  dynamic word = stdin.readLineSync();
  dynamic? reverse = word!.split('').reversed.join('');

  if (reverse == word) {
    print(" it is a palindrome");
  } else {
    print(" it is not palindrome");
  }
}

// 4 - Create a program that asks the user for a number and then
// prints out a list of all the divisors of that number.

divisorsNumber() {
  print("Enter a number to calculate its divisors");
  int? numFromUser = int.parse(stdin.readLineSync()!);
  // List? list = [for (var i = 0; i <= 100; i++) i];

  List<int> divnNumFromUser = [];
  for (int i = 0; i <= 100; i++) {
    if (numFromUser % i == 0) {
      divnNumFromUser.add(i);
    }
  }
  print('List of divisors of the $numFromUser is : $divnNumFromUser ');
}

// 5 - Generate a random number between 1 and 50. Ask the user to guess the number,
//then tell them whether they guessed too low, too high, or exactly right.

randomNumber() {
  Random random = new Random();
  int randomNumber = random.nextInt(50);

  stdout.write("Guess a number from 1 to 50:");
  int? numUser = int.parse(stdin.readLineSync()!);
  if (numUser == randomNumber) {
    print('You guessed the number!');
  } else if (numUser > randomNumber - 5 && numUser < randomNumber + 5) {
    print("You  got close!");
  } else if (numUser < randomNumber - 5) {
    print('You are too low');
  } else if (numUser < randomNumber + 5) {
    print('You are too high');
  }
}

// 6 - Write a program that returns a list that contains only the elements that are common between them (without duplicates).
// Make sure your program works on two lists of different sizes.

withoutDuplicates(List list) {
  List<String> arr = LinkedHashSet<String>.from(list).toList();
  print(arr);
}

//7 -
backwardsWord() {
  print('enter the word to reversed');
  String? word = stdin.readLineSync();
  print(word?.split('').reversed.join());
}

// 8 - Make a two-player Rock-Paper-Scissors game against the computer, ask for user’s input, compare the user input with the computer chosen (Randomly),
// print out a message to the user if he did win "You win", print out a message to the user "We have a tie!" if the computer and user are the same, or "You lose" otherwise. Don't forget to handel wrong inputs.
play() {}

// 9 - Make a two-player Rock-Paper-Scissors game against the computer, ask for user’s input, compare the user input with the computer chosen (Randomly), print out a message to the user if he did win "You win", print out a message to the user "We have a tie!" if the computer and user are the same,
// or "You lose" otherwise. Don't forget to handel wrong inputs.

RockPaperScissors() {
  var computer;
  var user;

  Random random = new Random();
  //int randomCombetr = random.nextInt();
}
// 10 -Write a password generator in Dart. put your own rules,
// strong passwords have a mix of lowercase and uppercase letters, numbers, and symbols. If the user iput is "Done" exit the program or generating a new password every time the user asks for a "new password".
passwords() {}

// 11-Write a program that will keep track of when your friend’s birthdays are,
//and be able to find that information based on their name. Create a map called BODmap of names and birthdays. When you run your program it should ask the user to enter a name, and return the birthday of that person back to them.

BODmap() {
  Map BODmap = {
    "asma": "1999/12/1",
    "mohammed": "1996/6/4",
    "amal": "1995/7/7"
  };
  print('entr your frind name');
  String? word = stdin.readLineSync();

  if (BODmap['asma'] == word) {
    print(BODmap["asma"]);
  } else if (BODmap["mohammed"] == word) {
    print(BODmap["mohammed"]);
  } else if (BODmap['amal'] == word) {
    print(BODmap["amal"]);
  }
}

// 12 - Create a function that takes a list of numbers called numberOfList
//and makes a new list of only the first and last elements of the given list.
numberOfList(List list) {
  List newList = [];
  newList.add(list[0]);
  newList.add(list[list.length - 1]);
  print(newList);
}
