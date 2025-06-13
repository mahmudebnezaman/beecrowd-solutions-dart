import 'dart:io';

void main() {
  while (true) {
    String? n = stdin.readLineSync();
    if (n == null) {
      return;
    }

    int x = int.parse(n);

    List<String> history = [];
    for (int i = 0; i < x; i++) {
      history.add(stdin.readLineSync()!);
    }

    int y = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < y; i++) {
      int a = 0, b = 0;
      String query = stdin.readLineSync()!;

      for (var h in history) {
        if (h.startsWith(query)) {
          a++;
          b = b < h.length ? h.length : b;
        }
      }
      print(a > 0 ? '$a $b' : -1);
    }
  }
}