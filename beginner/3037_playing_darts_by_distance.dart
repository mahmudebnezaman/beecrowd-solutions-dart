import 'dart:io';

void main() {
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    int jScore = 0, mScore = 0;

    for (int i = 0; i < 3; i++) {
      List<int> xd =
          stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
      jScore += xd[0] * xd[1];
    }
    for (int i = 0; i < 3; i++) {
      List<int> xd =
          stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
      mScore += xd[0] * xd[1];
    }

    if (jScore > mScore) {
      print('JOAO');
    } else {
      print('MARIA');
    }
  }
}