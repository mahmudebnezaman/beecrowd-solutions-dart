import 'dart:convert';
import 'dart:io';

void main() {
  final output = StringBuffer();
  final lines = <String>[];

  stdin
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .listen((line) => lines.add(line), onDone: () {
    for (int i = 2; i < lines.length; i += 2) {
      final oddNumbers = lines[i]
          .split(' ')
          .map(int.parse)
          .where((num) => num.isOdd)
          .toList()
        ..sort();

      if (oddNumbers.isEmpty) {
        output.writeln();
        continue;
      }

      final arranged = <int>[];
      for (int j = 0, k = oddNumbers.length - 1; j <= k; j++, k--) {
        if (j == k) {
          arranged.add(oddNumbers[j]);
        } else {
          arranged.add(oddNumbers[k]);
          arranged.add(oddNumbers[j]);
        }
      }

      output.writeln(arranged.join(' '));
    }
    stdout.write(output);
  });
}