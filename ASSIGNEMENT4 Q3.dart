import 'dart:io';

void main() {
  List<double> expenses = [];
  double total = 0;
  stdout.write('Enter number of expenses: ');
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    stdout.write('Enter expense $i: ');
    double amount = double.parse(stdin.readLineSync()!);
    expenses.add(amount);
  }
  for (double expense in expenses) {
    total += expense;
  }

  print('\nTotal expenses: \$${total}');
}
