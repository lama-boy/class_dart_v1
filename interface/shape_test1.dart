abstract class Shape{
  double area(){
    return 0.0;
  }
}
// implements - 강제성이 있는 행동의 규약이다.
class Circle implements Shape{

  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape{

  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

}

void main() {
  Circle circle = Circle(5.0);
  Rectangle rectangle = Rectangle(4.0,5.0);
  List<Shape> list = [circle,rectangle];
  list.forEach((e) => {
      print(e.area())
  });
}