commonElements({List? first, List? Second}) {
  print(Set.from(first!).intersection(Set.from(Second!)).toList());
}