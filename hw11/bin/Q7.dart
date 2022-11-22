import 'dart:io';

backwards() {
  bool end = false;
  List<String>? words = [];

  while (end == false) {
    print("please inter your word or inter 0 to stop");
    String? input = stdin.readLineSync();
    print(input);
    if (input == "0") {
      end = true;
    } else {
      words.insert(0, input!);
    }
  }
  for (var i in words) {
    

    print(i);
    
  }
}
