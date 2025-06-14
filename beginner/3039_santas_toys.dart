import 'dart:io';

void main() {
  int b = 0, g = 0;
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    List<String> input = stdin.readLineSync()!.split(' ');

    if (input[1] == 'M') {
      b++;
    } else {
      g++;
    }
  }

  print('$b carrinhos');
  print('$g bonecas');
}