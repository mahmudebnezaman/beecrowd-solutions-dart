import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  print('A = $a, B = $b, C = $c');
  print(
      'A = ${a.toString().padLeft(10, ' ')}, B = ${b.toString().padLeft(10, ' ')}, C = ${c.toString().padLeft(10, ' ')}');
  print(
      'A = ${formattedNum(a)}, B = ${formattedNum(b)}, C = ${formattedNum(c)}');
  print(
      'A = ${a.toString().padRight(10, ' ')}, B = ${b.toString().padRight(10, ' ')}, C = ${c.toString().padRight(10, ' ')}');
}

String formattedNum(int x) {
  if (x < 0) {
    return '-${x.abs().toString().padLeft(9, '0')}';
  } else {
    return x.toString().padLeft(10, '0');
  }
}
