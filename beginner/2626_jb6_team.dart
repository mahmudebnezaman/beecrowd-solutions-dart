import 'dart:io';
import 'dart:convert';

void main() {
  final buffer = StringBuffer();

  final winMessages = {
    'dodo': 'Os atributos dos monstros vao ser inteligencia, sabedoria...',
    'leo': 'Iron Maiden\'s gonna get you, no matter how far!',
    'pepper': 'Urano perdeu algo muito precioso...',
    'tie': 'Putz vei, o Leo ta demorando muito pra jogar...'
  };

  bool beats(String a, String b) {
    return (a == 'pedra' && b == 'tesoura') ||
        (a == 'papel' && b == 'pedra') ||
        (a == 'tesoura' && b == 'papel');
  }

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
        (line) {
      if (line.isEmpty) return;

      final plays = line.trim().split(' ');
      final dodo = plays[0];
      final leo = plays[1];
      final pepper = plays[2];

      if (dodo == leo && leo == pepper) {
        buffer.writeln(winMessages['tie']);
      } else if (beats(dodo, leo) && beats(dodo, pepper)) {
        buffer.writeln(winMessages['dodo']);
      } else if (beats(leo, dodo) && beats(leo, pepper)) {
        buffer.writeln(winMessages['leo']);
      } else if (beats(pepper, dodo) && beats(pepper, leo)) {
        buffer.writeln(winMessages['pepper']);
      } else {
        buffer.writeln(winMessages['tie']);
      }
    },
    onDone: () => stdout.write(buffer.toString()),
  );
}