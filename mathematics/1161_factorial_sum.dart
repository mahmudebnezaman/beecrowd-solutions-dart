import 'dart:convert';
import 'dart:io';

void main() {
  final lines = <String>[];
  final output = StringBuffer();

  stdin
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .listen((line) => lines.add(line), onDone: () {
    for (int i = 0; i < lines.length; i++) {
      List<int> num = lines[i].split(' ').map((p) => int.parse(p)).toList();
      output.writeln("${factorial(num[0]) + factorial(num[1])}");
    }

    stdout.write(output);
  });
}

int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}