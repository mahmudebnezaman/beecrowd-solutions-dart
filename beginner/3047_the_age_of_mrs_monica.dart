import 'dart:io';

void main() {
  int m = int.parse(stdin.readLineSync()!);
  List<int> child = [];
  child.add(int.parse(stdin.readLineSync()!));
  child.add(int.parse(stdin.readLineSync()!));
  child.add(m - (child[0] + child[1]));
  child.sort();

  print(child[2]);
}