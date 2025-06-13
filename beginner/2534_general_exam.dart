import 'dart:io';
import 'dart:convert';

void main() {
  List<String> lines = [];
  List<int> n = [];
  List<int> score = [];
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
          score.add(int.parse(lines[i]));
          if (j == n[0] - 1) {
            score.sort((a, b) => b.compareTo(a));
          }
        }
        for (int j = 0; j < n[1]; j++, i++) {
          print(score[int.parse(lines[i]) - 1]);
          if (j == n[1] - 1) {
            isTestCase = true;
            score.clear();
            n.clear();
            break;
          }
        }
      }
    }
  });
}