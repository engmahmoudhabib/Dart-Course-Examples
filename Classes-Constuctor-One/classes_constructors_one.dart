class Car {
  int? _carNumber;
  String? _color;
  Car.carNumber() {
    this._carNumber = 44;
  }

  // initalizer list with named constructor 
  Car.color()
      : _color = 'Blue',
        _carNumber = null;
}

void main() {
  print(
    Car.carNumber()._carNumber,
  );
}
