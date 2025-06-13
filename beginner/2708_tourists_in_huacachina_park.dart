import 'dart:io';
import 'dart:convert';

void main() {
  List<String> lines = [];
  int tIn = 0, tOut = 0, jIn = 0, jOut = 0;

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen((line) {
    lines.add(line);
  }, onDone: () {
    for (int i = 0; i < lines.length - 1; i++) {
      List<String> n = lines[i].split(' ');
      if (n[0] == 'SALIDA') {
        jIn++;
        tIn += int.parse(n[1]);
      } else {
        jOut++;
        tOut += int.parse(n[1]);
      }
    }

    print("${tIn - tOut}\n${jIn - jOut}");
  });
}