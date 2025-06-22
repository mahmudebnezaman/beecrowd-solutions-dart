import 'dart:io';
import 'dart:convert';

void main() {

  List<String> input = [];
  List<int> peaks = [];
  int isTrue = 1, l = 0;

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
    (line) {
      input.add(line);
    },
    onDone: () {
      peaks.addAll(input[1]
          .split(' ')
          .map((p) => int.parse(p))
          .toList());

      l = peaks.length;

      if (peaks[0] > peaks[1]){
        for (int i = 1; i<l; i+=2){
          if(peaks[i-1] <= peaks[i]){
            isTrue = 0;
            break;
          } else if (i+1 <= l-1 && peaks[i] >= peaks[i+1]) {
            isTrue = 0;
            break;
          }
        }
      }else {
        for (int i = 1; i<l; i+=2){
          if(peaks[i-1] >= peaks[i]){
            isTrue = 0;
            break;
          } else if (i+1 <= l-1 && peaks[i] <= peaks[i+1]) {
            isTrue = 0;
            break;
          }
        }
      }
      print(isTrue);
    },
  );
}