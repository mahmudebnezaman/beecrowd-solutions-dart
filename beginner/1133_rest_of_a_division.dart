import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  if (a > b) {
    a = a + b;
    b = a - b;
    a = a - b;
  }

  for (int i = a + 1; i < b; i++) {
    if (i % 5 == 2 || i % 5 == 3) {
      print(i);
    }
  }
}