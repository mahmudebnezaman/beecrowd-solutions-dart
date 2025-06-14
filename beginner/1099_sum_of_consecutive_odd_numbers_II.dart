import 'dart:io';

void main() {
  int range = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < range; i++) {
    String input = stdin.readLineSync()!;

    int sum = 0;

    List<String> numberString = input.split(' ');
    List<int> num = [];

    for (String value in numberString) {
      num.add(int.parse(value));
    }

    num.sort();

    for (int j = num[0] + 1; j < num[1]; j++) {
      if (j % 2 != 0) {
        sum += j;
      }
    }

    print(sum);
  }
}