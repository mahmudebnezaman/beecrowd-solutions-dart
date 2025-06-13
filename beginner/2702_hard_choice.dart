import 'dart:io';

void main() {
  List<int> n =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
  List<int> m =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
  int sum = 0;

  for (int i = 0; i < 3; i++) {
    sum += (m[i] > n[i]) ? (m[i] - n[i]) : 0;
  }

  print(sum);
}