import 'dart:io';

void main() {
  List<int> i =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

  print((i[0] / (i[1] + i[2])).toStringAsFixed(2));
}