import 'dart:io';
import 'dart:convert';

void main() {
  bool isPrintable = false;
  final buffer = StringBuffer();

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
        (line) {
      if (line.contains('</body>')) {
        isPrintable = false;
      }
      if (isPrintable) {
        buffer.writeln(line);
      }
      if (line.contains('<body>')) {
        isPrintable = true;
      }
    },
    onDone: () {
      stdout.write(buffer.toString());
    },
  );
}