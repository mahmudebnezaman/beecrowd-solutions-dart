import 'dart:io';

void main() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null) break;
    List<int> n = input.split(' ').map((p) => int.parse(p)).toList();

    String hour = (n[0] ~/ 30).toString().padLeft(2, '0');
    String minute = (n[1] ~/ 6).toString().padLeft(2, '0');

    print('$hour:$minute');
  }
}