import 'dart:async';

abstract class DBImplementation {
  FutureOr<String> fetch();
}

class APISerrvice implements DBImplementation {
  @override
  Future<String> fetch() async => await 'data';
}

class DBService implements DBImplementation {
  @override
  String fetch() => 'data';
}
