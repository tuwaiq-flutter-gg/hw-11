import 'dart:io';

birthDays() {
  Map bODmap = {
    'Mansour': '29/09/1998',
    'Nawf': '10/03/1999',
    'Yasser': '20/10/1998'
  };

  print("inter your friend name");
  String input = stdin.readLineSync()!;
  if (bODmap.containsKey(input)) {
    print("$input : ${bODmap[input]}");
  } else {
    print("name $input, is not found");
  }
}
