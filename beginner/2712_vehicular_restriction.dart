import 'dart:io';

void main(){
  final RegExp regex = RegExp(r'^[A-Z]{3}-\d{4}$');

  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--){
    String n = stdin.readLineSync()!;
    if (regex.hasMatch(n)){
      if (validate(n,1,2)){
        print('MONDAY');
      } else if (validate(n, 3, 4)) {
        print("TUESDAY");
      } else if (validate(n, 5, 6)){
        print("WEDNESDAY");
      } else if (validate(n, 7, 8)) {
        print("THURSDAY");
      } else {
        print("FRIDAY");
      }
    } else {
      print("FAILURE");
    }
  }
}

bool validate (String n, int a, int b) {
  if (n.endsWith(a.toString()) || n.endsWith(b.toString())) return true;
  return false;
}