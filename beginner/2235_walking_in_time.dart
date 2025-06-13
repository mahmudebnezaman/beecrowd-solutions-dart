import 'dart:io';

void main() {
  List<int> n =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

  if (n[0] == n[1] || n[0] == n[2] || n[2] == n[1]) {
    print('S');
    return;
  }

  n.sort();

  if (n[0] + n[1] == n[2]) {
    print('S');
  } else {
    print('N');
  }
}