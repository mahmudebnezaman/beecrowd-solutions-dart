import 'dart:io';

void main() {
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    int b = int.parse(stdin.readLineSync()!);
    List<int> input1 =
        stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
    List<int> input2 =
        stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

    double value1 =
        ((input1[0] + input1[1]) / 2) + (input1[2] % 2 == 0 ? b : 0);
    double value2 =
        ((input2[0] + input2[1]) / 2) + (input2[2] % 2 == 0 ? b : 0);

    print(value1 == value2
        ? 'Empate'
        : value2 > value1
            ? 'Guarte'
            : 'Dabriel');
  }
}