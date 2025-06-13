import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(){
  List<String> lines = [];
  String output = '';

  stdin.transform(utf8.decoder).transform(LineSplitter()).listen(
          (line) {
        lines.add(line);
      },
      onDone: () {
        for(int i = 1 ; i < lines.length; i+=2){
          List<double> n = lines[i].split(' ').map((p)=> double.parse(p)).toList();

          double mean = n.reduce((a,b)=> a+b)/n.length;
          double sum = 0;

          for (int i = 0; i<n.length; i++){
            sum += pow(n[i]-mean, 2);
          }

          output = "$output${sqrt(sum / (n.length - 1)).toStringAsFixed(5)}\n";
        }
        stdout.write(output);
      }
  );
}