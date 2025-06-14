import 'dart:io';

void main() {
  int flag = int.parse(stdin.readLineSync()!);
  int temp = 0;

  for (int i = 0; i < 1000; i++) {
    print('N[$i] = $temp');
    temp++;
    if (temp == flag) {
      temp = 0;
    }
  }
}