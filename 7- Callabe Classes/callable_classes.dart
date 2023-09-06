class CallableClass {
  String call(String me, String you) => '$me before $you';
}

void main() {
  CallableClass callableClass = CallableClass();
  print(callableClass('Mahmoud', 'Habib'));
}
