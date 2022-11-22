import 'dart:io';
import 'dart:math';

passwordGenr() {
  String lowCase = "abcdefghijklmnopqrzxyz";
  String bigCase = lowCase.toUpperCase();
  String symbols = "!@#%^&*(){}";
  String number = "1234567890";
  String all = lowCase + bigCase + symbols + number;
  Random random = Random();
  String pass = "";
  bool cont = true;
  print("How long you want your password");

  while (cont) {
    int input = int.parse(stdin.readLineSync()!);
    if (input == 0) {
      cont = false;
      continue;
    }
    for (int i = 0; i < input; i++) {
      int rn = random.nextInt(all.length);
      pass += all[rn];
    }
    print("Your password is \"$pass\"");
    print("enter '0' to exit or the number of the length of your new pass ");
  }
}
