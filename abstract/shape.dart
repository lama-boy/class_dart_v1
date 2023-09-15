abstract class Shape {
  // 추상 메써드 선언
  double area(); // 메써드에 바디가 없고 선언부만 있다.

  void display() {
    print('This is a shape');
  }
}

// 자식 클래스는 보다 구체적인 클래스로 설계해야한다.
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return radius * radius * 3.14;
  }

  @override
  void display() {
    print('원의 반지름은 $radius 입니다.');
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

  @override
  void display() {
    print('사각형의 가로 길이는 : $width 세로 길이는 : $height');
  }
}

void main() {
  // 추상 클래스는 new 와 생성자를 호출할 수 없다. ( 정의는 가능 )
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);

  List<Shape> shapes = [circle,rectangle];
  for(var s in shapes){
    s.display();
    print(s.area());
  }

  //! dart 에서는 익명 구현 클래스 개념은 없다.


}
