import 'dart:io';

 palindrome() {
  print("please inter your word");
  String? input = stdin.readLineSync();

  String? reverse = input!.split(' ').reversed.join(' ');
  if (input == reverse) {
    print("the word '${input}' is palindrome"); 
  }else{
     print("the word '${input}' is not palindrome"); 
  }
}
