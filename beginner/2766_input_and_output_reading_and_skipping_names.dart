import 'dart:io';
import 'dart:convert';

void main() {
  List<String> lines = [];
  String output = '';

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen((line) {
    lines.add(line);
  }, onDone: () {
    for (int i = 0; i < lines.length; i++) {
      if (i % 10 == 2 || i % 10 == 6 || i % 10 == 8) {
        output = '$output${lines[i]}\n';
      }
    }
    stdout.write(output);
  });
}