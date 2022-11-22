import 'dart:math';

guessNumber({int? number}) {
  Random random = Random();
  int random1 = random.nextInt(50) + 1; // To be Exactlly 50
  if (number! > random1) {
    print("Too High");
    print(random1);
  } else if (number == random1) {
    print("Exactly Right");
  } else if (number < random1) {
    print("Too Low");
  }
}
