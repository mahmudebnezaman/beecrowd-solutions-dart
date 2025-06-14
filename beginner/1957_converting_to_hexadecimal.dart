import 'dart:io';

void main() {
  String hex = '';
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i ~/= 16) {
    switch (i % 16) {
      case (10):
        {
          hex += 'A';
        }
        break;
      case (11):
        {
          hex += 'B';
        }
        break;
      case (12):
        {
          hex += 'C';
        }
        break;
      case (13):
        {
          hex += 'D';
        }
        break;
      case (14):
        {
          hex += 'E';
        }
        break;
      case (15):
        {
          hex += 'F';
        }
        break;
      default:
        {
          hex += (i % 16).toString();
        }
        break;
    }
  }
  print(hex.split('').reversed.join());
}