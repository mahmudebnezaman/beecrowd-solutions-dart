import 'dart:io';

void main() {
  String output = '';
  int a = int.parse(stdin.readLineSync()!);
  int b;

  b = a ~/ 900;
  a %= 900;
  output = output + ('CM' * b);

  b = a ~/ 500;
  a %= 500;
  output = output + ('D' * b);

  b = a ~/ 100;
  a %= 100;
  if (b == 4) {
    output = '${output}CD';
  } else {
    output = output + ('C' * b);
  }

  b = a ~/ 90;
  a %= 90;
  output = output + ('XC' * b);

  b = a ~/ 50;
  a %= 50;
  output = output + ('L' * b);

  b = a ~/ 10;
  a %= 10;
  if (b == 4) {
    output = '${output}XL';
  } else {
    output = output + ('X' * b);
  }

  b = a ~/ 9;
  a %= 9;
  output = output + ('IX' * b);

  b = a ~/ 5;
  a %= 5;
  output = output + ('V' * b);

  if (a == 4) {
    output = '${output}IV';
  } else {
    output = output + ('I' * a);
  }

  print(output);
}
