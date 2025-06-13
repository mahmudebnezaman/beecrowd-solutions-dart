import 'dart:io';

void main() {
  final Map<String, bool> uniqueLines = {};

  while (true) {
    String? line = stdin.readLineSync();

    if (line == null || line.trim().isEmpty) {
      break;
    }

    uniqueLines[line] = true;
  }

  print(uniqueLines.length);
}