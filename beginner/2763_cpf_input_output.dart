import 'dart:io';

void main() {
  List<String> a = stdin.readLineSync()!.split(RegExp(r'[.-]'));

  for (var i in a) {
    print(i);
  }
}