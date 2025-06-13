import 'dart:io';

void main(){
  stdin.readLineSync();
  List<String> a = stdin.readLineSync()!.split(' ');;
  List<String> b = stdin.readLineSync()!.split(' ');;
  int x = 0;
  for (var i in a){
    if (b.contains(i)){
      x++;
    }
  }

  print(a.length - x);
}