import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    List<int> n =
        stdin.readLineSync()!.split(' ').map((n) => int.parse(n)).toList();
    if (n[0] == 0) {
      break;
    }
    double side = sqrt((n[0] * n[1]) / (n[2] / 100));
    print(side.toInt());
  }
}