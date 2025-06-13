import 'dart:io';

void main() {
  List<int> score = [0, 0, 0];
  List<int> success = [0, 0, 0];
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    stdin.readLineSync();
    List<int> n =
        stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
    List<int> s =
        stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

    for (int j = 0; j < 3; j++) {
      score[j] += n[j];
      success[j] += s[j];
    }
  }

  print(
      'Pontos de Saque: ${((success[0] * 100) / score[0]).toStringAsFixed(2)} %.\nPontos de Bloqueio: ${((success[1] * 100) / score[1]).toStringAsFixed(2)} %.\nPontos de Ataque: ${((success[2] * 100) / score[2]).toStringAsFixed(2)} %.');
}