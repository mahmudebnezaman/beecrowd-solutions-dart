import 'dart:io';

void main() {
  int x = 0, h = 0, e = 0, a = 0, m = 0;

  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    String n = stdin.readLineSync()!.split(' ').last;
    switch (n) {
      case 'X':
        {
          x++;
        }
        break;
      case 'H':
        {
          h++;
        }
        break;
      case 'E':
        {
          e++;
        }
        break;
      case 'A':
        {
          a++;
        }
        break;
      case 'M':
        {
          m++;
        }
        break;
    }
  }

  print('$x Hobbit(s)\n$h Humano(s)\n$e Elfo(s)\n$a Anao(oes)\n$m Mago(s)');
}