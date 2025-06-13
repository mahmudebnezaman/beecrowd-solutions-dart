import 'dart:io';

void main() {
  while (true) {
    String? n = stdin.readLineSync();

    if (n == null) break;

    print(int.parse(n) - 1);
  }
}