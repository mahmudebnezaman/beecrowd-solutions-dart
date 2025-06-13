import 'dart:io';
import 'dart:convert';

void main() {
  List<String> lines = [];
  List<int> n = [];
  int score = 0;
  bool isTestCase = true;

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen((line) {
    lines.add(line);
  }, onDone: () {
    for (int i = 0; i < lines.length; i++) {
      if (isTestCase) {
        n.addAll(lines[i].split(' ').map((p) => int.parse(p)).toList());
        isTestCase = false;
      } else {
        for (int j = 0; j < n[0]; j++, i++) {
          if (lines[i].startsWith(n[1].toString()) && lines[i].endsWith('0'))
            score++;

          if (j == n[0] - 1) {
            print(score);
            isTestCase = true;
            score = 0;
            n.clear();
            break;
          }
        }
      }
    }
  });
}