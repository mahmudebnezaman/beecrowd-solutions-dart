import 'dart:convert';
import 'dart:io';

void main() {
  final lines = <String>[];
  final output = StringBuffer();

  stdin
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .listen((line) => lines.add(line), onDone: () {
    for (int i = 0; i < lines.length-1; i++) {
      if (lines[i].startsWith('0x')){
        output.writeln(int.parse(lines[i].substring(2), radix: 16));
      } else {
        output.writeln('0x${int.parse(lines[i]).toRadixString(16).toUpperCase()}');
      }
    }
    stdout.write(output);
  });
}
