import 'dart:io';

void main() {
  while (true) {
    String? p = stdin.readLineSync();
    if (p == null) {
      break;
    }
    List<int> n = p.split('.').map((x) => int.parse(x)).toList();

    print('${n[1]}.${n[0]}');
  }
}