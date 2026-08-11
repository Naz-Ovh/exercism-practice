const score_map = {
  1: {"A", "E", "I", "O", "U", "L", "N", "R", "S", "T"},
  2: {"D", "G"},
  3: {"B", "C", "M", "P"},
  4: {"F", "H", "V", "W", "Y"},
  5: {"K"},
  8: {"J", "X"},
  10: {"Q", "Z"}
};

// Put your code here
int score(String word) {
  var counter = 0;

  for (int i = 0; i < word.length; i++) {
    var char = word[i];

    for (var MapEntry(key: value, value: set) in score_map.entries) {
      if (set.contains(char.toUpperCase())) {
        counter += value;
      }
    }
  }

  return counter;
}
