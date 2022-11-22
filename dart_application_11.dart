2//
printList(){
List <int> number= [1,5,3,3,6,2,4,3,6];
var updateNumber=0;
var sumUpdateNumber=0;
print([for(var i in number)if(i<3)i]);
for(var i=0; i<number.length;i++){
  // if(number[i]<3){
  //   print("List of element less than 3 = ${number[i]}");
  // }
  if (number[i]>5){
     sumUpdateNumber+=number[i];
  }
}
  print("Totle of elements grater than 5 = ${sumUpdateNumber}");
}
10//
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
  
 
3//
import 'dart:io';
void main(){
print('Enter Words or number');
    // User enter a string or a number
    String? original =  stdin.readLineSync();
  
   // then we will reverse the input
   String? reverse = original!.split('').reversed.join('');

  // then we will compare
  if(original == reverse)
  {
    print('Its A Palindrome');

  }else{
    print('Its A Not Palindrome');
  }
 
}
7//
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

12//
void main() async {
  print(numberList);
}

class numberList {
  numberOfList() {
    List list = [];
    print(list);
    var Firstelement = list.first;
    var Lastelement = list.last;
    List numberOfList1 = [Firstelement, Lastelement];
  }
}

5//
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

6//
solution_6(List list1, List list2) {
  var result = list1.where((element) => list2.contains(element));
  result = result.toSet();
  print(result);
}
8//
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
9//
q9() {
    print("What is your choice? Rock, Paper, Cissors?");
    String? inp9 = stdin.readLineSync()!.toLowerCase();
    Random random2 = Random();
    int randomRange = random2.nextInt(3);
    List<String> list9 = ["rock", "paper", "cissors"];
    var randomComp = list9[randomRange].toString();
    if (inp9 == randomComp) {
      return print("We have a tie!");
    } else if (inp9 == "rock" && randomComp == "scissors") {
      return print("You Win!");
    } else if (inp9 == "scissors" && randomComp == "paper") {
      return "You Win!";
    } else if (inp9 == "paper" && randomComp == "rock") {
      return print("You Win!");
    } else {
      return print("You lose");
    }
  }