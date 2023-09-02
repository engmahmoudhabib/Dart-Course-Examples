//? FACTORY CONSTRUCTORS
//? return object from the same class with a help from another constructor
// 1 - make final variables
// 2 - make a private named constructor

class Logger {
  final String name;
  final double tall;

  factory Logger(int type, String name, double tall) {
    return type == 0 ? Logger._name(name: name) : Logger._tall(tall: tall);
  }

  Logger._name({
    required this.name,
  }) : this.tall = 185.0;

  Logger._tall({
    required this.tall,
  }) : this.name = 'Mahmoud';
}
