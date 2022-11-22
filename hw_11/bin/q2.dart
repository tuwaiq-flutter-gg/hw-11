

import 'dart:io';

printNumber(){
  List number = [1,4,6,8,10,11,12,0,-1];
  int? increase = 0;

  stdout.write("\nThe elements of the list that are less than 3 is: ");
  for (var i = 0; i < number.length; i++) {
    if (number.elementAt(i) < 3) {
      stdout.write("\x1b[1;36m${number[i]} , \x1b[0m");
    } else if(number.elementAt(i) > 5){
      increase = (increase! + number.elementAt(i)) as int; 
    }
  }
     print("\nThe total of all the elements in the list greater than 5 is: \x1b[1;36m${increase}\x1b[0m\n");
}