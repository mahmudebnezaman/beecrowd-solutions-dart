import 'dart:io';

void main() {
  while (true) {
    String? n = stdin.readLineSync();
    if (n == '0') break;

    for (int i = int.parse(n!); i > 0; i--) {
      int a = int.parse(stdin.readLineSync()!);

      if (a % 2 == 0) {
        print((a * 2) - 2);
        continue;
      }

      print((a * 2) - 1);
    }
  }
}