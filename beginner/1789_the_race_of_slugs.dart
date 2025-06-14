import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) {
      break;
    }
    List<int> slugs =
        stdin.readLineSync()!.split(' ').map((n) => int.parse(n)).toList();

    if (slugs.any((s) => s >= 20)) {
      print(3);
    } else if (slugs.any((s) => s >= 10 && s < 20)) {
      print(2);
    } else {
      print(1);
    }
  }
}