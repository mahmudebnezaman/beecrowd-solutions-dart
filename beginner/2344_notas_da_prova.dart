import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  if (n == 0) {
    print('E');
  } else if (n > 0 && n < 36) {
    print('D');
  } else if (n > 35 && n < 61) {
    print('C');
  } else if (n > 60 && n < 86) {
    print('B');
  } else if (n > 85) {
    print('A');
  }
}