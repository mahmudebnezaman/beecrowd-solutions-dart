import 'dart:io';

void main() {
  List<int> armies =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

  int goodSide = armies[0] + armies[1] + armies[2] + armies[5];
  int evilSide = armies[3] + armies[4];

  if (goodSide > evilSide) {
    print('Middle-earth is safe.');
  } else {
    print('Sauron has returned.');
  }
}