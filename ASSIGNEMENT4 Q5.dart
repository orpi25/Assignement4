void main() {
  
  List<String> friends = [
    'Alice',
    'Bob',
    'Arman',
    'Sadia',
    'Anika',
    'Rafi',
    'Tania'
  ];

  
  Iterable<String> namesStartingWithA =
      friends.where((name) => name.startsWith('A'));

  print('Friends whose names start with A:');
  for (String name in namesStartingWithA) {
    print(name);
  }
}
