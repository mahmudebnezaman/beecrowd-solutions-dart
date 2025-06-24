void main() {
  String n = '';

  String outputs = 'x = 35';

  List<int> spaceCount = [1, 16, 32];

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

      if (j == 0) {
        n = '$n|';
      } else {
        if (i == 1 && j == spaceCount[0]) {
          for (var k in outputs.split('')) {
            n = '$n$k';
            j++;
          }
        }
        if (i == 3 && j == spaceCount[1]) {
          for (var k in outputs.split('')) {
            n = '$n$k';
            j++;
          }
        }
        if (i == 5 && j == spaceCount[2]) {
          for (var k in outputs.split('')) {
            n = '$n$k';
            j++;
          }
        }
        if (j < 38) {
          n = '$n ';
        } else {
          n = '$n|';
        }
      }
    }
  }

  print(n);
}