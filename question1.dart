abstract class allergies {
  Map allergic = {
    1: "egg",
    2: "peanuts",
    4: "shellfish",
    8: "strawberries",
    16: "tomatoes",
    32: "chocolate",
    64: "pollen",
    128: "cats"
  };

  int? score;
  allergies({this.score});
  List<dynamic> allergieslist = [];
}

class check extends allergies {
  //allergies test = allergies();
 
}

void check_allergies(int score) {
  if (score == 1) {
    print("egg");
  } else if (score == 2) {
    print("peanuts");
  } else if (score == 4) {
    print("shellfish");
  } else if (score == 8) {
    print("strawberries");
  } else if (score == 16) {
    print("tomatoes");
  } else if (score == 32) {
    print("chocolate");
  } else if (score == 64) {
    print("pollen");
  } else if (score == 128) {
    print("cats");
  }
}

// ignore: camel_case_types
//class check extends allergies {}
