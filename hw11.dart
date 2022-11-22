import 'dart:io';


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
 



 
 class FirstAndLast {
  List numberOfList = [];
 List returnNumberOfList = [];

   firstandlast(){
     for (var e in numberOfList) {
       if (e == numberOfList.first) {
         returnNumberOfList.add(numberOfList.first);
       }else if(e==numberOfList.last){
       returnNumberOfList.add(numberOfList.last);

       }
     }
     print(returnNumberOfList);
 }
 }
