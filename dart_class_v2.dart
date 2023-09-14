void main() {
  Rectangle rectangle = Rectangle();

  try{
    double result = rectangle.calculateArea();
    print('직사각형의 넓이는 : $result');
  }catch(e){
    print('널 오류 발생 :  $e');
  }

  print('----------------------');
  print('실행됨 ㅎㅎ');

}
class Rectangle{
  double? width;
  double? height;

  double calculateArea() {
    return width! * height!; //개발자가 명시적으로 !null 아니다 명시 할 수 있음.
  }
}
