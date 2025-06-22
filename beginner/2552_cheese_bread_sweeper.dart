import 'dart:io';
import 'dart:convert';

void main() {
  final buffer = StringBuffer();
  final input = <String>[];
  final allMatrices = <List<List<int>>>[];
  final matricesSize = <List<int>>[];

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
    input.add,
    onDone: () {
      int i = 0;

      // Parse all matrices
      while (i < input.length) {
        final size = input[i].trim().split(RegExp(r'\s+')).map(int.parse).toList();
        final rows = size[0];
        final cols = size[1];
        matricesSize.add([rows, cols]);

        final matrix = List.generate(
          rows,
              (j) => input[i + j + 1].trim().split(RegExp(r'\s+')).map(int.parse).toList(),
        );

        allMatrices.add(matrix);
        i += rows + 1;
      }

      // Process each matrix
      for (int m = 0; m < allMatrices.length; m++) {
        final matrix = allMatrices[m];
        final rows = matricesSize[m][0];
        final cols = matricesSize[m][1];

        for (int r = 0; r < rows; r++) {
          for (int c = 0; c < cols; c++) {
            if (matrix[r][c] == 1) {
              buffer.write('9');
            } else {
              int sum = 0;
              if (r > 0) sum += matrix[r - 1][c];       // up
              if (r < rows - 1) sum += matrix[r + 1][c]; // down
              if (c > 0) sum += matrix[r][c - 1];       // left
              if (c < cols - 1) sum += matrix[r][c + 1]; // right
              buffer.write(sum);
            }
          }
          buffer.writeln();
        }
      }

      stdout.write(buffer.toString());
    },
  );
}