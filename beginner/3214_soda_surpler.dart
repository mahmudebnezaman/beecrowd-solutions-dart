import 'dart:io';

void main() {
  List<int> n =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

  int remainingCans = n[0] + n[1];
  int newCans = 0;

  while (remainingCans >= n[2]) {
    newCans += (remainingCans ~/ n[2]);
    remainingCans = (remainingCans % n[2]) + (remainingCans ~/ n[2]);
  }

  print(newCans);
}