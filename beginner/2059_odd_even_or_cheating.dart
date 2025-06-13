import 'dart:io';

void main() {
  List<int> n =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

  bool isEvenSum = (n[1] + n[2]) % 2 == 0;
  int winner = 2;

  if ((n[3] == 1 && n[4] == 0)) {
    winner = 1;
  } else if ((n[3] == 0 && n[4] == 1)) {
    winner = 1;
  } else if ((n[3] == 0 && n[4] == 0) &&
      ((n[0] == 1 && isEvenSum) || (n[0] == 0 && !isEvenSum))) {
    winner = 1;
  }

  print('Jogador $winner ganha!');
}