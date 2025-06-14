import 'dart:io';

void main() {
  String word = stdin.readLineSync()!;

  print((word.length >= 10) ? 'palavrao' : 'palavrinha');
}