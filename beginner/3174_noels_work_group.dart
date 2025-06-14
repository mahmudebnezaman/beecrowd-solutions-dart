import 'dart:io';

void main() {
  int b = 0, a = 0, m = 0, d = 0;
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    List<String> input = stdin.readLineSync()!.split(' ');
    if (input[1] == 'bonecos') {
      b += int.parse(input[2]);
    } else if (input[1] == 'arquitetos') {
      a += int.parse(input[2]);
    } else if (input[1] == 'musicos') {
      m += int.parse(input[2]);
    } else if (input[1] == 'desenhistas') {
      d += int.parse(input[2]);
    }
  }

  print((b ~/ 8) + (a ~/ 4) + (m ~/ 6) + (d ~/ 12));
}