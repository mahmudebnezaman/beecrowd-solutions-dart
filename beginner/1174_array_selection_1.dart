import 'dart:io';

void main() {
  List<double> num = [];
  for (int i = 0; i < 100; i++) {
    num.add(double.parse(stdin.readLineSync()!));
  }
  for (int i = 0; i < 100; i++) {
    if (num[i] <= 10) {
      print('A[$i] = ${num[i].toStringAsFixed(1)}');
    }
  }
}