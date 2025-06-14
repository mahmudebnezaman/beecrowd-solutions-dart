import 'dart:io';

void main() {
  int.parse(stdin.readLineSync()!);
  List<int> temps =
      stdin.readLineSync()!.split(' ').map((n) => int.parse(n)).toList();
  List<int> n = List.from(temps);
  n.sort();
  print(temps.indexOf(n[0]) + 1);
}