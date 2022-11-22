
class FirstAndLast {
 List numberOfList = [];
List returnNumberOfList = [];

  firstandlast(){
    for (var e in numberOfList) {
      if (e == numberOfList.first) {
        returnNumberOfList.add(numberOfList.first);
      }else if(e==numberOfList.last){
      returnNumberOfList.add(numberOfList.last);

      }
    }
    print(returnNumberOfList);
}
}