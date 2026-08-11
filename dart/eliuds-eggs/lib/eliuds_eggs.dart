class EggCounter {
  // Your code goes here.

  int count(int input) {
    String binaryString = input.toRadixString(2);

    int eggsCount = 0;
    for (int i = 0; i < binaryString.length; i++) {
      var char = binaryString[i];
      if (char == "1") {
        eggsCount++;
      }
    }

    return eggsCount;
  }
}

void main() {
  var egg = EggCounter();

  print(egg.count(89));
}
