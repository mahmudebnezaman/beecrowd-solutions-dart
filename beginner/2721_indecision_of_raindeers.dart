import 'dart:io';

void main(){
  int sum = 0;

  stdin.readLineSync()!.split(' ').forEach((p)=> sum = sum + int.parse(p));

  int w = sum % 9;

  switch (w){
    case (0): {
      print('Rudolph');
    } break;
    case (1): {
      print('Dasher');
    } break;
    case (2): {
      print('Dancer');
    } break;
    case (3): {
      print('Prancer');
    } break;
    case (4): {
      print('Vixen');
    } break;
    case (5): {
      print('Comet');
    } break;
    case (6): {
      print('Cupid');
    } break;
    case (7): {
      print('Donner');
    } break;
    case (8): {
      print('Blitzen');
    } break;
    case (9): {
      print('Rudolph');
    } break;
  }
}