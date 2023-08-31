// by default the subclass will call
// the default ot non-named constructor
// the order is like that :
// 1 - initializer list
// 2 - supercalss non-named constructor
// 3 - main class non-named constructor


class A {
  A();
}

class B extends A{
  // B will call A()
  B():super();
}


