import 'dart:io';
import 'dart:math';

allergicFun(){
  int? score = 0;
  List? yourAllergies = [];

  int eggs = 1;
  int peanuts = 2;
  int shellfish = 4;
  int strawberries = 8;
  int tomatoes = 16;
  int chocolate = 32;
  int pollen = 64;
  int cats = 128;



  print("\n\nHello,, We will collect you score about you allergies we ask you a few question please answer 'y' meaning yes and 'no' meaning no:\n");

 
      stdout.write("Do you have allergies from Eggs? ");
      String? c1 = stdin.readLineSync();
      if(c1 == 'y'){
        score = score + eggs;
        yourAllergies.add("Eggs");
      }
      stdout.write("Do you have allergies from Peanuts? ");
      String? c2 = stdin.readLineSync();
      if(c2 == 'y'){
        score = score + peanuts;
        yourAllergies.add("Peanuts");
      }
      stdout.write("Do you have allergies from Shellfish? ");
      String? c3 = stdin.readLineSync();
      if(c3 == 'y'){
        score = score + shellfish;
        yourAllergies.add("Shellfish");
      }
      stdout.write("Do you have allergies from Strawberries? ");
      String? c4 = stdin.readLineSync();
      if(c4 == 'y'){
        score = score  + strawberries;
        yourAllergies.add("Strawberries");
      }
      stdout.write("Do you have allergies from Tomatoes? ");
      String? c5 = stdin.readLineSync();
      if(c5 == 'y'){
        score = score  + tomatoes;
        yourAllergies.add("Tomatoes");
      }
      stdout.write("Do you have allergies from Chocolate? ");
      String? c6 = stdin.readLineSync();
      if(c6 == 'y'){
        score = score  + chocolate;
        yourAllergies.add("Chocolate");
      }
      stdout.write("Do you have allergies from Pollen? ");
      String? c7 = stdin.readLineSync();
      if(c7 == 'y'){
        score = score  + pollen;
        yourAllergies.add("Pollen");
      }
      stdout.write("Do you have allergies from Cats? ");
      String? c8 = stdin.readLineSync();
      if(c8 == 'y'){
        score = score  + cats;
        yourAllergies.add("Cats");
      }
      print("\nYoue'r Allergies from: \x1b[1;36m${yourAllergies}\x1b[0m");
      print("And Your Total of Score is: \x1b[1;36m${score}\x1b[0m\n");

  }



