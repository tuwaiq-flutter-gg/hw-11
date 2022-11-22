import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //1

  //2
  printList(listNum: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]);

  //3
  List word = ["reviver", "Amjad"];
  print(palindrome(word[0]));
  print(palindrome(word[1]));

  //4
  print("Enter the number you want to find all the divisors of : ");
  int? n1 = int.parse(stdin.readLineSync()!);
  divisors(number: n1);

  //5
  print("Enter Your expected number: ");
  int? n2 = int.parse(stdin.readLineSync()!);
  GenerateRandom(userNum: n2);

  //6
  common();

  //7
  print("Enter a sentence: ");
  var sentence = stdin.readLineSync();
  wordsInBackwards(sen: sentence);

  //8
  game();

  //9
  RPS();

  //10
  password();

  //11
  birthdays();

  //12
  listOf(numberOfList: [2, 4, 5, 6, 8]);
}
/*
1.So for example if Amal is allergic to peanuts and chocolate, he gets a score of 34. 
Now, given just that score of 34, your program should be able to say: Whether Amal is allergic to any one of those allergens listed above. All the allergens Amal is allergic to.
I dont understand the question
*/
// allergies(){

// }

/*
2.write a program that prints out all the elements of the list that are less than 3,
 and the total of all the elements in the list greater than 5.
*/
printList({List? listNum}) {
  num count = 0;
  List numbers = [];

  for (int i = 0; i < listNum!.length; i++) {
    if (listNum[i] < 3) {
      numbers.add(listNum[i]);
    } else if (listNum[i] > 5) {
      count += listNum[i];
    }
  }
  print("List of elements less than 3 => $numbers");
  print("The total of all the elements in the list greater than 5 = $count ");
}

/*
3.write a program that that take a string from the user, and print out whether this string is a palindrome or not.
 A palindrome is a string that reads the same forwards and backwards for example: reviver is a palindrome.
*/
String palindrome(input) {
  String word1 = input.split('').reversed.join();
  if (input == word1) {
    return " palindrome !! ";
  }
  return "No it's not a palindrome ";
}

/*
4.Create a program that asks the user for a number and then prints out a list of all the divisors of that number
*/
divisors({required num number}) {
  List allNumbers = [];
  for (var i = 1; i < number; i++) {
    if (number % i == 0) {
      allNumbers.add(i);
    }
  }
  print(allNumbers);
}

/*
5.Generate a random number between 1 and 50. Ask the user to guess the number,
 then tell them whether they guessed too low, too high, or exactly right.
*/
GenerateRandom({int? userNum}) {
  Random r = Random();
  int ranNum = r.nextInt(10);
  if (userNum == ranNum) {
    print(
        "exactly right !! [the random number = $ranNum | Your expected number $userNum  ");
  } else if (userNum! > ((ranNum / 2) / 2)) {
    print(
        "too high [the random number = $ranNum | Your expected number $userNum  ");
  } else if (userNum < (ranNum / 2)) {
    print(
        "too low [the random number = $ranNum | Your expected number $userNum  ");
  }
}

/*
6.Write a program that returns a list that contains only the elements that are common between them (without duplicates). 
Make sure your program works on two lists of different sizes.
*/
common() {
  final lists = [
    [10, 2, 8, 40, 14, 88],
    [2, 44, 90, 22, 90, 10, 11, 2, 2],
  ];

  final commonEle = lists.fold<Set>(
      lists.first.toSet(), (setA, list) => setA.intersection(list.toSet()));

  print('common elements => $commonEle');
}

/*
7.Using functions write a program that asks the user for a multiple words string. 
Print the words in backwards order to the user.
*/
wordsInBackwards({String? sen}) {
  String resentence = sen!.split(' ').reversed.join(' ');
  print(resentence);
}

/*
8.Create a program that will play a game with the user.
 The game works like this:
*/
game() {
  Random r = Random();
  int ranNum = r.nextInt(9999);
  if (ranNum < 1000) {
    ranNum += 1000;
  }
  String ranNumTostring = ranNum.toString();

  int bonus = 0; 
  int minus = 0; 
  bool untilGuessed = true;

  print("Enter 4 digit of numbers: ");
  String userGuesses = stdin.readLineSync()!;

  while (userGuesses.length != 4) {
    print("your entry is wrong . Enter 4 digit of numbers: ");
    userGuesses = stdin.readLineSync()!;
  }

  while (untilGuessed) {
    if (userGuesses == ranNumTostring) {
      print("you win your guess is correct");
      break;
    }
    for (var i = 0; i < ranNumTostring.length; i++) {
      if (userGuesses[i] == ranNumTostring[i]) {
        bonus++;
      } else {
        minus++;
        untilGuessed = false;
      }
    }
    print("you lose [Your bonus=$bonus & your minus = $minus & random number is $ranNumTostring ]");
  }
}

/*
9.Make a two-player Rock-Paper-Scissors game against the computer, ask for user’s input, compare the user input with the computer chosen (Randomly), 
print out a message to the user if he did win "You win", print out a message to the user "We have a tie!" if the computer and user are the same, or "You lose" otherwise. Don't forget to handel wrong inputs.
*/
RPS() {
  List RPS = ["rock", "paper", "scissors"];

  Random r = Random();
  int ranIndex = r.nextInt(3);

  print("let's play Rock-Paper-Scissors ");
  print("Enter your choice between[rock,paper,scissors]");
  var hisChoice = stdin.readLineSync()!;
  hisChoice = hisChoice.toLowerCase().trim();

  while (hisChoice.isEmpty ||
      hisChoice.contains(RegExp(r'^[0-9_\-=@,\.;!#%^&*(){}$]+$'))) {
    print("You did not enter a valid entry, type the options please");
    hisChoice = stdin.readLineSync()!;
  }
  //me r= comp p[i lose ]|me r= comp s[i win]          |me r= comp r[tie]
  //me p= comp s[i lose ]|me p= comp r[i win]          |me p= comp p[tie]
  //me s= comp r[i lose ]|me s= comp p[i win]          |me s= comp s[tie]
  if (hisChoice == "rock" && RPS[ranIndex] == "paper") {
    print(
        "YOU LOSE[ your chose is $hisChoice and the computer ${RPS[ranIndex]}] ");
  } else if (hisChoice == "rock" && RPS[ranIndex] == "scissors") {
    print(
        "YOU WIN[ your chose is $hisChoice and the computer ${RPS[ranIndex]}]");
  } else if (hisChoice == "paper" && RPS[ranIndex] == "scissors") {
    print(
        "YOU LOSE[ your chose is $hisChoice and the computer ${RPS[ranIndex]}]");
  } else if (hisChoice == "paper" && RPS[ranIndex] == "rock") {
    print(
        "YOU WIN[ your chose is $hisChoice and the computer ${RPS[ranIndex]}]");
  } else if (hisChoice == "scissors" && RPS[ranIndex] == "rock") {
    print(
        "YOU LOSE[ your chose is $hisChoice and the computer ${RPS[ranIndex]}]");
  } else if (hisChoice == "scissors" && RPS[ranIndex] == "paper") {
    print(
        "YOU WIN[ your chose is $hisChoice and the computer ${RPS[ranIndex]}]");
  } else {
    print(
        "WE HAVE A TIE[ your chose is $hisChoice and the computer ${RPS[ranIndex]}]");
  }
}

/*
10.Write a password generator in Dart. put your own rules, strong passwords have a mix of lowercase and uppercase letters,
 numbers, and symbols. If the user iput is "Done" exit the program or generating a new password every time the user asks for a "new password".
*/
password() {
  bool passcon = true;
  while (passcon) {
    var pass =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890@#%';
    int len = 18;
    Random ran = Random();
    String getRandomString = String.fromCharCodes(Iterable.generate(
        len, (_) => pass.codeUnitAt(ran.nextInt(pass.length))));
    print('Your password =>  $getRandomString');
    print("To generate new password type anything or F to Exit");
    String inputUser = stdin.readLineSync()!;
    (inputUser == "F" || inputUser == "f") ? passcon = false : passcon = true;
  }
}

/*
11.Write a program that will keep track of when your friend’s birthdays are, and be able to find that information based on their name.
 Create a map called BODmap of names and birthdays. When you run your program it should ask the user to enter a name, and return the birthday of that person back to them.
*/
birthdays() {
  Map BODmap = {"amjad": "8-2-2000", "jana": "1-1-2005", "mayan": "5-11-2020"};
  print("Enter the person's name to view his/her birthdate");
  String name = stdin.readLineSync()!;
  name = name.toLowerCase().trim();

  while (
      name.isEmpty || name.contains(RegExp(r'^[0-9_\-=@,\.;!#%^&*(){}$]+$'))) {
    print("You did not enter a valid entry, person's name please");
    name = stdin.readLineSync()!;
  }

  if (BODmap.containsKey(name)) {
    print("$name his/her birthdate => ${BODmap[name]}");
  } else {
    print("${name} his/her birthdate unsaved");
  }
}

/*
12.Create a function that takes a list of numbers called numberOfList 
and makes a new list of only the first and last elements of the given list.
*/
listOf({List? numberOfList}) {
  List FirLas = [numberOfList!.first, numberOfList.last];
  print(FirLas);
}
