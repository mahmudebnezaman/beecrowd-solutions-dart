import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) {
      return;
    }
    String o = '';

    List<int> x = input.split(' ').map((p) => int.parse(p)).toList();

    for (int i = 0; i < x[1]; i++) {
      List<String> x = stdin.readLineSync()!.split(' ');
      if (o.isEmpty && !x.sublist(1).any((s) => s.contains('0'))) {
        o = x[0];
      }
    }

    print(o.isEmpty ? 'Pizza antes de FdI' : o);
  }
}