import 'dart:io';
import 'dart:math';

main(){



// // alergic to ...Q1
print(alergicTo(score:129));

// // print out the element less than 3 and total of elemnts greater than 5
printOut(numbers: [5,6,7,8,9,1,2,3]);

// // check if string reverese== string

palindrome();
// // divisior of a number

divisor();

// // guess number between 1 and 50

guess();

// // comment element betwean lists
commonInList(list1: [1,3,4,5,6,1], list2: [9,8,7,6,1] );

// // print bacward text
backwordText();


// // guess 4 digits
guessingGame();


// Rock or Paper or Scissors
rockPaperScissors();


// find birthday

BirthDay();

// get first and last element of list 
numberOflist(numbers: [1,2,3,4,5,2]);


// password generator
passwordGenerator();

}

// Q1 alergic to
alergicTo({int? score}){

List alergicToThese=[];

for(var i=0; i<8; i++){

  if(score !>= 128 ){

    score -=128;

    alergicToThese.add("cats");

  }
  else if(score >= 64 ){

    score -=64;

    alergicToThese.add("pollen");

  } else if(score >= 32 ){

    score -=32;

    alergicToThese.add("chocolate");

  }else if(score >= 16 ){

    score -=16;

    alergicToThese.add("tomatoes");

  }else if(score >= 8 ){

    score -=8;

    alergicToThese.add("strawberries");

  }else if(score >= 4 ){

    score -=4;

    alergicToThese.add("shellfish");

  }else if(score >= 2 ){

    score -=2;

    alergicToThese.add("peanuts");

  }else if(score >= 1 ){

    score -=1;

    alergicToThese.add("eggs");

  }
  
  

}

return alergicToThese;

}
// print out the element less than 3 and total of elemnts greater than 5
printOut({List<double>? numbers}){

double sum=0;
for(var i=0; i<numbers!.length ;i++){

  if(numbers[i]<3){
    print(numbers[i]);
  }

if(numbers[i]>5){
  sum +=numbers[i];
}

}

print("total of elements greater than 5 = $sum");

}


// check if string reverese== string

palindrome(){
  print("please enter a string to check if it is palindrome");
      String? input = stdin.readLineSync();


if(input==input!.split("").reversed.join()){
  print("string is palindrome");
  return true;

}else{
  print("string is not palindrome");

  return false;
}

}

// divisior of a number

divisor(){
 print("please enter a number to see its divisiors");

  List<int>? divisors=[];

 String? input = stdin.readLineSync();

for(var i=1;i<=int.parse(input!);i++){

if(int.parse(input)%i==0){
  divisors.add(i);
}

}

print(divisors);

}

// guess number between 1 and 50

guess(){
   print("please guess a number between 1 and 50 ");
var random= Random().nextInt(51);
 String? input = stdin.readLineSync();

if(random==int.parse(input!)){
  print("you guessed it exactly right");
}
else if(random<int.parse(input)){

    print("you guessed it too high");

}else {
      print("you guessed it too low");

}

print("the number was $random");

}
// comment element betwean lists
commonInList({List? list1, List? list2}){

List commonInLists=[];

for(var i=0; i<list1!.length;i++){

if(list2!.contains(list1[i])){

if(!commonInLists.contains(list1[i]))
  commonInLists.add(list1[i]);

}

}

print("common list : $commonInLists");

}
// print bacward text
backwordText(){
print("please enter a text to be reversed");
      String? input = stdin.readLineSync();

      print(input!.split(" ").reversed.join(" "));

}

guessingGame(){

int random= Random().nextInt(9000)+1000;
print("the code is  $random, just for testing");
int bonus=0,minus=0, guesses=0;
bool keepPlaying=true;

while(keepPlaying){

print("enter your 4-digit guess ");

String? input = stdin.readLineSync();

for(var i=0; i<"$random".length;i++){

  if(input!.split("")[i]=="$random".split("")[i]){

    bonus+=1;

  }
  else {
    minus+=1;
  }

  

}
guesses+=1;
if(bonus==4){
print("you guessesd it right");
keepPlaying=false;
}else {
  print("you guessesd it wrong");

}

print("bonuses = $bonus  and the minus = $minus  , you guessed $guesses");

bonus=0;
minus=0;

}


}
// Rock or Paper or Scissors

rockPaperScissors(){

print("enter Rock or Paper or Scissors ");

String? input = stdin.readLineSync();

List<String>? computerChoice= ["Rock","Paper","Scissors"];
int indexRandom= Random().nextInt(3);
if(input==computerChoice[indexRandom]){

print("We have a tie!");

}else{

// rock
  if(input=="Rock"){

    if(computerChoice[indexRandom]=="Scissors"){
      print("You win");
    }
    else if(computerChoice[indexRandom]=="Paper"){
      print("You lose");
    }
    else{

      print("wrong input");
    }


  }
  //Scissors
if(input=="Scissors"){

    if(computerChoice[indexRandom]=="Rock"){
      print("You lose");
    }
    else if(computerChoice[indexRandom]=="Paper"){
      print("You win");
    }
    else{

      print("wrong input");
    }


  }

 //paper
if(input=="Paper"){

    if(computerChoice[indexRandom]=="Rock"){
      print("You win");
    }
    else if(computerChoice[indexRandom]=="Scissors"){
      print("You lose");
    }
    else{

      print("wrong input");
    }


  }


}
print(computerChoice[indexRandom]);

}

BirthDay(){

Map birthDays={"Muhammed":"21 nov", "ali":"20 nov","rakan":"21 oct"};


print("enter friend's name ");

String? input = stdin.readLineSync();
if(birthDays.containsKey(input)){
print("birthday of $input  :  ${birthDays[input]}" );
}
else{
  print("name does not exist");
}
}

numberOflist({List<num>? numbers}){

print( [numbers![0], numbers[numbers.length-1] ]);

}



// password generator
passwordGenerator(){


var generateNew= true;

var Passwordlength= 10+Random().nextInt(16);

while(generateNew){
var password="";
for(var i=0;i<=Passwordlength;i++){
var r=String.fromCharCode((40+Random().nextInt(87)));
  password="$password${r}";


}
print(password);


print("do you want new password ");

String? input = stdin.readLineSync();

if(input=="Done"){

  generateNew=false;
}

}



}
