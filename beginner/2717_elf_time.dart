import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> m =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

  print((n >= m[0] + m[1]) ? 'Farei hoje!' : 'Deixa para amanha!');
}