void main() {
  String n = '';

  for (int i = 97; i <= 97 + 24; i++) {
    n = '$n$i e ${String.fromCharCodes([i])}\n';
  }

  n = '$n${97 + 25} e ${String.fromCharCodes([97 + 25])}';
  print(n);
}