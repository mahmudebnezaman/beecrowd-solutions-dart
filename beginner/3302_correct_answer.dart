import 'dart:io';

void main() {
  int question = 1;
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    print('resposta ${question++}: ${stdin.readLineSync()}');
  }
}