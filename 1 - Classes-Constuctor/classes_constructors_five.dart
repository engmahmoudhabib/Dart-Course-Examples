// ignore_for_file: unused_field

//! NOTE : IF CLASS DOESN'T HAVE NON-NAMED CONSTRUCTOR
//! YOU MUST CALL ANY CONSTUCTOR AVAILABLE

//? =================== EXAMPLE ONE ===================

class Person {
  int? _age;
  String? _name;

  Person(this._age, this._name);
}

class Man extends Person {
  int? _age;
  String? _name;
  //! WE CANNOT JUMP TO THE AUPRE CLASS DIRECTLY
  //! FIRST INIT THE MAIN CLASS THEN PASS ITS FIELDS TO SUPER CLASS
  Man(this._age, this._name) : super(_age, _name);
}

//? =================== EXAMPLE TWO ===================

class Car {
  final String company;
  Car({required this.company});
}

class Machine extends Car {
  final String _company;
  Machine(this._company) : super(company: _company);
}

//? =================== EXAMPLE THREE ===================

class Animal {
  String? _name;
  final int? weight;

  Animal({required this.weight}) : _name = 'baby animal';
}

class BigAnimal extends Animal {
  String? _foodType;

  BigAnimal() : super(weight: 8);

  BigAnimal.feed() : super(weight: 5) {
    _foodType = 'seeds';
  }

  //? you can't do this
 // BigAnimal.fly() : _foodType= 'seeds';
}
