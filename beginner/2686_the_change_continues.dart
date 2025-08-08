import 'dart:io';

void main() {
  String? input;
  while ((input = stdin.readLineSync()) != null) {
    final n = double.parse(input!);

    print(getGreeting(n));

    final time = calculateTime(n);
    print(formatTime(time));
  }
}

String getGreeting(double angle) {
  if (angle < 90 || angle == 360) return "Bom Dia!!";
  if (angle < 180) return "Boa Tarde!!";
  if (angle < 270) return "Boa Noite!!";
  return "De Madrugada!!";
}

({int h, int m, int s}) calculateTime(double angle) {
  final totalSeconds = (angle * 240).toInt();
  var hours = (totalSeconds ~/ 3600) + 6;
  hours = hours >= 24 ? hours % 24 : hours;
  final remainingSeconds = totalSeconds % 3600;
  final minutes = remainingSeconds ~/ 60;
  final seconds = remainingSeconds % 60;

  return (h: hours, m: minutes, s: seconds);
}

String formatTime(({int h, int m, int s}) time) {
  return '${time.h.toString().padLeft(2, '0')}:'
      '${time.m.toString().padLeft(2, '0')}:'
      '${time.s.toString().padLeft(2, '0')}';
}