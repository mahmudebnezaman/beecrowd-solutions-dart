import 'dart:io';

void main(){
  while (true){
    String? input = stdin.readLineSync();
    if(input == null) break;

    for (int i = 0; i<int.parse(input); i++){
      List<String> n = stdin.readLineSync()!.split(' ');

      int a = n[0].length;
      int b = n.length;

      print(String.fromCharCodes([96+(a+(3*(b-1)))]));
    }
  }
}