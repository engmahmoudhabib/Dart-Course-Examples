// first create a class for use it as a meta data

import 'dart:mirrors';

class ToDo {
  final String? name;
  final String? description;
  const ToDo({
    required this.name,
    required this.description,
  });
}

@ToDo(name: 'Chibi', description: 'Rename class')
class MyClass {
  @ToDo(name: 'Tuwaise', description: 'Change fielld type')
  int value;
  @ToDo(name: 'Anyone', description: 'Change format')
  void printValue() {
    print('value: $value');
  }

  @ToDo(name: 'Anyone', description: 'Remove this')
  MyClass(
    this.value,
  );
}


 void main() {
    MyClass myClass = new MyClass(2);
    InstanceMirror im = reflect(myClass);
    ClassMirror classMirror = im.type;
  
    classMirror.metadata.forEach((metadata) {
      if (metadata.reflectee is ToDo) {
        print(metadata.reflectee.name);
        print(metadata.reflectee.description);
      }
    });
  
    for (var v in classMirror.declarations.values) {
      if (!v.metadata.isEmpty) {
        if (v.metadata.first.reflectee is ToDo) {
          print(v.metadata.first.reflectee.name);
          print(v.metadata.first.reflectee.description);
        }
      }
    }
  }