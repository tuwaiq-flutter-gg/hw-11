import 'dart:io';
import 'dart:math';
import 'package:more/iterable.dart';
import 'package:more/more.dart';

void main() {
  print(birthdayTracker());
  // Question 1
  // Question 2

  // Question 3
  print("Enter a string to determine if its palindrome or not");
  String? stringPalindrome = stdin.readLineSync();

  isPalindrome(str: stringPalindrome!);

  //Question 4
  print("Enter a number to display the list of its diviors");
  String? stringNum = stdin.readLineSync();
  int num = int.parse(stringNum!);
  print(divisors(num: num));

  //Question 5
  guessRandom();

// Question 6
  List<int> list1 = [2, 3, 4, 5, 6, 5];
  List<int> list2 = [2, 6, 9, 8, 7, 5, 5];
  print(commonItems(list1: list1, list2: list2));

// Question 7
  reverseSentance();

// Question 8
// Question 9
// Question 10
// Question 11
  // Question 12
  List<int> list = [16, 25, 8, 2, 0, 9];
  print(FirstAndLast(numberOfList: list));
}

// Question 1

enum allergy {
  eggs(score: 1),
  peanuts(score: 2),
  shellfish(score: 4),
  strawberries(score: 8),
  tomatoes(score: 16),
  chocolate(score: 32),
  pollen(score: 64),
  cats(score: 128);

  final int? score;
  const allergy({this.score});
}

//Question 2

//Question 3
isPalindrome({required String str}) {
  String? string = "";

  for (int i = str.length - 1; i > -1; i--) {
    string = (string! + str[i]);
  }

  if (str == string)
    print("The string $str is palindrome ");
  else
    print("The string $str is not palindrome ");
}

//Question 4
List<int> divisors({required int num}) {
  List<int> arr = [];
  for (int i = num; i > 0; i--) {
    if (num % i == 0) arr.add(i);
  }
  return arr;
}

// Question 5
void guessRandom() {
  Random random = Random();
  int randomNum = random.nextInt(50) + 1;

  print("Guess a number between 1 and 50");
  String? stringNumber = stdin.readLineSync();
  int guessedNum = int.parse(stringNumber!);

  if (guessedNum > randomNum)
    print("You guessed too high");
  else if (guessedNum < randomNum)
    print("You guessed too low.");
  else
    print("You guessed it right.");
}

//Question 6
List? commonItems({List? list1, List? list2}) {
  List list =
      list1!.toSet().where((item) => list2!.toSet().contains(item)).toList();
  return list;
}

//Question 7
void reverseSentance() {
  print("Enter a Sentance to reverse its words");
  String? str = stdin.readLineSync();

  List<String> list = [];
  list = str!.split(" ");
  String string = "";

  Iterable<String> reverseList = list.reversed;

  print(reverseList.toString());
}

//Question 8

//Question 9
void RockPaperScissors(String userOption) {
  print("Let play Rock-Paper-Scissors, choose an option: ");
  String? str = stdin.readLineSync()?.trim().toLowerCase();
  List<String> options = ["rock", "paper", "scissors"];

  Random random = Random();
  int num = random.nextInt(3);
  String computerOption = options[num];

//  if(computerOption.toLowerCase() == options[0] && );
}

//Question 10
String? passwordGenerator() {}

//Question 11
String? birthdayTracker() {
  Map<String, String> BODmap = {
    "Sara": "28-05-1995",
    "Reema": "01-09-1992",
    "Noura": "15-05-1999",
    "Raghad": "09-07-2002",
  };

  print("Which of your friends you want to know their birthday:");
  String? name = stdin.readLineSync()?.trim().toLowerCase();
  
  if (BODmap != null) {
    return BODmap['$name'];
  }
}

// Question 12
List<int> FirstAndLast({required List<int> numberOfList}) {
  List<int> arr = [];
  arr.add(numberOfList[0]);
  arr.add(numberOfList[numberOfList.length - 1]);

  return arr;
}
