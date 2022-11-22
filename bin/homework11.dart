import 'dart:io';
import 'dart:math';
import 'package:more/iterable.dart';
import 'package:more/more.dart';

void main() {
  // Question 2
  List<int> arr = [1, 2, 3, 4, 5, 6, 7];
  printList(list: arr);

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
  //guessGame();

// Question 9
  RockPaperScissors();

// Question 10
  print(passwordGenerator());

// Question 11
  print(birthdayTracker());

  // Question 12
  List<int> list = [16, 25, 8, 2, 0, 9];
  print(FirstAndLast(numberOfList: list));
} //end of main

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

  valueByScore({required int score}) {
    if (score == 1)
      return allergy.eggs;
    else if (score == 2)
      return allergy.peanuts;
    else if (score == 4)
      return allergy.shellfish;
    else if (score == 8)
      return allergy.strawberries;
    else if (score == 16)
      return allergy.tomatoes;
    else if (score == 32)
      return allergy.chocolate;
    else if (score == 64)
      return allergy.pollen;
    else
      return allergy.cats;
  }

  listOfallergies({required int score}) {
    List<String> list = [];
    //int remaining = score;
    List<int> scores = [128, 64, 32, 16, 8, 4, 2, 1];
    for (int i = 0; i < scores.length; i++) {
      if (score > scores[i]) {
        score -= scores[i];
        list.add(valueByScore(score: scores[i]));
      }
    }
    return list;
  }

  void main() {
    print(listOfallergies(score: 34));
  }
}

//Question 2

printList({required List<int> list}) {
  int count = 0;
  List<int> newArrary = [];

  for (int i = 0; i < list.length; i++) {
    if (list[i] < 3) newArrary.add(list[i]);
    if (list[i] > 5) count++;
  }
  print("This the elements that is smaller than 3 : \n" +
      "$newArrary \n and the number of the elements that is greater than 5 is : $count");
}

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
// guessGame() {
//   Random random = Random();
//   int num;
//   String Number = "";
//   int numberOfGuesses = 0;

//   print("Try to guess a number from 4 digits");
//   String? str = stdin.readLineSync();

//   for (int i = 0; i < 4; i++) {
//     num = random.nextInt(10);
//     Number += num.toString();
//   }

// }

//Question 9
void RockPaperScissors() {
  print("Let play Rock-Paper-Scissors, choose an option: ");
  String? userOption = stdin.readLineSync()?.trim().toLowerCase();
  List<String> options = ["rock", "paper", "scissors"];

  Random random = Random();
  int num = random.nextInt(3);
  String computerOption = options[num];

  if (computerOption == userOption)
    print("We have a tie!");
  else if (computerOption == "rock" && userOption == "paper" ||
      computerOption == "paper" && userOption == "scissors" ||
      computerOption == "scissors" && userOption == "rock")
    print("The computer chose $computerOption so, You win");
  else
    print("The computer chose $computerOption so, You lose");
}

//Question 10
String? passwordGenerator() {
  String validChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" +
      "abcdefghijklmnopqrstuvwxyz" +
      "1234567890" +
      '!@#\$%&*()/';

  String password = "";
  List arr = validChar.split("").toList();

  Random random = Random();
  for (int i = 0; i <= 16; i++) {
    // set the password length to 16
    int num = random.nextInt(arr.length); // generate a random number
    password += arr[num];
  }
  return password;
}

//Question 11
String? birthdayTracker() {
  Map<String, String> BODmap = {
    "sara": "28-05-1995",
    "reema": "01-09-1992",
    "noura": "15-05-1999",
    "raghad": "09-07-2002",
  };

  print("Which of your friends you want to know their birthday:");
  String? name = stdin.readLineSync()?.trim().toLowerCase();
  if (BODmap[name] != null)
    return BODmap[name];
  else
    return " $name's birthdary isn't found ";
}

// Question 12
List<int> FirstAndLast({required List<int> numberOfList}) {
  List<int> arr = [];
  arr.add(numberOfList[0]);
  arr.add(numberOfList[numberOfList.length - 1]);

  return arr;
}
