import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) {
      return;
    }

    int n = int.parse(input);

    int s = 0, d = 0;

    for (int i = 0; i < n; i++) {
      List<int> x =
          stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

      s += (x[0] * x[1]);
      d += x[1];
    }

    print((s / (d * 100)).toStringAsFixed(4));
  }
}