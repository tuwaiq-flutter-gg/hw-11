import 'dart:io';

import 'package:collection/collection.dart';
import 'package:test/test.dart';

void main(List<String> arguments) {
  elements2();
}

//solution 2
elements2() {
  final List<int> Listt = [0];
  var largeThan5 = 0;
  var lessThan3 = Listt[0];
  for (var i in Listt) {
    if (i < 3) {
      print("the number less of 3 is $i");
    } else if (i > 5) {
      largeThan5 += i;
      print("the equal number larg than 5 = $largeThan5");
    }
  }
}

//solution 3
palindrometest() {
  String? input = stdin.readLineSync();
  String? word = input!.split('').reversed.join('');
  print("Enter a word to test it: ");

  if (input == word) {
    print('Palindrome');
  } else {
    print('Not Palindrome');
  }
  return palindrometest();
}



//sloution 4
divisors() {
  Set<int> result = {};
  print("Enter a Number to test it: ");
  String? input = stdin.readLineSync();
  var aa = int.parse(input!);
  for (var i = 1; i <= aa / i; ++i) {
    if (aa % i == 0) {
     result.add(i);
      result.add((aa / i).floor());
      print(result);
      return divisors();
    }
  }
}


//sloution 7
multiplay() {
  print("Enter a Multiplay of word to test it: ");
   String? input = stdin.readLineSync();
  print(input?.split('').reversed.join(''));
  return multiplay();
}


