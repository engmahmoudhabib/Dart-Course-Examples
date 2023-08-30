class Person {
  void talk() => print('Am talking from Person');
}

class Animal {
  void fly() => print('Am talking from Animal');
}

abstract class Logger {
  void log(String message);
}

class Hybrid implements Person, Animal, Logger {
  @override
  void talk() => print('Am talking from Hybrid');

  @override
  void fly() => print('Am fluing from Hybrid');

  @override
  void log(String message) => print('Logger fires from Hybrid');
}
