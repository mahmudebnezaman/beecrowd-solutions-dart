import 'dart:io';

void main() {
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    List<int> n =
        stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

    print(BigInt.from(n[0]).pow(n[1]).toString().length);
  }
}