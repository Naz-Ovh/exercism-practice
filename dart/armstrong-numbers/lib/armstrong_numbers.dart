class ArmstrongNumbers {
  // Put your code here
  //
  bool isArmstrongNumber(String input) {
    if (input == "0") return true;

    // one digit is always armstrong
    if (input.length == 1) return true;

    // two digit numbers are never armstrong number
    if (input.length == 2) return false;

    var power = input.length;

    BigInt sum = BigInt.zero;

    for (int i = 0; i < input.length; i++) {
      var digit = int.tryParse(input[i]);
      if (digit == null) {
        return false;
      }
      var bigDigit = BigInt.from(digit);
      sum += bigDigit.pow(power);
    }

    return sum.toString() == input;
  }
}
