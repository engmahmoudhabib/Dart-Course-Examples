// Normal Class
class Car {
  // nullable field
  String? _carName;
  // non-nullable field must be initializing
  String _carColor = 'white';

  // default constuctor
  // this one is inhereted by sub-classes
  //Car();
  
  // initializer List 
  Car(
    this._carName,
  ) : this._carColor = 'Blue';
}

// Immutable class
class Person {
  final String _name;
  // late is like a setter
  late String tall;
  // means color will be initalize one time but later
  // be careful this will add setter to the class ==> you can initialize color more than one time
  // in the code and this will throw a run time exception
  late final String color;
  Person(this._name);
}

void main() {
  Person person = Person('Mahmoud');
  person.color = 'White';
  person.color = 'Blue';
  print(person.color);
}
