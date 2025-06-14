import 'dart:io';

void main() {
  while (true) {
    int n = int.parse(stdin.readLineSync()!);
    if (n == 0) {
      return;
    }

    print(List.generate(n, (index) => (index + 1).toString()).join(' '));
  }
}