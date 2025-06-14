import 'dart:io';

void main() {
  String a = stdin.readLineSync()!;
  String b = stdin.readLineSync()!;

  int v = a.compareTo(b);
  print((v <= 0) ? "$a\n$b" : "$b\n$a");
}