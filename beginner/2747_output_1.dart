void main() {
  String n = '';

  for (int i = 0; i < 7; i++) {
    for (int j = 0; j <= 39; j++) {
      if (j == 39) {
        if (i != 6) n = '$n\n';
        continue;
      }
      if (i == 0 || i == 6) {
        n = '$n-';
        continue;
      }

      if (j == 0 || j == 38) {
        n = '$n|';
      } else {
        n = '$n ';
      }
    }
  }

  print(n);
}