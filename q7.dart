import 'dart:io';

void main() {
  File csvFile = File('students.csv');

  List<List<String>> students = [
    ['Name', 'Age', 'Address'],
    ['Nujhat Ali', '20', 'Dhaka'],
    ['Rita', '21', 'Chittagong'],
    ['Mita', '22', 'Khulna']
  ];

  String csvContent = students.map((e) => e.join(',')).join('\n');
  csvFile.writeAsStringSync(csvContent);

  String readData = csvFile.readAsStringSync();
  print('CSV file content:\n$readData');
}
