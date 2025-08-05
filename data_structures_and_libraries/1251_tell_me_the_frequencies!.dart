import 'dart:io';
import 'dart:convert';

void main() {
  final buffer = StringBuffer();

  List<String> input = [];

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen((line) {
    line = line.trim();
    if (line.isEmpty) return;

    input.add(line);
  }, onDone: () {
    for (int i = 0; i < input.length; i++) {
      final line = input[i];

      final Map<int, int> freqMap = {};

      for (var ch in line.codeUnits) {
        freqMap[ch] = (freqMap[ch] ?? 0) + 1;
      }

      final sortedEntries = freqMap.entries.toList()
        ..sort((a, b) {
          int freqCompare = a.value.compareTo(b.value);
          if (freqCompare != 0) return freqCompare;
          return b.key.compareTo(a.key);
        });

      for (var entry in sortedEntries) {
        buffer.writeln('${entry.key} ${entry.value}');
      }

      if (i != input.length - 1) buffer.writeln();
    }

    stdout.write(buffer);
  });
}
