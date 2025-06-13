import 'dart:io';
import 'dart:convert';

void main() {
  const maxColumn = 16384;
  final buffer = StringBuffer();

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
        (line) {
      int result = 0;
      for (int i = 0; i < line.length; i++) {
        int charValue = line.codeUnitAt(i) - 64;
        result = result * 26 + charValue;
      }

      if (result > maxColumn) {
        buffer.writeln('Essa coluna nao existe Tobias!');
      } else {
        buffer.writeln(result);
      }
    },
    onDone: () {
      stdout.write(buffer.toString());
    },
  );
}