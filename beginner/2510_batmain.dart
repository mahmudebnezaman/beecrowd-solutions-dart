import 'dart:io';

void main() {
  int range = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < range; i++) {
    stdin.readLineSync();
    print('Y');
  }
}