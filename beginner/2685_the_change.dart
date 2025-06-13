import 'dart:io';

void main(){
  while (true){
    String? input = stdin.readLineSync();
    if(input == null) break;

    int n = int.parse(input);

    if (n < 90 || n == 360){
      print("Bom Dia!!");
    } else if ( n < 180) {
      print("Boa Tarde!!");
    } else if ( n < 270) {
      print("Boa Noite!!");
    } else {
      print("De Madrugada!!");
    }
  }
}