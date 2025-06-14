import 'dart:io';

void main() {
  while (true) {
    List<int> amounts =
        stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
    if (amounts[0] == 0 && amounts[1] == 0) {
      break;
    }
    int change = amounts[1] - amounts[0];
    // Available bills: 2, 5, 10, 20, 50 and 100.
    List<int> possibleValues = [
      4,
      10,
      20,
      100,
      200,
      7,
      12,
      22,
      52,
      102,
      15,
      25,
      55,
      105,
      30,
      60,
      110,
      70,
      120,
      150
    ];

    print(possibleValues.any((v) => v == change) ? 'possible' : 'impossible');
  }
}