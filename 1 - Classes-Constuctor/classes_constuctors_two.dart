// validate values with assert

class Person {
  Person.fromJson(Map<String, dynamic> json) : assert(json['name'] is String) {
    print('welcome babe !');
  }
}

void main() {
  // if name is not a string will throw an error
  Person person = Person.fromJson({'name': "44"});
}
