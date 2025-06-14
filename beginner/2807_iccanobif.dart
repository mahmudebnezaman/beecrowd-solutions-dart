import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> fib = [];
  for (int i = 0; i < n; i++) {
    if (i == 0 || i == 1) {
      fib.add(1);
    } else {
      fib.add(fib[i - 1] + fib[i - 2]);
    }
  }

  print(fib.reversed.join(' '));
}