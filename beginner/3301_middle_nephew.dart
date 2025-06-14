import 'dart:io';

void main() {
  List<int> ages =
      stdin.readLineSync()!.split(' ').map((p) => int.parse(p)).toList();
  Map<int, String> nephews = {
    ages[0]: "huguinho",
    ages[1]: "zezinho",
    ages[2]: "luisinho"
  };
  List<int> sortedAge = List.from(ages);
  sortedAge.sort();
  print(nephews[sortedAge[1]]);
}