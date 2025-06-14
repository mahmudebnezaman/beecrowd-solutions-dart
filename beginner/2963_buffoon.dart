import 'dart:io';

void main() {
  bool isSelected = true;
  int vote = 0, count = int.parse(stdin.readLineSync()!);

  for (int i = count; i > 0; i--) {
    int n = int.parse(stdin.readLineSync()!);
    if (i == count) {
      vote = n;
    } else if (n > vote) {
      isSelected = false;
    }
  }

  if (isSelected) {
    print('S');
  } else {
    print('N');
  }
}