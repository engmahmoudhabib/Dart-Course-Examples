//? SUPER PARAMETERS USE TO INITIALIZE SUPER CLASS DIRECTELY

class Vector2D {
  double? x;
  double? y;

  Vector2D(this.x, this.y);
  Vector2D.initX({required this.y})
      : this.x = 0.0,
        assert(y != null);
}

class Vector3D extends Vector2D {
  double? z;
  //? IF WE DON'T HAVE SUPER.X , SUPER.Y
  //? WE MUST DO THIS :
  //? Vector3D(this.z) : super(0.2, null); // here x ,y are double? values
  Vector3D(super.x, super.y, this.z);
  //? the idea is so simple it's just that i have to pass an argument to named constructor
  Vector3D.initX({required double? y, this.z}) : super.initX(y: y);
}
