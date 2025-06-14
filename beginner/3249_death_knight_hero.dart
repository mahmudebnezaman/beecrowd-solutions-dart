import 'dart:io';

void main() {
  int winStrike = 0;

  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    if (!stdin.readLineSync()!.contains('CD')) {
      winStrike++;
    }
  }

  print(winStrike);
}