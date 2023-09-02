//? REDIRECTING CONSTRUCTORS
class Point {
  double? x;
  double? y;

  //? the puspose of that is just to initialize the constructor
  //? from another ones

  Point(this.x, this.y);
  Point.initX(double _y) : this(0, _y);
}
