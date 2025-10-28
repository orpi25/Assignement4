import 'dart:io';

void main() {
  File file = File('hello.txt');
  String friendName = 'Mita';
  file.writeAsStringSync('\nMy friend is $friendName', mode: FileMode.append);
  print('Friend name has been added to hello.txt');
}
