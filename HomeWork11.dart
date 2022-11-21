import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  solution_1();
  print("=" * 100 + "\n" + "=" * 100);
  solution_2([1, 2, 8, 10, 5, 6, 13, 4, 1]);
  print("=" * 100 + "\n" + "=" * 100);
  solution_3("ddaadd");
  solution_3("asdew");
  print("=" * 100 + "\n" + "=" * 100);
  solution_4(6);
  solution_4(7);
  solution_4(8);
  print("=" * 100 + "\n" + "=" * 100);
  solution_5(25);
  print("=" * 100 + "\n" + "=" * 100);
  solution_6([1, 2, "3", 4, 5, 6, "3"], [1, 13, 1, "3", 5, 33, 2]);
  print("=" * 100 + "\n" + "=" * 100);
  solution_7("Print the words in backwards order to the user");
  print("=" * 100 + "\n" + "=" * 100);
  solution_8();
  print("=" * 100 + "\n" + "=" * 100);
  solution_9();
  print("=" * 100 + "\n" + "=" * 100);
  solution_10(upperCount: 5,lowerCount: 2,numbersCount: 3,symbolsCount: 6);
  solution_10(upperCount: 0,lowerCount: 0,numbersCount: 0,symbolsCount: 0);
  solution_10(upperCount: 5,lowerCount: 2,numbersCount: 3,symbolsCount: -6);
  print("=" * 100 + "\n" + "=" * 100);
  solution_11();
  print("=" * 100 + "\n" + "=" * 100);
  solution_12([1, 2, 3, 4, 5, 6]);
  solution_12([19, 2, 3, 4, 5, 55]);
}

//[1] solution
solution_1() {
  allergies.allergyResult1(1);
  allergies.allergyResult2(1);
  print("-" * 100);
  allergies.allergyResult1(66);
  allergies.allergyResult2(66);
  print("-" * 100);
  allergies.allergyResult1(169);
  allergies.allergyResult2(169);
  print("-" * 100);
  allergies.allergyResult1(0);
  allergies.allergyResult2(0);
  print("-" * 100);
  allergies.allergyResult1(255);
  allergies.allergyResult2(255);
  print("-" * 100);
  allergies.allergyResult1(300);
  allergies.allergyResult2(300);
}

//[1] solution => 2 solutions (allergyResult1 is more general if you increase the enums it will run)
enum allergies {
  eggs(1),
  peanuts(2),
  shellfish(4),
  strawberries(8),
  tomatoes(16),
  chocolate(32),
  pollen(64),
  cats(128);

  final int value;
  const allergies(this.value);

  static allergyResult1(int number) {
    while (number > pow(2, allergies.values.last.index + 1)) {
      number -= pow(2, (log(number) / log(2)).floor()) as int;
    }
    if (number > 0) {
      String allergiesString = ".";
      int commaOrAnd = 0;
      for (var i = allergies.values.last.index; i >= 0; i--) {
        int newNumber = number - pow(2, i) as int;
        if (newNumber >= 0) {
          if (commaOrAnd == 1) {
            allergiesString = " and " + allergiesString;
          }
          if (commaOrAnd > 1) {
            allergiesString = ", " + allergiesString;
          }
          allergiesString = allergies.values[i].name + allergiesString;
          commaOrAnd++;
          number = newNumber;
        }
      }
      print("(From allergyResult1) You Are allergic to " + allergiesString);
    } else {
      if (number == 0) {
        print("You Do not have any allergy.");
      } else {
        print("The number you entered is wrong");
      }
    }
  }

  static allergyResult2(int number) {
    if (number > 0) {
      String numberInBinary = number.toRadixString(2).padLeft(8, "0");
      var eightBitOnly = numberInBinary.substring(
          numberInBinary.length - 8, numberInBinary.length);
      String allergiesString = "(From allergyResult2) You Are allergic to [ ";
      bool comma = false;
      if (eightBitOnly[7] == "1") {
        allergiesString += "Eggs";
        comma = true;
      }
      if (eightBitOnly[6] == "1") {
        if (comma) {
          allergiesString += ", ";
        }
        allergiesString += "Peanuts";
        comma = true;
      }
      if (eightBitOnly[5] == "1") {
        if (comma) {
          allergiesString += ", ";
        }
        allergiesString += "Shellfish";
        comma = true;
      }
      if (eightBitOnly[4] == "1") {
        if (comma) {
          allergiesString += ", ";
        }
        allergiesString += "Strawberries";
        comma = true;
      }
      if (eightBitOnly[3] == "1") {
        if (comma) {
          allergiesString += ", ";
        }
        allergiesString += "Tomatoes";
        comma = true;
      }
      if (eightBitOnly[2] == "1") {
        if (comma) {
          allergiesString += ", ";
        }
        allergiesString += "Chocolate";
        comma = true;
      }
      if (eightBitOnly[1] == "1") {
        if (comma) {
          allergiesString += ", ";
        }
        allergiesString += "Pollen";
        comma = true;
      }
      if (eightBitOnly[0] == "1") {
        if (comma) {
          allergiesString += ", ";
        }
        allergiesString += "Cats";
      }
      print(allergiesString += " ]");
    } else {
      if (number == 0) {
        print("You Do not have any allergy.");
      } else {
        print("The number you entered is wrong");
      }
    }
  }
}

//[2] solution
solution_2(List<num> list) {
  num total_of_greater_than_5 = 0;
  List<num> less_than_3 = [];
  for (var element in list) {
    if (element < 3) {
      less_than_3.add(element);
    }
    if (element > 5) {
      total_of_greater_than_5 += element;
    }
  }
  if (less_than_3.length > 0) {
    print(
        "All the elements of the list that are less than 3 are : ${less_than_3}");
  }
  print(
      "The total of all the elements in the list greater than 5 is : ${total_of_greater_than_5}");
}

//[3] solution
solution_3(String string) {
  bool flag = true;
  for (var i = 0; i < string.length / 2; i++) {
    if (string[i] != string[string.length - (i + 1)]) {
      flag = false;
      break;
    }
  }
  if (flag) {
    print("this string is a palindrome");
  } else {
    print("this string is NOT a palindrome");
  }
}

//[4] solution
solution_4(int number) {
  List<int> divisors = [1];
  for (var i = 2; i < number; i++) {
    if (number % i == 0) {
      divisors.add(i);
    }
  }
  divisors.add(number);
  print("All the divisors of $number are $divisors");
}

//[5] solution
solution_5(int number) {
  int random = Random().nextInt(50) + 1;
  if (number > random) {
    print("The random number is $random you guessed too high");
  }
  if (number < random) {
    print("The random number is $random you guessed too low");
  }
  if (number == random) {
    print("The random number is $random you guessed exactly right");
  }
}

//[6] solution
solution_6(List list1, List list2) {
  var result = list1.where((element) => list2.contains(element));
  result = result.toSet();
  print(result);
}

//[7] solution
solution_7(String words) {
  print("Everything reverse {${words.split('').reversed.join('')}}");
  print("Reverse word placement only {${words.split(' ').reversed.join(' ')}}");
}

//[8] solution
solution_8() {
  int bonus = 0, minus = 0, number_of_guesses = 0;
  List<int> random_4_digit =
      List.generate(4, (index) => Random().nextInt(10), growable: false);
  List<int> userInput = [];
  int number_of_equals = 0;
  do {
    stdout.write('\u001b[34mEnter 4-Digits guess example(1234) : \u001b[0m');
    String? userStringInput = stdin.readLineSync();
    while (userStringInput?.length != 4) {
      print('\u001b[41mWrong Input!!\u001b[0m');
      stdout.write(
          '\u001b[34mEnter a valid 4-Digits guess example(1234) : \u001b[0m');
      userStringInput = stdin.readLineSync();
      if (userStringInput != null) {
        userStringInput = userStringInput.trim();
        if (!RegExp(r'^[0-9]+$').hasMatch(userStringInput)) {
          userStringInput = null;
        }
      }
    }
    userInput = userStringInput!.split("").map((e) => int.parse(e)).toList();
    print(userInput);
    print(random_4_digit);
    number_of_equals = 0;
    for (var i = 0; i < userInput.length; i++) {
      if (userInput[i] == random_4_digit[i]) {
        bonus++;
        number_of_equals++;
        stdout.write('\u001b[42m ${userInput[i]} \u001b[0m');
      } else if (random_4_digit.contains(userInput[i])) {
        minus++;
        stdout.write('\u001b[44m ${userInput[i]} \u001b[0m');
      } else {
        stdout.write('\u001b[41m ${userInput[i]} \u001b[0m');
      }
    }
    print('\nYour bonus is $bonus and minus is $minus');
    number_of_guesses++;
  } while (number_of_equals != 4);
  print(
      '\u001b[32mCongratulations you guessed the right number and your number of guesses is \u001b[0m\u001b[42m $number_of_guesses \u001b[0m');
}

//[9] solution
solution_9() {
  // 0 => Rock || 1=> Paper || 2 => Scissors
  print("Welcome to (Rock Paper Scissors)");
  int computerInput = 0;
  String? userStringInput;
  int userInput = 0;
  while (userStringInput != 'E') {
    computerInput = Random().nextInt(3);
    print(
        'Enter R for Rock or P for Paper or S for Scissors to play or E to exit : ');
    userStringInput = stdin.readLineSync();
    if (userStringInput != null) {
      userStringInput = userStringInput.trim();
    }
    print(userStringInput);
    while (userStringInput != 'E' &&
        userStringInput != 'R' &&
        userStringInput != 'P' &&
        userStringInput != 'S') {
      print('\u001b[41mWrong Input!!\u001b[0m');
      print(
          'Enter R for Rock or P for Paper or S for Scissors to play or E to exit : ');
      userStringInput = stdin.readLineSync();
      if (userStringInput != null) {
        userStringInput = userStringInput.trim();
      }
    }
    if (userStringInput != "E") {
      switch (userStringInput) {
        case 'R':
          userInput = 0;
          break;
        case 'P':
          userInput = 1;
          break;
        case 'S':
          userInput = 2;
          break;
        default:
          break;
      }
      if (userInput == computerInput) {
        print("We have a tie!");
      } else if (userInput == 0 && computerInput == 2 ||
          userInput - 1 == computerInput) {
        print("You win!");
      } else {
        print("You lose!");
      }
    }
  }
  print("Exit (Rock Paper Scissors)");
}

//[10] solution
solution_10(
    {required int upperCount,
    required int lowerCount,
    required int numbersCount,
    required int symbolsCount}) {
  if (upperCount < 0 ||
      lowerCount < 0 ||
      numbersCount < 0 ||
      symbolsCount < 0) {
    print("can not generated password with any count below zero");
    return;
  }
  if (upperCount == 0 &&
      lowerCount == 0 &&
      numbersCount == 0 &&
      symbolsCount == 0) {
    print("can not generated password when all the counts are zero");
    return;
  }
  Random rand = Random();
  List<String> passwordList = [];
  List<String> upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('');
  for (int i = 0; i < upperCount; i++) {
    passwordList.add(upper[rand.nextInt(upper.length)]);
  }
  String lower = 'abcdefghijklmnopqrstuvwxyz';
  for (int i = 0; i < lowerCount; i++) {
    passwordList.add(lower[rand.nextInt(lower.length)]);
  }
  String numbers = '1234567890';
  for (int i = 0; i < numbersCount; i++) {
    passwordList.add(numbers[rand.nextInt(numbers.length)]);
  }
  String symbols = '!@#\$%^&*()<>,./';
  for (int i = 0; i < symbolsCount; i++) {
    passwordList.add(symbols[rand.nextInt(symbols.length)]);
  }
  passwordList.shuffle();
  String password = passwordList.join();
  print("You generated password is : $password");
}

//[11] solution
solution_11() {
  Map<String, DateTime> BODmap = {
    "sharif": DateTime.parse('1989-07-20'),
    "ahmed": DateTime.parse('2000-10-15'),
    "faisal": DateTime.parse('2015-06-02'),
    "sarah": DateTime.parse('2004-01-22'),
    "sharif": DateTime.parse('1989-07-20')
  };
  String? userStringInput;
  do {
    print('Enter the name of person to get his/her birthday or E to exit : ');
    userStringInput = stdin.readLineSync();
    if (userStringInput != null) {
      userStringInput.trim();
    }
    if (userStringInput != "E") {
      if (BODmap[userStringInput] == null) {
        print("no such person found");
      } else {
        print(
            "$userStringInput birth date is ${BODmap[userStringInput]?.year}/${BODmap[userStringInput]?.month}/${BODmap[userStringInput]?.day}");
      }
    }
  } while (userStringInput != "E");
}

//[12] solution
List<num> solution_12(List<num> numberOfList) {
  List<num> newList = [numberOfList.first, numberOfList.last];
  print(newList);
  return newList;
}
