import 'dart:io';

void main() {
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    List<int> n = stdin
        .readLineSync()!
        .split(' ')
        .where((s) => s.isNotEmpty)
        .map((p) => int.parse(p))
        .toList();
    switch (n[0] + n[1]) {
      case 0:
        print("PROXYCITY");
        break;
      case 1:
        print("P.Y.N.G.");
        break;
      case 2:
        print("DNSUEY!");
        break;
      case 3:
        print("SERVERS");
        break;
      case 4:
        print("HOST!");
        break;
      case 5:
        print("CRIPTONIZE");
        break;
      case 6:
        print("OFFLINE DAY");
        break;
      case 7:
        print("SALT");
        break;
      case 8:
        print("ANSWER!");
        break;
      case 9:
        print("RAR?");
        break;
      case 10:
        print("WIFI ANTENNAS");
        break;
    }
  }
}