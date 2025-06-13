import 'dart:io';
import 'dart:math';

void main() {
  int i = int.parse(stdin.readLineSync()!);

  double p = i / log(i);
  double m = 1.25506 * p;

  print('${p.toStringAsFixed(1)} ${m.toStringAsFixed(1)}');
}
