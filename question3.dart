//write a program that that take a string from the user, and print out whether this string is a palindrome or not. A palindrome is a string that reads the same forwards and backwards for example: reviver is a palindrome.



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