import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int i = 0;

  List<int> input = [];

  while (i < n) {
    input = List.from(stdin.readLineSync()!.split(' ').map((p)=> int.parse(p)).toList());
    input.sort();
    print(gcd(input[0], input[1]));
    i++;
  }
}

int gcd(int a, int b) {
  while (b != 0) {
    var t = b;
    b = a % t;
    a = t;
  }
  return a;
}