import 'dart:io';

void main(){
  String a = stdin.readLineSync()!;
  String b = stdin.readLineSync()!;

  print(a.length<b.length ? 'no' : 'go');
}