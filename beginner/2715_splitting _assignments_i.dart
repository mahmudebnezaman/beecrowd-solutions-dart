import 'dart:convert';
import 'dart:io';

void main() {
  List<String> input = [];

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
        (line) {
      input.add(line);
    },
    onDone: () {
      for (int i = 1; i < input.length; i += 2) {
        List<int> assignment =
        input[i].split(RegExp(r'\s+')).map(int.parse).toList();

        int total = assignment.fold(0, (a, b) => a + b);

        int r = 0;
        int minDiff = total;

        for (int j = 0; j < assignment.length; j++) {
          r += assignment[j];
          int g = total - r;
          int diff = (r - g).abs();

          if (diff < minDiff) {
            minDiff = diff;
          }
        }

        print(minDiff);
      }
    },
  );
}
