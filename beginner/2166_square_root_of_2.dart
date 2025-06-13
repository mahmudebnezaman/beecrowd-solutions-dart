import 'dart:io';

void main() {

  int range = int.parse(stdin.readLineSync()!);
  double result = 0;

  for (int i=0; i<range; i++){
    result = 1/(2+result);
  }
  result += 1;
  print(result.toStringAsFixed(10));
}