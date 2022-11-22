




import 'dart:convert';
import 'dart:core';

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  //....1....
  allergens ();
//.....2..............
   int total=0;
List<int> numpers=[1,2,3,4,7,9,8,6,55];

 for (var numper in numpers){
if (numper < 3){
  stdout.write("$numper , ");
}else{
  total +=numper;
}

}
//...3.....

  stdout.write("Enter a word: ");
  String? input = stdin.readLineSync()?.toLowerCase();
  String? revInput = input?.split('').reversed.join('');
  input == revInput
      ? print("The word is palindrome")
      : print("The word is not a palindrome");
 //...4......
 Qfore();
 //.....5......
    print(" exit ");
  guess();
  //.....6....

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
  Set<int> c = {};

  for (var i in a) {
    for (var j in b) {
      if (i == j) {
        c.add(i);
      }
    }
  }
   print(Set.from(a).intersection(Set.from(b)).toList());
   //......7.........
    stdout.write("Please give a sentence: ");
  String? sent = stdin.readLineSync();

       uaserWrit(sent!);
  //....8..........
        final random = Random();
  String randomNumber = (1000 + random.nextInt(9999 - 1000)).toString();
  print(randomNumber);

  stdout.write("Welcome to bouns and Minus\nType 'exit' to stop the game\n");

  int attempts = 0;

 
  while (true) {
    int minus = 0;
    int bonus = 0;
    attempts += 1;

    stdout.write("\nPlease choose a four digit number: ");
    String? chosenNumber = stdin.readLineSync();

    if (chosenNumber == randomNumber) {
      print("bonus! You took $attempts attempts");
      break;
    } else if (chosenNumber == "exit") {
      print("Bye bye!");
      break;
    } else if (chosenNumber?.length != randomNumber.length) {
      print("Incorrect number. Make sure to give 4 digit number");
      continue;
    }
    for (var i = 0; i < randomNumber.length; i++) {
      if (chosenNumber![i] == randomNumber[i]) {
        minus += 1;
      } else if (randomNumber.contains(chosenNumber[i])) {
        bonus += 1;
      }
    }
    print("\nAttempts: $attempts \nminus: $minus, bonus: $bonus");
  }
  //......9............

  print("Welcome to Rock, Paper, Scissors\nType 'exit' to stop the game");
  final random1 = Random();
  Map<String, String> rules = {
    "rock": "scissors",
    "scissors": "paper",
    "paper": "rock"
  };
  int user = 0;
  int comp = 0;
  List<String> options = ["rock", "paper", "scissors"];
  while (true) {
    String compChoice = options[random.nextInt(options.length)];
    stdout.write("\nPlease choose Rock, Paper or Scissors: ");
    String userChoice = stdin.readLineSync()!.toLowerCase();

    if (userChoice == "exit") {
      print("\nYou: $user Computer: $comp\nBye Bye!");
      break;
    }

    if (!options.contains(userChoice)) {
      print("You lose");
      continue;
    } else if (compChoice == userChoice) {
      print("We have a tie!");
    } else if (rules[compChoice] == userChoice) {
      print("Computer wins: $compChoice vs $userChoice");
      comp += 1;
    } else if (rules[userChoice] == compChoice) {
      print("You win: $userChoice vs $compChoice");
      user += 1;
    }
  }
     //.....10......
      stdout.write("How strong a password do you want? Weak, Medium or Strong: ");
     String choice = stdin.readLineSync()!.toLowerCase();

     passwordGenerator(choice);
     //....11.......
    Map<String, Object> Bodmap = {
    "khuloud": "24/10/1989",
    "mohseen": "13/04/1995",
    "Ateeq": "2/02/2020",
  };

  print("\nHello there!. We know the birthdays of the following people: \n");

  Bodmap.forEach((key, value) {
    print(key);
  });

  stdout.write("\nWho's birthday do you want to know? ");
  String choice1 = stdin.readLineSync()!;

  print("\n$choice1's birthday is ${Bodmap[choice1]}\n");

// .........12....
  numberOfList({List<int>? list}){
   return [list![0] , list[list.length-1]];
 }

//.....12.....
print(numberOfList(list: [6,5,2,7,90]));






}
   
//....1............

allergens () {
  //جربت اكثر من طريقه منها حطيتها بسويتش وخليت اليوزر يدخل اسم المنتج ويطلع له النسبه ولكن هذا ليس المطلوب 

   
   print("Enter The allergy do you have:\n 1.eggs\n 2.peanuts\n 3.shellfish\n 4.strawberries\n 5.tomatoes\n 6.chocolate\n 7.pollen\n 8.cats");
   int? allergys= int.parse(stdin.readLineSync()!);
 

}

//....4.....
 Qfore(){
stdout.write("Please choose a number: ");
  var number = int.parse(stdin.readLineSync()!);
  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }     


 }
//....5......
guess() {
  final random = Random();
  int randNumber = random.nextInt(50);
  int attempt = 0;

  while (true) {
    attempt += 1;
    stdout.write("Please choose a number between 0 and 50: ");
    String chosenNumber = stdin.readLineSync()!;

    if (chosenNumber.toLowerCase() == "exit") {
      print("\nBye");
      break;
    } else if (int.parse(chosenNumber) > 50) {
      print("Please do not go over 50");
       break;
    }if (int.parse(chosenNumber) == randNumber) {
      print("Bingo! You tried $attempt times\n");
      continue;
    } else if (int.parse(chosenNumber) > randNumber) {
      print("You are higher");
      continue;
    } else {
      print("You are lower");
      continue;
    }
  }
}
//.......7............
void uaserWrit(String sent) {
 
  String a = sent.split(" ").reversed.toList().join(" ");
  print(a);
}
//.....10.........
shuffleGenerator(int strength) {
  final random = Random.secure();
  List<int> intList = List.generate(strength, (_) => random.nextInt(255));
  List charList = base64UrlEncode(intList).split('').toList();
  charList.shuffle();
  print("\nYour password is: ${charList.join('')}\n");
}

void passwordGenerator(String strength) {
  if (strength == "weak") {
    shuffleGenerator(5);
  } else if (strength == "medium") {
    shuffleGenerator(15);
  } else if (strength == "strong") {
    shuffleGenerator(25);
  } else {
    print("Incorrect word is given");
  }
}
  
  





  

 


 
