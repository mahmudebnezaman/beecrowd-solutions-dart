import 'dart:io';

void main() {
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    List<int> input =
        stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
    print(
        '${input[0].toString().padLeft(2, '0')}:${input[1].toString().padLeft(2, '0')} - A porta ${input[2] == 1 ? 'abriu' : 'fechou'}!');
  }
}