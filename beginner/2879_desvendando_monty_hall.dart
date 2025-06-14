import 'dart:io';

void main() {
  int count = 0;
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    int n = int.parse(stdin.readLineSync()!);
    if (n == 2 || n == 3) {
      count++;
    }
  }

  print(count);
}