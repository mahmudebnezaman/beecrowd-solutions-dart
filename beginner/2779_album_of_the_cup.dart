import 'dart:io';
import 'dart:convert';

void main() {
  List<String> lines = [];
  Set<String> n = {};

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
          (line) {
        lines.add(line);
      },
      onDone: () {
        n = lines.skip(2).toSet();
        print(int.parse(lines[0]) - n.length);
      }
  );
}