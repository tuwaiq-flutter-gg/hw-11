
List comparList(){ //Error
  List list1 = [1,3,4,6,8,4,5,7,];
  List list2 = [3,4,5,6,1,7,89,04,3,45,];
  List result = [];
for (int i = 0 ; i < list2.length ; i++) {
  if (list1.contains(i) == list2.elementAt(i)) {
    result.add(i);  
  }
}
  return result; 
}