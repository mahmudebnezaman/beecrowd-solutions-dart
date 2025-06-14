import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    List<String> inputs = (stdin.readLineSync()!).split(' ');
    List<int> num = List.generate(2, (i) => int.parse(inputs[i]));
    if (num[0] % 2 == 0) {
      num[0]++;
    }

    print(List.generate(num[1], (i) => num[0] + i * 2).reduce((a, b) => a + b));
  }
}