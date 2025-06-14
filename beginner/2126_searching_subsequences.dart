import 'dart:io';

void main() {
  int i = 1;
  while (true) {
    String? n1 = stdin.readLineSync();

    if (n1 == null) {
      break;
    }

    String n2 = stdin.readLineSync()!;
    print('Caso #$i:');
    if (!n2.contains(n1)) {
      print('Nao existe subsequencia\n');
    } else {
      int pos = n2.lastIndexOf(n1) + 1;
      int count = 0, index = 0;

      while ((index = n2.indexOf(n1, index)) != -1) {
        count++;
        index += n1.length;
      }

      print('Qtd.Subsequencias: $count\nPos: $pos\n');
    }
    i++;
  }
}