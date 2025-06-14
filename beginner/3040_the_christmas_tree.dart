import 'dart:io';

void main() {
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    List<int> input =
        stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

    if ((input[0] >= 200 && input[0] <= 300) &&
        (input[1] >= 50) &&
        (input[2] >= 150)) {
      print('Sim');
    } else {
      print('Nao');
    }
  }
}