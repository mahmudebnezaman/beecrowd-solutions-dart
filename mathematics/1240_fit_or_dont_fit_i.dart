import 'dart:convert';
import 'dart:io';

void main() {
  final lines = <String>[];
  final output = StringBuffer();

  stdin
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .listen((line) => lines.add(line), onDone: () {
    for (int i = 1; i < lines.length; i++) {
      List<String> num = lines[i].split(' ');
      if (num[0].endsWith(num[1])){
        output.writeln("encaixa");
      } else {
        output.writeln("nao encaixa");
      }
    }

    stdout.write(output);
  });
}