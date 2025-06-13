import 'dart:io';

void main() {
  String x = stdin.readLineSync()!;
  double n = double.parse(x);

  String sign = x.startsWith('-') ? '-' : '+';

  print("$sign${getScientificString(n.abs()).toUpperCase()}");
}

String getScientificString(double num) {
  String exp = num.toStringAsExponential(4);
  return exp.replaceAllMapped(
    RegExp(r'e([+-]?)(\d{1})$'),
    (match) => 'E${match[1]}0${match[2]}',
  );
}