// enumerations are sealed
// 1 - can not be inistantiated
// 2 - can not be implemented
// 3 - can not be inherted
// 4 - can not be mixed

enum Color {
  red,
  green,
  blue,
}

// enhanced enum
// replace extention methods with const class

enum ColorName {
  RED(
    color: '0XFFFF0000',
    name: 'red',
  ),
  GREEN(
    color: '0XFF00FF00',
    name: 'green',
  ),
  BLUE(
    color: '0XFF0000FF',
    name: 'blue',
  );

  final String name;
  final String color;
  const ColorName({
    required this.color,
    required this.name,
  });
}

void main() {
  String colorGreen = ColorName.GREEN.name;
}
