import 'dart:io';
import 'dart:convert';

void main() {
  List<String> input = [];
  List<List<int>> matrix = [];
  List<int> n = [];
  bool lightSaverFound = false;

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
    (line) {
      input.add(line);
    },
    onDone: () {
      n = input[0].split(' ').map((p) => int.parse(p)).toList();

      for (int i = 1; i < input.length; i++) {
        matrix.add(input[i].split(' ').map((p) => int.parse(p)).toList());
      }

      for (int i = 1; i < n[0] - 1; i++) {
        for (int j = 1; j < n[1] - 1; j++) {
          if (matrix[i][j] == 42) {
            if (matrix[i - 1][j - 1] == 7 &&
                matrix[i - 1][j] == 7 &&
                matrix[i - 1][j + 1] == 7 &&
                matrix[i][j - 1] == 7 &&
                matrix[i][j + 1] == 7 &&
                matrix[i + 1][j - 1] == 7 &&
                matrix[i + 1][j] == 7 &&
                matrix[i + 1][j + 1] == 7) {
              print('${i+1} ${j+1}');
              lightSaverFound = true;
              break;
            }
          }
        }
      }
      if (!lightSaverFound) print('0 0');
    },
  );
}