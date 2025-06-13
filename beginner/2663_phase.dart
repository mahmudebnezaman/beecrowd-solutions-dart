import 'dart:io';

main () {
  int n = int.parse(stdin.readLineSync()!);
  int k = int.parse(stdin.readLineSync()!);
  int output = 0;
  int flag = 0;

  List<int> input = [];

  for(int i = 0; i < n; i++) {
    input.add(int.parse(stdin.readLineSync()!));
  }

  input.sort();
  input = input.reversed.toList();

  flag = input[0];

  for (int i in input) {
    if (output < k || i==flag){
      output ++;
      if (flag > i) flag = i;
    }
  }

  print(output);
}