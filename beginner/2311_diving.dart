import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<String> name = [];
  List<double> score = [];
  for (int i = 0; i < n; i++) {
    name.add(stdin.readLineSync()!);
    score.add(0);
    double degree = double.parse(stdin.readLineSync()!);
    List<double> point =
        stdin.readLineSync()!.split(' ').map((p) => double.parse(p)).toList();

    point.sort();

    for (int j = 1; j < 6; j++) {
      score[i] += point[j];
    }

    score[i] *= degree;
  }

  for (int i = 0; i < n; i++) {
    print('${name[i]} ${(score[i]).toStringAsFixed(2)}');
  }
}