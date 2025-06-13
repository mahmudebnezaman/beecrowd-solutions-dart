import 'dart:io';

void main() {
  List<int> n = stdin
      .readLineSync()!
      .split(' ')
      .where((s) => s.isNotEmpty)
      .map((p) => int.parse(p))
      .toList();
  print(n.indexOf(1) + 1);
}