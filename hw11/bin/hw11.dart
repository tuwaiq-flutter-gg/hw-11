import 'dart:io';
import 'dart:math';

main() {
  Hw11 hw11 = Hw11();
  //hw11.q1(); // didn't understand what should the app do
  print("=" * 40);
  hw11.q2();
  print("=" * 40);
  hw11.q3();
  print("=" * 40);
  hw11.q4();
  print("=" * 40);
  hw11.q5();
  print("=" * 40);
  hw11.q6();
  print("=" * 40);
  hw11.q7();
  print("=" * 40);
  hw11.q8();
  print("=" * 40);
  hw11.q9();
  print("=" * 40);
  hw11.q10();
  print("=" * 40);
  hw11.q11();
  print("=" * 40);
  hw11.q12();
}

class Hw11 {
/* 1 didn't understand the question
  q1() {
    Map<String, int> Allergy = {
      'eggs': 1,
      'peanuts': 2,
      'shellfish': 4,
      'strawberries': 8,
      'tomatoes': 6,
      'chocolate ': 2,
      'pollen': 4,
      'cats': 8,
    };
  }
*/

// 2
  var testList = [2, 4, 22, 4, 34, 1, 7, 0, 33];
  q2() {
    int nextNum = 0;
    for (var x in testList) {
      if (x < 3) {
        print("$x");
      } else if (x > 5) {
        nextNum += x;
      }
    }
    print("Total : $nextNum (Highr than 5 only)");
  }

// 3
  q3() {
    String empt = "";
    print("Type a word to check if it is a palindrome or not:");
    String? input = stdin.readLineSync();
    input = input!.toLowerCase();
    for (int x1 = input.length - 1; x1 >= 0; x1--) {
      empt = empt + input[x1];
    }

    // Checking if both the strings are equal
    if (input == empt) {
      print("It is a palindrome");
    } else {
      return print("It is not a palindrome");
    }
  }

// 4
  q4() {
    print(("Please enter a number to find its divisors"));
    int? input1 = int.parse(stdin.readLineSync()!);
    var list1 = [];

    for (var x = 1; x < input1; x++) {
      if (input1 % x == 0) {
        list1.add(x);
      }
    }
    print(list1);
  }

// 5
  q5() {
    Random random1 = Random();
    final int range = 50;
    print("Guess a number between 1-50:");
    int? input5 = int.parse(stdin.readLineSync()!);
    int? answer = random1.nextInt(range) + 1;
    if (input5 > answer) {
      print("Too high");
    } else if (input5 < answer) {
      print("Too low");
    } else {
      print("exactly right");
    }
  }

// 6
  q6() {
    var list1 = [1, 3, 2, 3, 2, 5, 4, 7];
    var list2 = [5, 4, 7, 2, 9, 10];
    var list3 = [list1, list2];
    final commonElements = list3.fold<Set>(
        list3.first.toSet(), (a, b) => a.intersection(b.toSet()));

    print(commonElements);
  }

// 7 didn't understand which way u want it, so i did 2 ways
  q7() {
    print("Enter your sentence to reverse it:");
    String? sen1 = stdin.readLineSync()!;
    print("First:");
    print(sen1.split(' ').reversed.join(" "));
    print("Second:");
    print(sen1.split('').reversed.join());
  }

// 8
  q8() {}

// 9
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

// 10
  q10() {
    String upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String lower = 'abcdefghijklmnopqrstuvwxyz';
    String numbers = '1234567890';
    String symbols = '!@#%^&*()<>,./';
    int passLength = 8;
    String all = upper + lower + numbers + symbols;
    String password = '';
    List<String> list = all.split('').toList();
    Random random10 = Random();
    for (int i = 0; i < passLength; i++) {
      int index = random10.nextInt(list.length);
      password += list[index];
    }
    return password;
  }

  // 11
  q11() {
    Map bODmap = {
      'alwaleed': '20/04/1996',
      'sultan': '28/12/1996',
      'faisal': '24/04/1999',
    };
    print("Enter the name of the person to return his/her birthdate:");
    var inp11 = stdin.readLineSync()!.toLowerCase();
    if (bODmap.containsKey(inp11)) {
      print(bODmap[inp11]);
    } else {
      print("Map doesn't have this name.");
    }
  }

  // 12
  q12() {
    var list1 = [2, 3, 4, 6, 2, 4, 5, 3, 44];
    return print([list1[0], list1[list1.length - 1]]);
  }
}
