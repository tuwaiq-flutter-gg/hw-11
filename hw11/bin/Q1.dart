allergy(int score) {
  Map<String, int> allergies = {
    "eggs": 1,
    "peanuts": 2,
    "shellfish": 4,
    "strawberries": 8,
    "tomatoes": 16,
    "chocolate": 32,
    "pollen": 64,
    "cats": 128
  };
  List listAllerg = [];
  for (var r in allergies.entries) {
    if (score >= r.value) {
      listAllerg.add(r);
    }
  }

  if (score == 0) {
    print("You do not suffer from any allergy");
  } else {
    print("You are allergic to : ");
    print(listAllerg);
  }
}
