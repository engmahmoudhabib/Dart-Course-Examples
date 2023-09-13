import 'dart:isolate';

Stream<int> generateNumbers(int num) async* {
  for (int i = 0; i < num; i++) {
    print(i);
    yield i;
  }
}

void getGeneratedNumbers(int number) {
  print('you are trying to count to $number');
  generateNumbers(14).forEach(print);
}

void start() async {
  ReceivePort receivePort = ReceivePort();
  // Isolate.spawn(getGeneratedNumbers, '14');
  // Isolate.spawn(receivePort.sendPort.send, 'hello from isolate');
  Isolate.spawn<int>(generateNumbers, 7);
}

void main() {
  start();
}
