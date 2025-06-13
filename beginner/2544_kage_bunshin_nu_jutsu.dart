import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) {
      return;
    }

    int n = int.parse(input);

    int o = 0;

    while (n > 1) {
      n = n ~/ 2;
      o++;
    }

    print(o);
  }
}
