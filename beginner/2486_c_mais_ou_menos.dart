import 'dart:io';

void main() {
  while (true) {
    int n = int.parse(stdin.readLineSync()!);
    if (n == 0) {
      return;
    }

    int output = 0;

    for (int i = n; i > 0; i--) {
      List<String> s = stdin.readLineSync()!.split(' ');

      if (s[1] == 'suco') {
        output += (int.parse(s[0]) * 120);
      } else if (s[1] == 'morango') {
        output += (int.parse(s[0]) * 85);
      } else if (s[1] == 'mamao') {
        output += (int.parse(s[0]) * 85);
      } else if (s[1] == 'goiaba') {
        output += (int.parse(s[0]) * 70);
      } else if (s[1] == 'manga') {
        output += (int.parse(s[0]) * 56);
      } else if (s[1] == 'laranja') {
        output += (int.parse(s[0]) * 50);
      } else if (s[1] == 'brocolis') {
        output += (int.parse(s[0]) * 34);
      }
    }

    if (output < 110) {
      print("Mais ${110 - output} mg");
    } else if (output > 130) {
      print("Menos ${output - 130} mg");
    } else {
      print("$output mg");
    }
  }
}