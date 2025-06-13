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
      output.writeln("${num[0] * num[1] * 2}");
    }

    stdout.write(output);
  });
}