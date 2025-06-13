import 'dart:io';

void main(){
  for (int i = int.parse(stdin.readLineSync()!); i>0; i--){
    int t = (int.parse(stdin.readLineSync()!));
    List<int> b = t.toRadixString(2).split('0').where((p)=> p.isNotEmpty).map((p)=> p.length).toList();
    b.sort();
    print(b.isNotEmpty ? b.last : 0);
  }
}