import 'dart:io';

void main() {
  double r = double.parse(stdin.readLineSync()!);
  double pi = 3.14159;
  double area = pi * r * r;
  print("A=${area.toStringAsFixed(4)}");
}