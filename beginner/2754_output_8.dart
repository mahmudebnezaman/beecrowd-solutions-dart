void main() {
  double a = 234.345;
  double b = 45.698;

  String n = '';

  n = '$n${getPrecisedString(a, 6)} - ${getPrecisedString(b, 6)}\n';
  for (int i = 0; i < 4; i++) {
    n = '$n${getPrecisedString(a, i)} - ${getPrecisedString(b, i)}\n';
  }
  n = '$n${getScientificString(a)} - ${getScientificString(b)}\n';
  n = '$n${getScientificString(a).toUpperCase()} - ${getScientificString(b).toUpperCase()}\n';
  n = '$n$a - $b\n';
  n = '$n$a - $b';

  print(n);
}

String getPrecisedString(double num, int decimalPoint) {
  return num.toStringAsFixed(decimalPoint);
}

String getScientificString(double num) {
  String exp = num.toStringAsExponential(6);

  return exp.replaceAllMapped(
    RegExp(r'e([+-]?)(\d{1})$'),
    (match) => 'e${match[1]}0${match[2]}',
  );
}