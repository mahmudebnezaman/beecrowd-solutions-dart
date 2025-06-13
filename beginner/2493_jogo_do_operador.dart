import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) {
      return;
    }
    int n = int.parse(input);
    List<String> exp = [];
    List<String> move = [];
    List<String> output = [];

    for (int i = n; i > 0; i--) {
      exp.add(stdin.readLineSync()!);
    }
    for (int i = n; i > 0; i--) {
      move.add(stdin.readLineSync()!);
    }
    for (int i = 0; i < n; i++) {
      List<String> m = move[i].split(' ');
      List<String> e = exp[int.parse(m[1]) - 1].split(RegExp(r'[ =]'));

      int a = int.parse(e[0]);
      int b = int.parse(e[1]);
      int c = int.parse(e[2]);

      if (m[2] == 'I') {
        if (a + b == c || a - b == c || a * b == c) {
          output.add(m[0]);
        }
      } else {
        if (m[2] == '+' && a + b != c) {
          output.add(m[0]);
        } else if (m[2] == '-' && a - b != c) {
          output.add(m[0]);
        } else if (m[2] == '*' && a * b != c) {
          output.add(m[0]);
        }
      }
    }

    if (output.isEmpty) {
      print("You Shall All Pass!");
    } else if (output.length == n) {
      print("None Shall Pass!");
    } else {
      print(sortOutput(output));
    }
  }
}

String sortOutput(List<String> l) {
  String r = '';

  l.sort();

  for (int i = 0; i < l.length; i++) {
    if (i != 0) {
      r = '$r ';
    }
    r = '$r${l[i]}';
  }

  return r;
}