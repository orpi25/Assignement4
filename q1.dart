import 'dart:io';

void main() {
 
  File file = File('hello.txt');

 
  String name = 'Ruzela Orpi';

  
  file.writeAsStringSync('My name is $name');

  print('Name has been written to hello.txt');
}
