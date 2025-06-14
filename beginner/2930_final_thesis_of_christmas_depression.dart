import 'dart:io';

void main() {
  List<int> n =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();

  int dif = n[1] - n[0];

  if (n[0] > n[1]) {
    print('Eu odeio a professora!');
  } else if (dif >= 3) {
    print('Muito bem! Apresenta antes do Natal!');
  } else {
    print('Parece o trabalho do meu filho!');
    if ((n[0] + 2) < 24) {
      print('TCC Apresentado!');
    } else {
      print('Fail! Entao eh nataaaaal!');
    }
  }
}