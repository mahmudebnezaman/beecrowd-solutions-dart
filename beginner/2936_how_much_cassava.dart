import 'dart:io';

void main() {
  int total = 0;
  total += int.parse(stdin.readLineSync()!) * 300;
  total += int.parse(stdin.readLineSync()!) * 1500;
  total += int.parse(stdin.readLineSync()!) * 600;
  total += int.parse(stdin.readLineSync()!) * 1000;
  total += int.parse(stdin.readLineSync()!) * 150;
  total += 225;

  print(total);
}