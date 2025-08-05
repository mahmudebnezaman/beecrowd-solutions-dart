import 'dart:io';

void main(){
  int input = int.parse(stdin.readLineSync()!);
  DateTime startDate = DateTime(2020, 12, 21);
  
  int jupiterDays = (4346.475 * input).toInt();
  DateTime jupiterDate = startDate.add(Duration(days: jupiterDays));
  
  int saturnDays = (10811.4 * input).toInt();
  DateTime saturnDate = startDate.add(Duration(days: saturnDays));
  
  print("Dias terrestres para Jupiter = $jupiterDays\nData terrestre para Jupiter: ${formatDate(jupiterDate)}\nDias terrestres para Saturno = $saturnDays\nData terrestre para Saturno: ${formatDate(saturnDate)}");
}

String formatDate(DateTime date) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  return "${date.year}-${twoDigits(date.month)}-${twoDigits(date.day)}";
}
