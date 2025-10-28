void main() {
  
  Map<String, dynamic> person = {
    'name': 'Orpi',
    'address': 'Dhaka',
    'age': 21,
    'country': 'Bangladesh'
  };

  
  person['country'] = 'Canada';

  
  print('Updated Person Details:');
  person.forEach((key, value) {
    print('$key: $value');
  });
}
