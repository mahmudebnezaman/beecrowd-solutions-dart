import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();

    if (input == null) break;

    int y = int.parse(input);

    if (y % 100 == 0) {
      print(y ~/ 100);
    } else {
      print((y ~/ 100) + 1);
    }
  }
}