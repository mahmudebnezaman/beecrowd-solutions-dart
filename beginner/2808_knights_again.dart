import 'dart:io';

void main(){
  List<String> input = stdin.readLineSync()!.split(' ').toList();
  List<String> n = [];

  for (var i in input){
    n.addAll(i.split('').toList());
  }

  int a = n[0].codeUnitAt(0), b = n[2].codeUnitAt(0);
  int c = int.parse(n[1]), d = int.parse(n[3]);

  if ((c+1 == d || c-1 == d) && (a+2 == b || a-2 == b)){
    print('VALIDO');
  } else if ((a+1 == b || a-1 == b) && (c+2 == d || c-2 == d)){
    print('VALIDO');
  } else {
    print('INVALIDO');
  }
}