import 'dart:io';

main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);

  List<int> x = [];

  x.add((b*2) + (c*4));
  x.add((a*2) + (c*2));
  x.add((a*4) + (b*2));

  x.sort();

  print(x[0]);
}