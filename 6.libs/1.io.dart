import 'dart:io';
import 'dart:convert';

main(List<String> args) {
  var string = stdin.readLineSync(encoding: Encoding.getByName('UTF-8'));
  var file = File('file.txt');
  file.writeAsStringSync(string);
  print('READ FROM FILE:${file.readAsStringSync()}');
}