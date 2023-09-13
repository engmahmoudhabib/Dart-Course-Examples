import 'dart:async';
import 'dart:isolate';

Future<void> main() async {
// main receive port
  ReceivePort myReceivePort = ReceivePort();
  // isolate to excute
  final isolate = await Isolate.spawn<SendPort>(
    myIsolateFunction,
    myReceivePort.sendPort,
    errorsAreFatal: true,
    debugName: 'isolate 1',
  );
  // wait for the send port
  final completer = Completer<SendPort>();

  // listen to port
  myReceivePort.listen(
    (message) {
      if (message is String) print('Isolate: $message');
      if (message is SendPort) completer.complete(message);
    },
  );
  SendPort otherSendPort = await completer.future;
  otherSendPort.send('Hi i am main');
  myReceivePort.close(); // Close the ReceivePort.
  isolate.kill(); // K
}

// takes the send port of other isolate to know where to send his data
void myIsolateFunction(SendPort send2main) {
// this isolate receive port
  ReceivePort myReceivePort = ReceivePort();
  // send my port to main isolate so i can communicate with
  send2main.send(myReceivePort.sendPort);
  send2main.send('Hi from Isolate');
  // listen to my port and print the message
  myReceivePort.listen((message) {
     print('Main: $message');
   /*  if (message! is String) {
      print('you send me a wrong message bro');
    } else {
      print('isolate: $message');
    } */
  });
}
