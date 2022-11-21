
import 'dart:io';
import 'dart:math';

// 1
checkAllergy({int? score}){
  Map<String , int> allergens = {
    "cats" : 128,
    "pollen" : 64 ,
    "chocolate" : 32 ,
    "tomatoes" : 16 ,
    "strawberries" : 8 ,
    "shellfish" : 4 ,
    "peanuts" : 2 ,
    "eggs" : 1 ,
  } ;

  Map userAllergens = {};
  
  for (var element in allergens.entries) {
    if (score! >= element.value ) {
      score = score - element.value ;
      userAllergens.addEntries({element});
    }
  }

  print("you are allergic to : ");
  userAllergens.forEach((key, value) {
    stdout.write("$key , ");
  });

  print("");

}

// 2
printNumbers({ List<int>? list }){
  int totalScore = 0 ;
  stdout.write("numbers less than 3 : ");

  for (var number in list!) {
    if (number < 3) {
      stdout.write("$number , ");
    } else {
      totalScore += number ;
    }
  }
  print("");
    print("total numbers higher than 3 : $totalScore");
}

// 3
isPalindrome({String? text}){
  int lastIndex = text!.length - 1 ;
  bool theyAreSame = true;
  for (var i = 0; i < text.length~/2; i++) {
    if (text[i] != text[lastIndex--]) {
      theyAreSame = false ;
    }
  }

  if (theyAreSame) {
    print("$text is a palindrome. ");
  } else {
    print("$text is not a palindrome. ");

  }
}

// 4
findAllDevidors(){
  print("enter a number");
  var input = int.parse(stdin.readLineSync()!);

  List devidors = [] ;

  for (var i = 1; i < input; i++) {
    if (input % i == 0 ) {
      devidors.add(i);
    }
  }

  print(devidors);
}

// 5
randomNumbers(){
  Random random = Random();
  int randomNumber = random.nextInt(99) + 1;

  stdout.write("guess a number between 1 and 50 : ");
  int guess = int.parse(stdin.readLineSync()!);

  if (guess > randomNumber) {
    print("you guessed too high !");
  } else if(guess < randomNumber) {
    print("you guessed too low !");
  } else {
    print("you guessed exactly right !!");
  }

}

// 6
commonItems({List? list1 , List? list2}){
  int index = 0 ;
  List newList = [];
  if (list1!.length < list2!.length) {
    for (var element in list1) {
      if (element == list2[index++] && !newList.contains(element)) {
        newList.add(element);
      }
    }
  } else {
    for (var element in list2) {
      if (element == list1[index++] && !newList.contains(element)) {
        newList.add(element);
      }
    }
  }

  return newList ;
}

// 7
backwards(){
  print("enter a sentense : ");
  var input = stdin.readLineSync()!;

  List<String> backward = input.split(" ");

  for (var i = backward.length-1 ; i >= 0 ; i--) {
    stdout.write("${backward[i]} ");
  }
  print("");
}

// 8
game(){
  Random random = Random();
  int randomNumber = random.nextInt(8999) + 1000;
  String stringRandomNumber = randomNumber.toString();
  int guessedNumbers = 0 ;

  while(guessedNumbers != 4){
    
    guessedNumbers = 0 ;
    
    stdout.write("guess a 4-digit number : ");
    int guess = int.parse(stdin.readLineSync()!);

    String numbers = guess.toString();
    if(guess.toString().length == 4){
      for (var i = 0; i < numbers.length; i++) {
        if(numbers[i] == stringRandomNumber[i]){
          print("you got a bonus ! ");
          guessedNumbers++;
        } else {
          print("you got a minus ! ");
        }
      }
    } else {
      print("the number is not 4-digit number");
    }

    (guessedNumbers != 4) ? print("the number is incorrect ! try again") : print("you are smart ! that was right.");
  }

}

// 9
RockPaperScissors(){
  Random random = Random();
  int randomNumber = random.nextInt(4);

  print("choose btween rock , paper , or scissors ");

  var input = stdin.readLineSync()!;

  List game = ["rock" , "paper" , "scissors"];

  while(input.isEmpty ){
    print("please enter a valid value : ");
  }

  input = input.toLowerCase().trim() ;

  if (input == game[randomNumber]) {
    print("We have a tie!");
  }else if ( input == "rock" &&  game[randomNumber] == "scissors") {
    print("You win");
  } else if (input == "rock" &&  game[randomNumber] == "paper") {
    print("You lose");
  } else if (input == "paper" &&  game[randomNumber] == "scissors") {
    print("You lose");
  } else if (input == "paper" &&  game[randomNumber] == "rock") {
    print("You win");
  } else if (input == "scissors" &&  game[randomNumber] == "rock") {
    print("You lose");
  } else if (input == "scissors" &&  game[randomNumber] == "paper") {
    print("You win");
  }
}


// 10
passwordGenerator(){
  String upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String lower = 'abcdefghijklmnopqrstuvwxyz';
  String numbers = '1234567890';
  String symbols = '!@#\$%^&*()<>,./';
  int passLength = 16;
  String seed = upper + lower + numbers + symbols;
  String password = '';
  List<String> list = seed.split('').toList();
  Random rand = Random();
  bool newPassword = true ;

  while(newPassword){
  for (int i = 0; i < passLength; i++) {
    int index = rand.nextInt(list.length);
    password += list[index];
  }

  print('Your Generated passwrd is ${password}');
  print('if you want to keep this password enter 1 \n or enter 2 if you want new password');

  int input = int.parse(stdin.readLineSync()!);

  (input == 1 ) ? newPassword = false : newPassword = true ;
  }
}

// 11
birthdays(){
  Map BODmap = {
    'Albert Einstein': '03/14/1879',
    'Benjamin Franklin': '01/17/1706',
    'Ada Lovelace': '12/10/1815',
    'Leonardo Dicaprio': '11/11/1974',
    'Leo Messi': '06/24/1987',
  };

  print("Welcome to the birthday dictionary. We know the birthdays of:");
  BODmap.forEach((key, value) {
    print("$key : $value");
  });

  print('Who\'s birthday do you want to look up?');
  var input = stdin.readLineSync()!;

  if (BODmap.containsKey(input)) {
    print("$input birthday is : ${BODmap[input]}");
  } else {
    print("sorry but $input is not on the list");
  }
}

// 12
numberOfList({List<int>? list}){
  return [list![0] , list[list.length-1]];
}

