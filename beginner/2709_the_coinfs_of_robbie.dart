import 'dart:io';

void main(){
  while(true) {
    final input = stdin.readLineSync();

    if (input == null) break;

    int n = int.parse(input);
    List<int> coins = [];

    for (int i = 0; i < n; i++){
      coins.add(int.parse(stdin.readLineSync()!));
    }
    int jump = int.parse(stdin.readLineSync()!);
    int sum = 0;

    for (int i = n-1; i >= 0 ; i -= jump){
      sum += coins[i];
    }

    if (isPrime(sum)){
      print('You’re a coastal aircraft, Robbie, a large silver aircraft.');
    } else {
      print('Bad boy! I’ll hit you.');
    }
  }
}

bool isPrime(int number) {
  if (number <= 1) return false;
  if (number <= 3) return true;
  if (number % 2 == 0 || number % 3 == 0) return false;

  for (int i = 5; i * i <= number; i += 6) {
    if (number % i == 0 || number % (i + 2) == 0) {
      return false;
    }
  }
  return true;
}