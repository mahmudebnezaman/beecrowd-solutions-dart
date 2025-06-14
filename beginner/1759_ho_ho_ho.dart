import 'dart:io';

void main() {
  int flag = int.parse(stdin.readLineSync()!);
  print('${'Ho ' * (flag - 1)}Ho!');
}