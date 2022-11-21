import 'dart:io';
import 'dart:math';

Random random = new Random();
main() {
//Q1
  // allergy(34); // chocolate and peanuts
  // allergy(8); //strawberries
  // allergy(63); //chocolate,tomatoes,strawberries,shellfish,peanuts,eggs
  // allergy(31); //tomatoes,strawberries,shellfish,peanuts,eggs

//Q2
  //q2([1, 2, 1, 2, 10, 10, 10, 10, 2, 1, 2, 3, 4, 5]);

//Q3
  // print(palindrome("aabb")); //fasle
  // print(palindrome("abcba")); //true
  // print(palindrome("abab")); //fasle
  // print(palindrome("asdsa")); //true
  // print(palindrome("asdasd")); //false
  // print(palindrome("reviver")); //true

//Q4
  //numDiv();

//Q5
  //guess();

//Q6
  //common([1, 2, 3, 4, 5, 6, 7, 8, 9], [5, 6, 7, 8, 9, 10, 11, 12, 13, 14]);

//Q7
  //backword();

//Q8
//  gameguss();
//Q9
//  rps();

//Q9
//  rps();

//Q10
  //password();
//Q11
  //birthDay();

//Q11
//  birthDay();

//Q12
  //print(numberOfList([1, 2, 3, 4, 5, 6, 7]));
}

//Q1 i TRIED -_-
allergy(int score) {
  num x = score;
  Map<String, int> allergies = {
    "eggs": 1,
    "peanuts": 2,
    "shellfish": 4,
    "strawberries": 8,
    "tomatoes": 16,
    "chocolate": 32,
    "pollen": 64,
    "cats": 128
  };
  List al = [];

  //get a list with Numbers
  List li1 = [];
  for (var element in allergies.values) {
    li1.add(element);
  }

//revers the numbers
  List re = li1.reversed.toList();

  //get the values (NAmes)
  List li2 = [];
  for (var element in allergies.keys) {
    li2.add(element);
  }

  for (int i = 0; i < re.length; i++) {
    if (x >= re[i]) {
      al.add(li2[re.length - 1 - i]);
      x -= re[i];
    }
  }
  print("the Score is $score so the Allerges are ${al}");
}

//Q2
q2(List<int> x) {
  List lessthan3 = [];
  int total = 0;
  for (int i = 0; i < x.length; i++) {
    if (x[i] < 3) {
      lessthan3.add(x[i]);
    } else if (x[i] > 5) {
      total += x[i];
    }
  }
  print("The list is $x");
  print("The element in the list less than 3 are $lessthan3");
  print("the total of elements that are bigger than 5 = $total");
}

//Q3
bool palindrome(String word) {
  bool ispalindrome = false;
  for (int i = 1; i <= word.length / 2; i++) {
    if (word[i - 1] == word[word.length - i]) {
      ispalindrome = true;
      continue;
    }
    ispalindrome = false;
    break;
  }
  return ispalindrome;
}

//Q4
numDiv() {
  print("Enter a number to get a list of all the divisors of that number ");
  int usernumber = int.parse(stdin.readLineSync()!);
  List numbers = [];
  int y = usernumber ~/ 2;
  for (int i = 1; i <= y; i++) {
    if (usernumber % i == 0) {
      numbers.add(i);
    }
  }
  numbers.add(usernumber);
  for (var element in numbers) {
    print(element);
  }
  print("The Number $usernumber can be divided by this list $numbers");
}

//Q5
guess() {
  int rn = random.nextInt(100) + 1;
  bool quit = false;
  print("Enter a number ");
  while (!quit) {
    int userNumber = int.parse(stdin.readLineSync()!);
    if (userNumber == rn) {
      print("You guessde exactly the Number");
      quit = true;
    } else if (userNumber == 0) {
      print("Quiting the Game the Number was $rn By the Way");
      quit = true;
    } else if (rn > userNumber) {
      print("guessed too low try again or enter 0 to quit");
    } else {
      print("guessed too high try again or enter 0 to quit");
    }
  }
}

//Q6
common(List l1, List l2) {
  //for tetsing
  // List l2 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // List l1 = [5, 4, 3, 2, 1, 1, 1, 10, 1, 12, 11];
  List comm = [];
  for (int i = 0; i < l1.length; i++) {
    for (int j = 0; j < l2.length; j++) {
      if (l1[i] == l2[j]) {
        if (!comm.contains(l1[i])) {
          comm.add(l1[i]);
        }
      }
    }
  }
  print(comm);
}

//Q7
backword() {
  print("Enter a couple of words");
  String user = stdin.readLineSync()!;
  //String user = "Hello World";
  List x = user.split(" ");
  List y = [];
  for (int i = x.length - 1; 0 <= i; i--) {
    y.add(x[i]);
  }
  print(y.join(" "));
}

//Q8
gameguss() {
  print("Enter a number from 4 digit or (0000) to exit ");
  bool triyng = true;
  int r1 = random.nextInt(10);
  int r2 = random.nextInt(10);
  int r3 = random.nextInt(10);
  int r4 = random.nextInt(10);
  String x = "$r1$r2$r3$r4";
  int bonus = 0;
  int minus = 0;
  bool correct = true;
  while (triyng) {
    String user = stdin.readLineSync()!;
    if (user.length != 4) {
      print("please enter a number from 4 digit");
      continue;
    }
    if (user == "0000") {
      triyng = false;
      break;
    }
    for (int i = 0; i < 4; i++) {
      if (user[i] == x[i]) {
        bonus++;
      } else {
        minus++;
        correct = false;
      }
    }

    if (correct) {
      print("you gues is correct");
      triyng = false;
    }
    print("try again  your score is Your bonus=$bonus \t your minus=$minus");
  }
  print("Your bonus=$bonus \t your minus=$minus \t The number was$r1$r2$r3$r4");
}

//Q9 Rock-Paper-Scissors(RPS)
rps() {
  bool wrong = true;
  List Choices = ["Rock", "Paper", "Scissors"];
  int rn = random.nextInt(3) + 1;
  String cc = Choices[rn]; //compiuter choice
  String? uc; //user choice
  int user = 0;
  print("You are paying Rock-Paper-Scissors");
  while (wrong) {
    try {
      print("Enter you are choice 1 for Rock\t 2 for Paper\t 3 for Scissors  ");
      int user = int.parse(stdin.readLineSync()!);
      if (user == 1) {
        wrong = false;
        uc = "Rock";
      } else if (user == 2) {
        wrong = false;
        uc = "Paper";
      } else if (user == 3) {
        wrong = false;
        uc = "Scissors";
      }
    } catch (e) {
      print("please enter a number ");
    }
  }
  if (cc == uc) {
    print("We have a tie!");
    print("Your Choice was \"$uc\" and the Compuiter Choice was \"$cc\"");
  } else if ((uc == Choices[0] && cc == Choices[1]) ||
      (uc == Choices[1] && cc == Choices[2]) ||
      (uc == Choices[2] && cc == Choices[1])) {
    print("You Win ");
    print("Your Choice was \"$uc\" and the Compuiter Choice was \"$cc\"");
  } else {
    print("You Lost ");
    print("Your Choice was \"$uc\" and the Compuiter Choice was \"$cc\"");
  }
}

//Q10
password() {
  String lowCase = "abcdefghijklmnopqrzxyz";
  String bigCase = lowCase.toUpperCase();
  String sympols = "!@#%^&*(){}";
  String number = "1234567890";
  String all = lowCase + bigCase + sympols + number;

  String pass = "";
  bool cont = true;
  print("How long you want your password");

  while (cont) {
    int x = int.parse(stdin.readLineSync()!);
    if (x == 0) {
      cont = false;
      continue;
    }
    for (int i = 0; i < x; i++) {
      int rn = random.nextInt(all.length);
      pass += all[rn];
    }
    print(" Your passeord is \"$pass\"");
    print("enter 0 to exit or the number of the lenght of your new pass ");
  }
}

//Q11
birthDay() {
  Map<String, dynamic> birthDays = {
    "faisal": 1997,
    "ahmed": 1998,
    "mona": 1995,
    "nora": 2000,
    "khalid": 2001,
    "salem": 1996,
  };
  print("enter the name you want to check their birthday");
  for (var element in birthDays.keys) {
    stdout.write("$element\t");
  }
  print("");
  String userinput = stdin.readLineSync()!;
  for (var element in birthDays.keys) {
    if (userinput == element) {
      stdout.write(birthDays[element]);
    }
  }
}

//Q12
List numberOfList(List li) {
  List lx = [];
  lx.add(li[0]);
  lx.add(li[li.length - 1]);
  return lx;
}
