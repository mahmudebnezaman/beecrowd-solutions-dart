import 'dart:io';

void main() {
  while (true) {
    int flag = int.parse(stdin.readLineSync()!);
    String output = '';
    if (flag == 0) {
      break;
    }
    for (int i = 0; i < flag; i++) {
      bool isPositive = false;
      int value = i + 1;
      for (int j = 0; j < flag; j++) {
        output +=
            ("${value.toString().padLeft(3)}${j == flag - 1 ? '\n' : ' '}");
        if (value == 1) {
          isPositive = true;
        }
        isPositive ? value++ : value--;
      }
    }
    print(output);
  }
}