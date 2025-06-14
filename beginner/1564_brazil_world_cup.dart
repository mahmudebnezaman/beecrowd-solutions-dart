import 'dart:io';

void main() {
  while (true) {
    String? flag = stdin.readLineSync();
    if (flag == null) {
      return;
    }
    int complaints = int.parse(flag);

    if (complaints > 0) {
      print('vai ter duas!');
    } else {
      print('vai ter copa!');
    }
  }
}