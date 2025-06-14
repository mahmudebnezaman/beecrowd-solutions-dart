import 'dart:io';

void main() {
  String l = stdin.readLineSync()!;

  print(l.codeUnits[0] - 64);
}
