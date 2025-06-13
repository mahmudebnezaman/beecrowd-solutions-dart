import 'dart:io';

void main() {
  String n = stdin.readLineSync()!;
  print((n.length <= 140) ? 'TWEET' : 'MUTE');
}