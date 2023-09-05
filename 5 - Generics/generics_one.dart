class Person<T> {
  T _name;
  Person.init(T name) : this._name = name;
}

// we restricted the type
class Animal<T extends String> {
  final T _name;
  Animal(this._name);
}
