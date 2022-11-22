
import 'dart:io';

birthDay(){
  Map BODmap = {
    "Sarah" : "1999/10/10",
    "Gala" : "2000/11/11",
    "Saude" : "1990/5/5",
  };
  
  stdout.write("Please Enter Your Frinds Name: ");
  String name = stdin.readLineSync()!;

  for (var e in BODmap.keys) {
    if (e == name) {
      print(BODmap[e]);
    }
  }

}