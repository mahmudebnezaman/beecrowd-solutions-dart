import 'dart:io';

void main() {
  int range = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < range; i++) {
    String input = stdin.readLineSync()!;

    List<String> numberString = input.split(' ');
    List<double> num = [];

    for (String value in numberString) {
      num.add(double.parse(value));
    }

    if (num[1] == 0) {
      print('divisao impossivel');
    } else {
      print((num[0] / num[1]).toStringAsFixed(1));
    }
  }
}