import 'dart:io';
import 'dart:math';

void main() {
  int i = int.parse(stdin.readLineSync()!);

  double s = sqrt(5);
  num a = pow(((1 + s) / 2), i);
  num b = pow(((1 - s) / 2), i);

  print(((a - b) / s).toStringAsFixed(1));
}
