void main() {
  String phrase = "AMO FAZER EXERCICIO NO URI";

  print("<$phrase>");
  print("<${phrase.padLeft(30)}>");
  print("<${phrase.substring(0, 20)}>");
  print("<${phrase.padRight(20)}>");
  print("<${phrase.padRight(30)}>");
  print("<$phrase>");
  print("<${phrase.substring(0, 20).padLeft(30)}>");
  print("<${phrase.substring(0, 20).padRight(30)}>");
}