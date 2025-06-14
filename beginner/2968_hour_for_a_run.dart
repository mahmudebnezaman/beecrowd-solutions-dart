import 'dart:io';

void main() {
  List<int> input =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

  int totalSign = input[0] * input[1];

  String output =
      List.generate(9, (index) => (((index + 1) / 10) * totalSign).ceil())
          .join(' ');

  print(output);
}