void main() {
  int num = 7;

  for (int i = 1; i <= 9; i += 2) {
    for (int j = num; j >= num - 2; j--) {
      print('I=$i J=$j');
    }
    num += 2;
  }
}