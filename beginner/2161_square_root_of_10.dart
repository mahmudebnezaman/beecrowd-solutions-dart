import 'dart:io';

void main() {

  int range = int.parse(stdin.readLineSync()!);
  double result = 0;

  for (int i=0; i<range; i++){
    result = 1/(6+result);
  }
  result += 3;
  print(result.toStringAsFixed(10));
}