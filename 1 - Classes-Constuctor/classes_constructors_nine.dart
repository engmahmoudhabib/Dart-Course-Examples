class Person {
  final String _fName;
  final String _lName;

  Person.init({required String fname, required String lname})
      : this._fName = fname,
        this._lName = lname;

  String operator +(Person other) =>
      this._fName +
      ' ' +
      this._lName +
      '\n' +
      other._fName +
      ' ' +
      other._lName;

  @override
  bool operator ==(Object other) =>
      other is Person &&
      (this._fName == other._fName) &&
      (this._lName == other._lName);
}

void main() {
  Person p1 = Person.init(fname: 'Mahmoud', lname: 'Habib');
  Person p2 = Person.init(fname: 'Mahmoud', lname: 'Habib');
  print(p1 + p2);
  assert(p1 == p2);
}
