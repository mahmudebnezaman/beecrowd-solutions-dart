import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    String? n = stdin.readLineSync();
    if (n == null) break;
    List<int> input = n.split(' ').map((p) => int.parse(p)).toList();

    double d = calculateDistance(input[0], input[1], input[2], input[3]);

    print((d + (input[4] * 1.5)) <= (input[5] + input[6]) ? 'Y' : 'N');
  }
}

double calculateDistance(int x1, int y1, int x2, int y2) {
  int dx = x2 - x1;
  int dy = y2 - y1;
  return sqrt(dx * dx + dy * dy);
}