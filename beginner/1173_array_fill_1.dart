import 'dart:io';

void main() {
  int flag = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < 10; i++) {
    print('N[$i] = $flag');
    flag *= 2;
  }
}