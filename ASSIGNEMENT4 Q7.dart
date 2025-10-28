void main() {
  
  Map<String, String> contacts = {
    'Alex': '01711111111',
    'John': '01822222222',
    'Mina': '01933333333',
    'Rahim': '01644444444',
    'Sara': '01555555555'
  };

  
  Iterable<String> keysWithLength4 =
      contacts.keys.where((key) => key.length == 4);

  print('Keys with length 4:');
  for (String key in keysWithLength4) {
    print(key);
  }
}
