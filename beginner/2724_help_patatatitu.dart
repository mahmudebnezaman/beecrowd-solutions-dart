import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);

  for (int testCase = 0; testCase < t; testCase++) {
    int dangerCompoundsSize = int.parse(stdin.readLineSync()!);
    final dangerCompounds = List.generate(dangerCompoundsSize, (_) => parseFormula(stdin.readLineSync()!));

    int experimentSize = int.parse(stdin.readLineSync()!);
    final experiments = List.generate(experimentSize, (_) => parseFormula(stdin.readLineSync()!));

    for (final exp in experiments) {
      final shouldAbort = dangerCompounds.any((danger) => isDangerous(danger, exp));
      print(shouldAbort ? 'Abortar' : 'Prossiga');
    }

    if (testCase != t - 1) print('');
  }
}

List<MapEntry<String, int>> parseFormula(String formula) {
  final regex = RegExp(r'([A-Z][a-z]*)(\d*)');
  final matches = regex.allMatches(formula);
  final parsedFormula = matches.map((match) {
    final element = match.group(1)!;
    final count = match.group(2)!;
    return MapEntry(element, count.isEmpty ? 1 : int.parse(count));
  }).toList();
  return parsedFormula;
}

bool isDangerous(List<MapEntry<String, int>> dangerCompound, List<MapEntry<String, int>> experiment) {
  for (int i = 0; i <= experiment.length - dangerCompound.length; i++) {
    bool match = true;
    for (int j = 0; j < dangerCompound.length; j++) {
      if (experiment[i + j].key != dangerCompound[j].key || experiment[i + j].value != dangerCompound[j].value) {
        match = false;
        break;
      }
    }
    if (match) return true;
  }
  return false;
}