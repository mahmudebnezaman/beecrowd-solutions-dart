import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);
  switch (num) {
    case 61:
      {
        print('Brasilia');
      }
      break;
    case 71:
      {
        print('Salvador');
      }
      break;
    case 21:
      {
        print('Rio de Janeiro');
      }
      break;
    case 11:
      {
        print('Sao Paulo');
      }
      break;
    case 32:
      {
        print('Juiz de Fora');
      }
      break;
    case 19:
      {
        print('Campinas');
      }
      break;
    case 31:
      {
        print('Balo Horizonte');
      }
      break;
    case 27:
      {
        print('Vitoria');
      }
      break;
    default:
      {
        print('DDD nao cadastrado');
      }
      break;
  }
}