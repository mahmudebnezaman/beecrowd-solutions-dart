import 'dart:io';
import 'dart:typed_data';

void main () {
  while (true) {
    String? p = stdin.readLineSync();
    if (p == null) {
      break;
    }
    List<String> n = splitAtFirstNSpaces(p,3);

    n[1] = toFloat32(double.parse(n[1])).toStringAsFixed(6);

    print(n.join());
    print(n.join('\t'));
    print(n.map((v) => v.toString().padLeft(10)).join());
  }
}

double toFloat32(double value) {
  final byteData = ByteData(4);
  byteData.setFloat32(0, value, Endian.host);
  return byteData.getFloat32(0, Endian.host);
}

List<String> splitAtFirstNSpaces(String input, int n) {
  List<String> result = [];
  int start = 0;
  for (int i = 0; i < n; i++) {
    int index = input.indexOf(' ', start);
    if (index == -1) {
      break;
    }
    result.add(input.substring(start, index));
    start = index + 1;
  }
  result.add(input.substring(start));
  return result;
}