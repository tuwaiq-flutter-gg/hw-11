//write a program that prints out all the elements of the list that are less than 3, and the total of all the elements in the list greater than 5.
import 'dart:indexed_db';

class lessOrmore {
  List<int> numbers = [1,2,3,4,5,6,7,8,9,10,33,22,15,34,12,67,45];
   
test(){
  var total=0;
  for(int i=0;i>numbers.length;i++){
    if(i<3){
      print("the number less than 3 is: $i");
    }else if(i>5){
      total+=i;

      print("the total of element is $total");
    }
  }
}
 
}
void main(List<String> args) {
  lessOrmore check=lessOrmore();
  check.test();
}
