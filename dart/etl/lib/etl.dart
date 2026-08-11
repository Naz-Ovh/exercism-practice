class Etl {
  // Put your code here

  // Map<String, int> transform(Map<String, List<String>> input) {
  //   var finalScore = Map<String, int>();

  //   for (var MapEntry(:key, :value) in input.entries) {
  //     int? score = int.tryParse(key);

  //     if (score != null) {
  //       for (var char in value) {
  //         String lowerChar = char.toLowerCase();
  //         if (!finalScore.containsKey(lowerChar)) {
  //           finalScore[lowerChar] = score;
  //         }
  //       }
  //     }
  //   }

  //   return finalScore;
  // }

  // using foreach
  Map<String, int> transform(Map<String, List<String>> lagacy) {
    var result = Map<String, int>();

    lagacy.forEach(((key, values) {
      var score = int.tryParse(key);
      if (score == null) return;

      values.forEach((char) {
        result[char.toLowerCase()] = score;
      });
    }));

    return result;
  }
}
