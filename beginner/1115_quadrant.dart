import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) {
      return;
    }
    List<String> numberString = input.split(' ');
    if (numberString.length < 2) {
      return;
    }
    List<int> num = [];
    for (String value in numberString) {
      num.add(int.parse(value));
    }

    if (num[0] == 0 || num[1] == 0) {
      continue;
    } else if (num[0] > 0 && num[1] > 0) {
      print('primeiro');
    } else if (num[0] > 0 && num[1] < 0) {
      print('quarto');
    } else if (num[0] < 0 && num[1] < 0) {
      print('terceiro');
    } else if (num[0] < 0 && num[1] > 0) {
      print('segundo');
    }
  }
}