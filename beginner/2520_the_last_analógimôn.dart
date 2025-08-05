import 'dart:io';

void main() {
  while (true) {
    final line = stdin.readLineSync();
    if (line == null || line.trim().isEmpty) break;

    final n = int.parse(line.split(' ').first);
    final matrix = <List<int>>[];

    int a = -1, b = -1, c = -1, d = -1;

    for (int i = 0; i < n; i++) {
      final row = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
      matrix.add(row);

      for (int j = 0; j < row.length; j++) {
        if (row[j] == 2) {
          a = i;
          b = j;
        } else if (row[j] == 1) {
          c = i;
          d = j;
        }
      }
    }

    if (a != -1 && b != -1 && c != -1 && d != -1) {
      print((a - c).abs() + (b - d).abs());
    }
  }
}
