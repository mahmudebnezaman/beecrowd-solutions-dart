import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> s =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
  int output = 0;

  for (int i = 1; i < n; i++) {
    if (s[i] < s[i - 1]) {
      output = i + 1;
      break;
    }
  }

  print(output);
}