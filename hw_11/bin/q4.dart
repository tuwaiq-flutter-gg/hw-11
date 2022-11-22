import 'dart:io';

 divisors({int? number}){
  List<int> divisorsNumber = [];
   for (var i = 1; i < number!; i++) {
      if (number % i == 0) {
        divisorsNumber.add(i);
      }
      
   }
   print("The Divisors Numbers on: ${number} , is: ${divisorsNumber}");
   
}