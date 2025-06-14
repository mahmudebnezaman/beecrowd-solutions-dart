import 'dart:io';

void main() {
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    String input = stdin.readLineSync()!;
    if (input == 'P=NP') {
      print('skipped');
    } else {
      print(input
          .split('+')
          .map((p) => int.parse(p))
          .toList()
          .reduce((a, b) => a + b));
    }
  }
}