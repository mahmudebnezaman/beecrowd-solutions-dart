import 'dart:io';
import 'dart:convert';

void main() {
  List<String> lines = [];

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen((line) {
    lines.add(line);
  }, onDone: () {
    double n = 0;
    double v = 0;
    for (int i = 0; i < lines.length; i++) {
      if (i % 2 == 0) {
        n = (double.parse(lines[i]) * 2 / 3);
      } else {
        v = 0;
        lines[i].split(' ').forEach((p) => v += double.parse(p));
        print(v >= n ? 'impeachment' : 'acusacao arquivada');
      }
    }
  });
}