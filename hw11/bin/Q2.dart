//#2
lessOrBigger(List? input) {
  input!.sort();
  var count = 0;
  for (int i in input) {
    if (i < 3) {
      print(i);
    } else if (i > 5) {
      count = count + i;
    } 
  }
  print("Total of all numbers that are greater than 5: $count");
}
