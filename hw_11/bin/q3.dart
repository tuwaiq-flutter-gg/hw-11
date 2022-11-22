

palindrome({String? word}){
  String palindrome = word!.split('').reversed.join('');
  if(word == palindrome){
    print('${word} = ${palindrome} -> Palindrome\n');
  }else{
    print('${word} != ${palindrome} Not Palindrome\n');
  }
}