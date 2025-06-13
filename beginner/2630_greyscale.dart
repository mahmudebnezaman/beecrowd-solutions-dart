import 'dart:io';

void main() {
  int x = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= x; i++) {
    String n = stdin.readLineSync()!;
    List<int> input =
        stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
    int o = 0;
    if (n == 'eye') {
      o = ((input[0] * 0.3) + (input[1] * .59) + (input[2] * .11)).floor();
    }
    input.sort();
    if (n == 'mean') {
      o = (input[0] + input[1] + input[2]) ~/ 3;
    } else if (n == 'min') {
      o = input[0];
    } else if (n == 'max') {
      o = input[2];
    }

    print('Caso #$i: $o');
  }
}
