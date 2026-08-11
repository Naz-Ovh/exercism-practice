class AtbashCipher {
  // Put your code here
  static const List<String> alphabets = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ];

  static final chiper_alph = alphabets.reversed.toList();

  String encode(String raw) {
    var encodedChars = <String>[];

    int trackEvery5 = 0;
    for (int i = 0; i < raw.length; i++) {
      var char = raw[i].toLowerCase();
      var charCode = raw.codeUnitAt(i);
      var charIndex = alphabets.indexOf(char);

      if (trackEvery5 == 5 && i != raw.length - 1) {
        encodedChars.add(" ");
        trackEvery5 = 0;
      }

      if (charCode >= 48 && charCode <= 57) {
        encodedChars.add(char);
        trackEvery5++;
        continue;
      }

      if (!alphabets.contains(char)) {
        continue;
      }
      if (char == " ") {
        continue;
      }

      encodedChars.add(chiper_alph[charIndex]);
      trackEvery5++;
    }

    return encodedChars.join();
  }

  String decode(String encoded) {
    List<String> decoded = [];

    for (int i = 0; i < encoded.length; i++) {
      var char = encoded[i].toLowerCase();
      var charCode = encoded.codeUnitAt(i);
      var charIndex = chiper_alph.indexOf(char);

      if (char == "") {
        continue;
      }

      if (charCode >= 48 && charCode <= 57) {
        decoded.add(char);
        continue;
      }

      if (charIndex != -1) {
        decoded.add(alphabets[charIndex]);
      }
    }

    return decoded.join();
  }
}

void main() {
  var ch = AtbashCipher();

  var result = ch.decode("vcvix rhn");
  print(result);
}
