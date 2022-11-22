//Write a program that returns a list that contains only the elements that are common between them (without duplicates). Make sure your program works on two lists of different sizes.

main() {
  final lists = [
    [1, 2, 3, 55, 7, 99, 21],
    [1, 4, 7, 65, 99, 20, 21],
    [0, 2, 6, 7, 21, 99, 26]
  ];

  final commonElements =
      lists.fold<Set>(
        lists.first.toSet(), 
        (a, b) => a.intersection(b.toSet()));

  print(commonElements);
}