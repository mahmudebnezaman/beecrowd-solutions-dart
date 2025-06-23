import 'dart:io';
import 'dart:convert';

void main() {
  final buffer = StringBuffer();
  final input = <String>[];

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
    input.add,
    onDone: () {
      int i = 0;

      while (i < input.length) {
        final size = int.parse(input[i]);
        double maxSpeed = -1;

        for (int j = 0; j < size; j++) {
          final parts = input[i + j + 1].trim().split(RegExp(r'\s+')).map(int.parse).toList();
          final time = parts[0];
          final distance = parts[1];
          final speed = distance / time;

          if (speed > maxSpeed) {
            buffer.writeln(j + 1);
            maxSpeed = speed;
          }
        }

        i += size + 1;
      }

      stdout.write(buffer.toString());
    },
  );
}