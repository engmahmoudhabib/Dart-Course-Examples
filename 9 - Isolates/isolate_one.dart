import 'dart:isolate';

void sayHi(String name) => print('Hi $name');

void main() {
  Isolate.spawn(sayHi, 'Message 1');
  Isolate.spawn(sayHi, 'Message 2');
  Isolate.spawn(sayHi, 'Message 3');

  print('execution from main1');
  print('execution from main2');
  print('execution from main3');
}
