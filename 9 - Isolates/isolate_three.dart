import 'dart:isolate';

class IsolateModel {
  int iteration;
  int multiplier;
  IsolateModel({
    required this.iteration,
    required this.multiplier,
  });
}

void heavyTask(IsolateModel model) {
  int total = 0;
  for (int i = 1; i < model.iteration; i++) {
    total += (i * model.multiplier);
  }
  print("FINAL TOTAL: $total");
}

void main() {
  Future.microtask(
    () => Isolate.spawn<IsolateModel>(
      heavyTask,
      IsolateModel(
        iteration: 5,
        multiplier: 7,
      ),
    ),
  );
  print('hello');
}

// communication between isolates done by ports
// Receive Port Send Port

