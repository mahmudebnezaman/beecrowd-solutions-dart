import 'dart:io';

void main() {
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    List<int> n =
        stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

    int output = (n[0] ~/ n[1]) + (n[0] % n[1]);

    print(output);
  }
}