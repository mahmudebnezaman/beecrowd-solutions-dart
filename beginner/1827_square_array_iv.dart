import 'dart:io';
import 'dart:convert';

void main() {
  final buffer = StringBuffer();
  int center = 0;

  int ringPoint = 0;

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
        (line) {
      line = line.trim();
      if (line.isEmpty) return;

      int? n = int.tryParse(line);
      if (n == null) return;

      List<List<int>> matrix = List.generate(n, (_) => List.filled(n, 0));

      for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
          if (i == j) matrix[i][j] = 2;
          if ((i + j) == (n - 1)) matrix[i][j] = 3;
        }
      }

      ringPoint = n~/3;

      for (int i = ringPoint; i < n-ringPoint; i++) {
        for (int j = ringPoint; j < n-ringPoint; j++) {
          matrix[i][j] = 1;
        }
      }

      center = n~/2;
      matrix[center][center] = 4;

      for (var row in matrix) {
        for (int i = 0; i < row.length; i++) {
          buffer.write(row[i].toString());
        }
        buffer.writeln();
      }
      buffer.writeln();
    },
    onDone: () {
      stdout.write(buffer.toString());
    },
  );
}