// inteface when class's attributes are final
// interface defines the roles which must be followed by inhereted classes from it 
class Person {
  final String _name;
  Person(
    this._name,
  );

  String get name => _name;
  // we can't use setter here because it's final
  // set name(String newName) => _name = newName;
}

class Doctor implements Person {
  final String _name;
  Doctor(this._name);
  String get name => _name;
}
