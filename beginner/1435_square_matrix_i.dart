import 'dart:io';
import 'dart:convert';

void main() {
  final buffer = StringBuffer();

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
        (line) {
      line = line.trim();
      if (line.isEmpty) return;

      int? input = int.tryParse(line);
      if (input == null || input == 0) return;

      List<List<int>> matrix = List.generate(input, (_) => List.filled(input, 0));
      int layers = (input / 2).ceil();

      for (int layer = 0; layer < layers; layer++) {
        int value = layer + 1;
        for (int i = layer; i < input - layer; i++) {
          for (int j = layer; j < input - layer; j++) {
            matrix[i][j] = value;
          }
        }
      }

      for (var row in matrix) {
        for (int i = 0; i < row.length; i++) {
          if (i > 0) buffer.write(' ');
          buffer.write(row[i].toString().padLeft(3));
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