import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    int flag = int.parse(stdin.readLineSync()!);
    String output = '';
    if (flag == 0) {
      break;
    }

    int t = pow(2, (flag * 2) - 2).toString().length;

    for (int i = 1; i <= pow(2, flag - 1); i *= 2) {
      int value = i;
      for (int j = 0; j < flag; j++) {
        output +=
            ("${value.toString().padLeft(t)}${j == flag - 1 ? '\n' : ' '}");
        value *= 2;
      }
    }
    print(output);
  }
}