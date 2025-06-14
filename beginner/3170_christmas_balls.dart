import 'dart:io';

void main() {
  int b = int.parse(stdin.readLineSync()!);
  int g = int.parse(stdin.readLineSync()!);
  int output = (g ~/ 2) - b;

  if (output <= 0) {
    print('Amelia tem todas bolinhas!');
  } else {
    print('Faltam $output bolinha(s)');
  }
}