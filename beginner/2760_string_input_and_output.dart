import 'dart:io';

void main() {
  String a = stdin.readLineSync()!;
  String b = stdin.readLineSync()!;
  String c = stdin.readLineSync()!;
  print('$a$b$c');
  print('$b$c$a');
  print('$c$a$b');
  print(
      '${a.length > 10 ? a.substring(0, 10) : a}${b.length > 10 ? b.substring(0, 10) : b}${c.length > 10 ? c.substring(0, 10) : c}');
}