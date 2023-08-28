// Normal Class
class Car {
  // nullable field
  String? _carName;
  // non-nullable field must be initializing
  String _carColor = 'white';

  // default constuctor
  // this one is inhereted by sub-classes
  Car();
}
