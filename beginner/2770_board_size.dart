import 'dart:io';
import 'dart:convert';

void main() {
  List<String> lines = [];

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen((line) {
    lines.add(line);
  }, onDone: () {
    int i = 0;
    while (i < lines.length) {
      List<int> n = lines[i++].split(' ').map(int.parse).toList();

      for (int j = 0; j < n[2]; j++) {
        if (i >= lines.length) break;

        List<int> m = lines[i++].split(' ').map(int.parse).toList();

        if ((n[0] >= m[0] && n[1] >= m[1]) || (n[0] >= m[1] && n[1] >= m[0])) {
          print('Sim');
        } else {
          print('Nao');
        }
      }
    }
  });
}