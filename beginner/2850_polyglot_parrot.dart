import 'dart:io';

void main() {
  while (true) {
    String? c = stdin.readLineSync();

    if (c == null) {
      break;
    }

    switch (c) {
      case ('esquerda'):
        {
          print('ingles');
        }
        break;
      case ('direita'):
        {
          print('frances');
        }
        break;
      case ('nenhuma'):
        {
          print('portugues');
        }
        break;
      case ('as duas'):
        {
          print('caiu');
        }
        break;
    }
  }
}