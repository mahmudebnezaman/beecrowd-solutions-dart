import 'dart:io';
import 'dart:convert';

void main() {
  stdin.transform(utf8.decoder).transform(LineSplitter()).listen((line) {
    if (line == '-1') return;

    BigInt p = BigInt.parse(line);
    print(p > BigInt.zero ? p - BigInt.one : BigInt.zero);
  });
}