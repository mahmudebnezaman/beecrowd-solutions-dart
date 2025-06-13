import 'dart:io';

void main(){
  for (int i = int.parse(stdin.readLineSync()!); i>0; i--){
    int t = (int.parse(stdin.readLineSync()!));
    int value = 2015-t;
    if (value == 0){
      print('1 A.C.');
    } else if (value > 0){
      print('$value D.C.');
    } else {
      print('${value.abs()+1} A.C.');
    }
  }
}