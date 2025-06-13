import 'dart:io';

void main() {
  List<double> d =
      stdin.readLineSync()!.split(' ').map((p) => double.parse(p)).toList();

  double diff = d[1] - d[0];
  double output = (diff * 100) / d[0];

  print('${output.toStringAsFixed(2)}%');
}