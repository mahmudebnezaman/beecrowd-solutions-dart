import 'dart:io';

void main() {
  List<double> gdp =
      stdin.readLineSync()!.split(' ').map((p) => double.parse(p)).toList();
  double output = (((1 + (gdp[0] / 100)) * (1 + (gdp[1] / 100))) - 1) * 100;
  print(output.toStringAsFixed(6));
}