import 'dart:io';

void main() {
  while (true) {
    String? n = stdin.readLineSync();
    if (n == null) {
      return;
    }

    List<int> a = n.split(' ').map((p) => int.parse(p)).toList();
    int count = 0;

    for (int i = a[0]; i > 0; i--) {
      int t = int.parse(stdin.readLineSync()!);

      if (t >= a[1] && t <= a[2]) {
        count++;
      }
    }

    print(count);
  }
}