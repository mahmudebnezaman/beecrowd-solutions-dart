import 'dart:io';

void main() {
  while (true) {
    String? p = stdin.readLineSync();
    if (p == null) {
      break;
    }
    List<String> n = p.split(',');

    print(n[0]);
    print(n[1]);
  }
}