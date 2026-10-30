abstract class Shape{
  String? color;

  Shape({this.color});

  double getArea();

  @override
  String toString() {
    return 'Shape: color: $color';
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle({required this.width, required this.height, super.color}) ;

  @override
  double getArea() {
    return width * height;
  }

  @override
  String toString() {
    return 'Rectangle: width: $width, height: $height, color: $color';
  }
}

class Triangle extends Shape {
  int base;
  int height;

  Triangle({required this.base, required this.height, super.color});

  @override
  double getArea() {
    return 0.5 * base * height;
  }

  @override
  String toString() {
    return 'Triangle: base: $base, height: $height, color: $color';
  }
}

void main() {
  Shape rectangle = Rectangle(width: 4.0, height: 5.0, color: 'blue');
  print(rectangle.toString());
  print('Area of rectangle: ${rectangle.getArea()}');

  Shape triangle = Triangle(base: 3, height: 4, color: 'red');
  print(triangle.toString());
  print('Area of triangle: ${triangle.getArea()}');
}