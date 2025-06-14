import 'dart:io';

void main() {
  int alc = 0, gas = 0, die = 0;
  while (true) {
    int a = int.parse(stdin.readLineSync()!);
    if (a == 4) {
      break;
    } else if (a > 0 && a < 4) {
      switch (a) {
        case 1:
          {
            alc++;
          }
          break;
        case 2:
          {
            gas++;
          }
          break;
        case 3:
          {
            die++;
          }
          break;
      }
    }
  }

  print('MUITO OBRIGADO\nAlcool: $alc\nGasolina: $gas\nDiesel: $die');
}