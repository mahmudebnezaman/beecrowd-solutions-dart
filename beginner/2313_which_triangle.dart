import 'dart:io';

void main() {
  List<int> n =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

  n.sort();

  int a = n[0], b = n[1], c = n[2];

  bool isEscaleno = false;

  if (a + b <= c) {
    print('Invalido');
  } else {
    if (a == b && b == c) {
      print('Valido-Equilatero');
    } else if ((a == b && a != c) || (a == c && a != b) || (c == b && a != c)) {
      print('Valido-Isoceles');
    } else {
      isEscaleno = true;
      print('Valido-Escaleno');
    }
    if ((c * c == a * a + b * b) && isEscaleno) {
      print('Retangulo: S');
    } else {
      print('Retangulo: N');
    }
  }
}