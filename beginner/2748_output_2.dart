void main() {
  String n = '';

  List<String> outputs = ['Roberto', '5786', 'UNIFEI'];

  int count = 0;

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
        if (i % 2 != 0 && j == 9) {
          for (var k in outputs[count].split('')) {
            n = '$n$k';
            j++;
          }
          count++;
        }
        n = '$n ';
      }
    }
  }

  print(n);
}