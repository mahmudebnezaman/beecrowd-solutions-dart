import 'dart:io';

void main() {
  while (true) {
    List<int> n =
        stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

    if (n[0] == 0 && n[1] == 0) break;

    print(n[0] * n[1]);
  }
}