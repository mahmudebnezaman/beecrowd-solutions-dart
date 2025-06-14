import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  List<String> numberString = input.split(' ');
  List<int> num = [];

  for (String value in numberString) {
    num.add(int.parse(value));
  }

  int j = 0;
  for (int i = 1; i <= num[1]; i++) {
    stdout.write(i);
    if (j < num[0] - 1) {
      stdout.write(' ');
    } else {
      print('');
    }
    j++;
    if (j == num[0]) {
      j = 0;
    }
  }
}