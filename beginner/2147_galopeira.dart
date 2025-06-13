import 'dart:io';

void main() {
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    print((stdin.readLineSync()!.length / 100).toStringAsFixed(2));
  }
}