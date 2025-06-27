import 'dart:io';

main() {
  final int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    final s = stdin.readLineSync()!.split(' ').map(int.parse).toList();

    print(s.skip(1).reduce((a, b) => a + b) + 1 - s[0]);
  }
}
