import 'dart:io';

void main() {
  List<int> temps =
      stdin.readLineSync()!.split(' ').map((n) => int.parse(n)).toList();
  int A = temps[0], B = temps[1], C = temps[2];

  if (A > B && B <= C) {
    printSmile();
  } else if (A < B && B >= C) {
    printSad();
  } else if (A < B && B < C && (B - A) > (C - B)) {
    printSad();
  } else if (A < B && B < C && (B - A) <= (C - B)) {
    printSmile();
  } else if (A > B && B > C && (A - B) > (B - C)) {
    printSmile();
  } else if (A > B && B > C && (A - B) <= (B - C)) {
    printSad();
  } else if (A == B && B < C) {
    printSmile();
  } else if (A == B && B >= C) {
    printSad();
  }
}

void printSmile() {
  print(':)');
}

void printSad() {
  print(':(');
}