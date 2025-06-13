import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) {
      return;
    }

    List<int> n = input.split(' ').map((p) => int.parse(p)).toList();

    List<String> c = stdin.readLineSync()!.split('');
    List<String> d = stdin.readLineSync()!.split('');

    for (int i = n[1]; i > 0; i--) {
      List<String> a = stdin.readLineSync()!.split('');

      for (int j = 0; j < a.length; j++) {
        if (a[j].codeUnitAt(0) >= 'A'.codeUnitAt(0) &&
            a[j].codeUnitAt(0) <= 'Z'.codeUnitAt(0)) {
          if (c.contains(a[j])) {
            a[j] = d[c.indexOf(a[j])];
          } else if (d.contains(a[j])) {
            a[j] = c[d.indexOf(a[j])];
          }
        } else {
          if (c.contains(a[j].toUpperCase())) {
            a[j] = d[c.indexOf(a[j].toUpperCase())].toLowerCase();
          } else if (d.contains(a[j].toUpperCase())) {
            a[j] = c[d.indexOf(a[j].toUpperCase())].toLowerCase();
          }
        }
      }
      print(a.join(''));
    }
    print('');
  }
}