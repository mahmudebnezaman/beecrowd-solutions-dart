void main() {
  for (int i = 0; i <= 20; i += 2) {
    double iValue = i / 10.0;
    String iFormatted =
        iValue % 1 == 0 ? iValue.toInt().toString() : iValue.toStringAsFixed(1);

    for (int j = 1; j <= 3; j++) {
      double jValue = iValue + j;
      String jFormatted = jValue % 1 == 0
          ? jValue.toInt().toString()
          : jValue.toStringAsFixed(1);

      print('I=$iFormatted J=$jFormatted');
    }
  }
}