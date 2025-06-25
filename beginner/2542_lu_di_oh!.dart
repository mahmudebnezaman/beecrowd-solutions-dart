import 'dart:io';
import 'dart:convert';

void main() {
  final input = <String>[];
  final buffer = StringBuffer();

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
    input.add,
    onDone: () {
      int i = 0;

      while (i < input.length) {
        i++;

        final counts =
            input[i++].trim().split(RegExp(r'\s+')).map(int.parse).toList();
        final marcosCardCount = counts[0];
        final leonardoCardCount = counts[1];

        final marcosDeck = <List<int>>[];
        for (int j = 0; j < marcosCardCount; j++) {
          marcosDeck.add(
              input[i++].trim().split(RegExp(r'\s+')).map(int.parse).toList());
        }

        final leonardoDeck = <List<int>>[];
        for (int j = 0; j < leonardoCardCount; j++) {
          leonardoDeck.add(
              input[i++].trim().split(RegExp(r'\s+')).map(int.parse).toList());
        }

        final selectedCards =
            input[i++].trim().split(RegExp(r'\s+')).map(int.parse).toList();
        final marcosCardIdx = selectedCards[0] - 1;
        final leonardoCardIdx = selectedCards[1] - 1;

        final attributeIdx = int.parse(input[i++]) - 1;

        final marcosValue = marcosDeck[marcosCardIdx][attributeIdx];
        final leonardoValue = leonardoDeck[leonardoCardIdx][attributeIdx];

        if (marcosValue > leonardoValue) {
          buffer.writeln('Marcos');
        } else if (leonardoValue > marcosValue) {
          buffer.writeln('Leonardo');
        } else {
          buffer.writeln('Empate');
        }
      }

      stdout.write(buffer.toString());
    },
  );
}