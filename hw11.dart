

//import 'dart:_js_helper';
import 'dart:io';
import 'dart:math';

main(){

lists();
//numOflst();
//isPalindrome();
// BODmap();
// numberOfList();
//dive();

}
//ergy  


//q2

numOflst(){
var numOflist =[1,2,3,5,6,8,999,3,2,1];
var total=0;
for (var i in numOflist){
  if (i > 5 ) {
    total +=i;
    
}
else if (i < 3 ) {

print("less than 3 $i");

}

}
print(total);
}


//q3
isPalindrome(){
  print("type a word to test it : ");
  String? revWord="", newWord=stdin.readLineSync();
  for (var i = newWord!.length-1 ; i >= 0;i--){
revWord = revWord! + newWord[i];
  }
  if (revWord==newWord){
    print(" that is a Palindrome ($newWord)");
    
  }else print("Not a Palindrome ($newWord )");
}

//q4
dive(){

  print("Hey Entre a Number : ");
  double? newNum = double.parse(stdin.readLineSync()!);
  List numList =[];

  for (var i = 1 ; i < newNum;i++){

    if (newNum % i == 0) {
      numList.add(i);
    }
  }
print(numList);

}

////q5
// 
//q6
lists(){
List ls1 = [3,5,6,7,8,9,9,66];
List ls2 = [8,9,3,66,99];
List ls3 = [ls1,ls2];
final eqalNum = ls3.fold<Set>(
  ls3.first.toSet(),  (a,b) => a.intersection(b.toSet()));

  print(eqalNum);

}



//q11
BODmap(){
Map<String, dynamic> BODmaps={
  "Nama" : 1988,"Hani" : 1999,"Amer" : 2008,"Nora" : 2005,"Fahad" : 2000,
};


print("Enter Name ");
for (var element in BODmaps.keys ){
stdout.write("$element\t");
}
print("");print("*" * 40);

String nameInput = stdin.readLineSync()!;
for(var element in BODmaps.keys) {

  if (nameInput == element){
    print("$nameInput birthday is  ${BODmaps[element]}");
  }
}

}

//q12
numberOfList(){

  List numList = [100,200,400,600,800,900,1000];
  print(numList[0]);
  print(numList[numList.length-1]);
}
