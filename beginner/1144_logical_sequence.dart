import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= a; i++) {
    print('$i ${i * i} ${i * i * i}');
    print('$i ${(i * i) + 1} ${(i * i * i) + 1}');
  }
}