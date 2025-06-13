import 'dart:io';

void main() {
  String a = stdin.readLineSync()!;
  String b = stdin.readLineSync()!;
  String c = stdin.readLineSync()!;

  print('A = $a, B = $b, C = $c');
  print('A = $b, B = $c, C = $a');
  print('A = $c, B = $a, C = $b');
}
