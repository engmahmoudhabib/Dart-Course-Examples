// validate values with assert
// constructors are not inhereted
class Person {
  Person.fromJson(Map<String, dynamic> json) : assert(json['name'] is String) {
    print('welcome babe !');
  }
}

class Man extends Person {
  Map<String, dynamic> json = {};
  Man(this.json) :super.fromJson(json);
}

void main() {
  // if name is not a string will throw an error
  Person person = Person.fromJson({'name': "44"});
}
