import 'dart:io';
import 'dart:math';

void main() {
  int t = int.parse(stdin.readLineSync()!);

  final Map<String, dynamic>spells = {
    'fire': {'damage': 200, 'radius': [20, 30, 50]},
    'water': {'damage': 300, 'radius': [10, 25, 40]},
    'earth': {'damage': 400, 'radius': [25, 55, 70]},
    'air': {'damage': 100, 'radius': [18, 38, 60]},
  };

  while (t-- > 0) {
    final rect = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    final w = rect[0], h = rect[1], x0 = rect[2], y0 = rect[3];

    final spellInput = stdin.readLineSync()!.split(' ');
    final spell = spellInput[0];
    final level = int.parse(spellInput[1]) - 1;
    final cx = int.parse(spellInput[2]);
    final cy = int.parse(spellInput[3]);

    final px = cx.clamp(x0, x0 + w);
    final py = cy.clamp(y0, y0 + h);

    final dist = sqrt(pow(cx - px, 2) + pow(cy - py, 2));

    final spellData = spells[spell]!;
    final radius = spellData['radius']![level];
    final damage = dist <= radius ? spellData['damage']! : 0;

    print(damage);
  }
}
