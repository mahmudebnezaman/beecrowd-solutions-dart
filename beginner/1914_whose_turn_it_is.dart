import 'dart:io';

void main() {
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    List<String> str = stdin.readLineSync()!.split(' ');
    List<int> num =
        stdin.readLineSync()!.split(' ').map((n) => int.parse(n)).toList();
    int sum = num[0] + num[1];
    if (sum % 2 == 0) {
      print(str[str.indexWhere((element) => element == 'PAR') - 1]);
    } else {
      print(str[str.indexWhere((element) => element == 'IMPAR') - 1]);
    }
  }
}