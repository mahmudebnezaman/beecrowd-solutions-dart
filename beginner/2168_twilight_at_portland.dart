import 'dart:io';
import 'dart:convert';

void main() {
  final buffer = StringBuffer();
  List<String> input = [];
  List<List<int>> matrix = [];
  int n = 0;
  int activeCams = 0;

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
        (line) {
      input.add(line);
    },
    onDone: () {
      n = int.parse(input[0]);
      for (int i = 1; i < input.length; i++) {
        matrix.add(input[i]
            .replaceAll(' ', '')
            .split('')
            .map((p) => int.parse(p))
            .toList());
      }

      for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
          activeCams = matrix[i][j] +
              matrix[i + 1][j] +
              matrix[i][j+1] +
              matrix[i + 1][j + 1];
          if (activeCams >= 2) {
            buffer.write('S');
          } else {
            buffer.write('U');
          }
        }
        buffer.writeln();
      }

      stdout.write(buffer.toString());
    },
  );
}