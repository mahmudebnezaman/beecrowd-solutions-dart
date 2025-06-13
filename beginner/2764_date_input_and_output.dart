import 'dart:io';

void main() {
  while (true) {
    String? p = stdin.readLineSync();
    if (p == null) {
      break;
    }
    List<String> n = p.split('/');

    print('${n[1]}/${n[0]}/${n[2]}');
    print('${n[2]}/${n[1]}/${n[0]}');
    print('${n[0]}-${n[1]}-${n[2]}');
  }
}