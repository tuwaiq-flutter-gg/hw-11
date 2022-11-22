import 'dart:io';
import 'dart:math';

main() {
  //1
  (sum(i: 3));

  print("-" * 50);
  //2

  number(listNmber: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  print("-" * 50);

  //3
  palindrome();

  print("-" * 50);

  //4
  divisors();
  print("-" * 50);

  //5

  randomNum();
  print("-" * 50);

  //6

  twoList(a: [1, 2, 3, 7, 5, 88, 7, 10], b: [1, 2, 4, 6, 5, 3, 7, 8, 10]);
  print("-" * 50);

  //7

  reverseWords();
  print("-" * 50);

  //8
  gamePlay();
  print("-" * 50);

  //9

  rps();
  print("-" * 50);

  //10

  pass();
  print("-" * 50);

  //11
  birthdays();
  print("-" * 50);

  //12
  listN(a: [1, 5, 7, 8, 0, 8, 2]);
}

//1
sum({int? i}) {
  Map<String, int> items = {
    "eggs": 1,
    "peanuts": 2,
    "shellfish": 4,
    "strawberries": 8,
    "tomatoes": 16,
    "chocolate": 32,
    "pollen": 64,
    "cats": 128
  };

  Map newItems = {};

  for (var r in items.entries) {
    if (i! >= r.value) {
      newItems.addEntries({r});
    }
  }

  if (i == 0) {
    print("You do not suffer from any allergy");
  } else {
    print("You are allergic to : ");
    newItems.forEach((key, value) {
      print("$key");
    });
  }
}

//2

number({List<int>? listNmber}) {
  for (var i in listNmber!) {
    if (i < 3) {
      print("numbers less than 3 : $i");
    } else if (i == 3) {
      print("This number is neutral: $i");
    }
    if (i > 5) {
      print("total numbers higher than 3 : $i");
    } else if (i == 5) {
      print("This number is neutral: $i");
    }
    if (i == 4) {
      print("Why did you forget me? $i");
    }
  }
}

//3

palindrome() {
  print('Enter Words or number');
  String? op = stdin.readLineSync();

  String? rs = op!.split('').reversed.join('');
  // then we will compare
  if (op == rs) {
    print('Its A Palindrome');
  } else {
    print('Its A Not Palindrome');
  }
}

//4
divisors() {
  try {
    print("enter a number");
    String op = stdin.readLineSync()!;
    int de = int.parse(op);
    List dev = [];

    for (var i = 1; i < de; i++) {
      if (de % i == 0) {
        dev.add(i);
      }
    }

    print(dev);
  } catch (e) {
    print(
        "You have chosen letters, and this is not required. You have to choose a number, please");
  }
}

//5
randomNum() {
  Random r = Random();
  int randomNumber = r.nextInt(99);
  try {
    print("guess a number between 1 and 50 : ");
    String guess = stdin.readLineSync()!;
    int gs = int.parse(guess);
    if (gs > randomNumber) {
      print("you guessed too high !");
    } else if (gs < randomNumber) {
      print("you guessed too low !");
    } else {
      print("you guessed exactly right !");
    }
  } catch (e) {
    print("We expect numbers, not letters -_-");
  }
}

//6

twoList({List? a, List? b}) {
  print(Set.from(a!).intersection(Set.from(b!)).toList());
}

//7

reverseWords() {
  print("Enter word ");
  String word = stdin.readLineSync()!;
  print(word.split("").reversed);
}

//8
gamePlay() {
  Random r = Random();
  int randomNumber = r.nextInt(8999) + 1000;
  String stringR = randomNumber.toString();
  int guessedN = 0;
  try {
    while (guessedN != 4) {
      guessedN = 0;

      stdout.write("guess a 4-digit number : ");
      int gs = int.parse(stdin.readLineSync()!);

      String numbers = gs.toString();
      if (gs.toString().length == 4) {
        for (var i = 0; i < numbers.length; i++) {
          if (numbers[i] == stringR[i]) {
            print("you got a bonus ++ ");
            gs++;
          } else {
            print("you got a minus -- ");
          }
        }
      } else {
        print("the number is not 4-digit number");
      }
    }
  } catch (e) {
    print(
        "This message appeared because you set an empty value and no text value -_-");
  }
}

//9
rps() {
  Random r = Random();
  int randomN = r.nextInt(4);

  print("choose btween rock , paper , or scissors ");

  var op = stdin.readLineSync()!;
  List game = ["rock", "paper", "scissors"];

  try {
    op = op.toLowerCase().trim();
    if (op == game[randomN]) {
      print("Draw");
    } else if (op == "rock" && game[randomN] == "scissors") {
      print("You win");
    } else if (op == "rock" && game[randomN] == "paper") {
      print("You lose");
    } else if (op == "paper" && game[randomN] == "scissors") {
      print("You lose");
    } else if (op == "paper" && game[randomN] == "rock") {
      print("You win");
    } else if (op == "scissors" && game[randomN] == "rock") {
      print("You lose");
    } else if (op == "scissors" && game[randomN] == "paper") {
      print("You win");
    }
  } catch (e) {
    print(
        "This message appeared because you set an empty value and no text value -_-");
  }
}

//10

pass() {
  String upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String lower = 'abcdefghijklmnopqrstuvwxyz';
  String numbers = '1234567890';
  String symbols = '!@#\$%^&*()<>,./';
  int passLength = 10;
  String seed = upper + symbols + lower + numbers;
  String pass = '';
  List<String> list = seed.split('').toList();
  Random r = Random();
  bool newPass = true;
  try {
    while (newPass) {
      for (int i = 0; i < passLength; i++) {
        int index = r.nextInt(list.length);
        pass += list[index];
      }

      print('Your Generated passwrd is ${pass}');
      print(
          'if you want to keep this password enter 1 \n or enter 2 if you want new password');

      int op = int.parse(stdin.readLineSync()!);

      (op == 1) ? newPass = false : newPass = true;
    }
  } catch (e) {
    print(
        "This message appeared because you set an empty value and no text value -_-");
  }
}

// 11
birthdays() {
  try {
    Map bODmap = {
      'Alex Ferguson': '31/12/1940',
      'James Spader': '7/02/1960',
      'Leo Messi': '24/06/1987',
    };

    print("Welcome to the birthday dictionary. We know the birthdays of:");
    bODmap.forEach((key, value) {
      print("$key : $value");
    });

    print('Who\'s birthday do you want to look up?');
    var op = stdin.readLineSync()!;

    if (bODmap.containsKey(op)) {
      print("$op birthday is : ${bODmap[op]}");
    } else {
      print("sorry but $op is not on the list");
    }
  } catch (e) {
    print(
        "This message appeared because you set an empty value and no text value -_-");
  }
}

// 12

listN({List<int>? a}) {
  return [a![0], a[a.length - 1]];
}
