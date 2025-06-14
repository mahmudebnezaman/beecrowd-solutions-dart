import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  List<String> numberString = input.split(' ');
  List<double> num = [];

  for (String value in numberString) {
    num.add(double.parse(value));
  }

  List<double> sortedNumbers = sortNumbers(num[0], num[1], num[2]);

  int similarNumbersCount = findSimilarNumberCount(num[0], num[1], num[2]);

  if (sortedNumbers[0] >= sortedNumbers[1] + sortedNumbers[2]) {
    print('NAO FORMA TRIANGULO');
  } else if ((sortedNumbers[0] * sortedNumbers[0]) ==
      (sortedNumbers[1] * sortedNumbers[1]) +
          (sortedNumbers[2] * sortedNumbers[2])) {
    print('TRIANGULO RETANGULO');
  } else if ((sortedNumbers[0] * sortedNumbers[0]) >
      (sortedNumbers[1] * sortedNumbers[1]) +
          (sortedNumbers[2] * sortedNumbers[2])) {
    print('TRIANGULO OBTUSANGULO');
  } else if ((sortedNumbers[0] * sortedNumbers[0]) <
      (sortedNumbers[1] * sortedNumbers[1]) +
          (sortedNumbers[2] * sortedNumbers[2])) {
    print('TRIANGULO ACUTANGULO');
  }
  if (similarNumbersCount == 3) {
    print('TRIANGULO EQUILATERO');
  } else if (similarNumbersCount == 2) {
    print('TRIANGULO ISOSCELES');
  }
}

List<double> sortNumbers(double a, double b, double c) {
  List<double> numbers = [a, b, c];
  numbers.sort((a, b) => b.compareTo(a));
  return numbers;
}

int findSimilarNumberCount(double a, double b, double c) {
  if ((a == b) && (b == c)) {
    return 3;
  } else if ((a == b) || (b == c) || (a == c)) {
    return 2;
  } else {
    return 1;
  }
}