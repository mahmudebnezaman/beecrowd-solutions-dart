import 'dart:io';

void main() {
  int count = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < count; i++) {
    List<int> num =
        stdin.readLineSync()!.split(' ').map((n) => int.parse(n)).toList();
    print(num[0] + num[1]);
  }
}
