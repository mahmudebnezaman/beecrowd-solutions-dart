import 'dart:io';

void main() {
  String n = stdin.readLineSync()!;

  int count = 0;

  for (var i in n.split('')) {
    if (i == '1') count++;
  }

  print('$n${(count % 2 == 0) ? '0' : '1'}');
}