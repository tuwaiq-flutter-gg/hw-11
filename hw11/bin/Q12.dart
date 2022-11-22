numberOfList({required List list}) {
  List newList = [];
  newList.add(list[0]);
  newList.add(list[list.length - 1]);
  print(newList);
}
