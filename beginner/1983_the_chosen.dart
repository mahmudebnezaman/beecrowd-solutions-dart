import 'dart:io';

void main() {
  String winner = '';
  double flag = -1;

  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    List<String> n = stdin.readLineSync()!.split(' ');

    double p = double.parse(n[1]);

    if (p >= 8.0 && p > flag) {
      flag = p;
      winner = n[0];
    }
  }

  print(flag == -1 ? 'Minimum note not reached' : winner);
}