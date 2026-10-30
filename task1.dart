import 'dart:math';

class GeometricObject {
  String color;
  bool filled;
  GeometricObject({this.color = 'white', this.filled = false});
  @override
  String toString() {
    return 'GeometricObject(color: $color, filled: $filled)';
  }
}
class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;
  Triangle({this.side1 = 1.0, this.side2 = 1.0, this.side3 = 1.0, super.color, super.filled});
  double getArea() {
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }
  double getPerimeter () {
    return side1 + side2 + side3;
  }
  @override
  String toString() {
    return 'Triangle : side1: $side1, side2: $side2, side3: $side3';
  }
}
class Rectangle extends GeometricObject {
  double width;
  double height;
  Rectangle({this.width = 1.0, this.height = 1.0, super.color, super.filled});
  double getArea() {
    return width * height;
  }
  double getPerimeter() {
    return 2 * (width + height);
  }
  @override
  String toString() {
    return 'Rectangle : width: $width, height: $height';
  }
}
void main() {
  Triangle triangle = Triangle(side1: 3.0, side2: 4.0, side3: 5.0, color: 'red');
  print(triangle.toString());
  print(triangle.color);
  print(triangle.filled);
  print('Area of triangle: ${triangle.getArea()}');
  print('Perimeter of triangle: ${triangle.getPerimeter()}');

  Rectangle rectangle = Rectangle(width: 4.0, height: 5.0);
  print(rectangle.toString());
  print(rectangle.color);
  print(rectangle.filled);
  print('Area of rectangle: ${rectangle.getArea()}');
  print('Perimeter of rectangle: ${rectangle.getPerimeter()}');
}