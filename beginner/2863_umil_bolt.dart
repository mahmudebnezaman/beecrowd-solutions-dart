import 'dart:convert';
import 'dart:io';

void main() {
  List<double> b = [];
  final lines = <String>[];
  String output = '';

  stdin
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .listen((line) => lines.add(line), onDone: () {
    for (int i = 0; i < lines.length; i++) {
      int n = i;
      for(int j = 0; j< int.parse(lines[n]); j++) {
        ++i;
        b.add(double.parse(lines[i]));
      }

      b.sort();
      output = '$output${b.first}\n';
      b.clear();
    }

    stdout.write(output);
  });
}