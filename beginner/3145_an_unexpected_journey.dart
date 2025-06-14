import 'dart:io';

void main() {
  List<int> input =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

  print((input[1] / (input[0] + 2)).toStringAsFixed(2));
}