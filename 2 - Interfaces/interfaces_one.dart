// any class is an interface
// we use implements keyword to implement interface
// any class can implements many interfaces
// any class implements an interface MUST override every method and attribute inside it 

class Person {
  // fields
  String _name;
  // initializer list
  Person.name() : _name = 'N/A';
  // getter
  String get name => _name;
  // setter
  set name(String newName) => _name = newName;
  // methods
  void sayMyName() => print('Hello my name is $_name');
}

// we can now use methods and public attributes from Person
class Doctor implements Person {
  String _name;
  Doctor(this._name);

  set name(String newName) => _name = newName;

  void sayMyName() => print('Hello my name is Dr.$_name');

  String get name => _name;
}


