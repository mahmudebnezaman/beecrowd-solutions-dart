import 'dart:io';

void main() {
  List<int> num = [];
  for (int i = 0; i < 10; i++) {
    int flag = int.parse(stdin.readLineSync()!);
    if (flag <= 0) {
      flag = 1;
    }
    num.add(flag);
  }
  for (int i = 0; i < 10; i++) {
    print('X[$i] = ${num[i]}');
  }
}
