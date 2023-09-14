class Bicycle {
  String? color;
  int? size;
  int? currentSpeed;

  Bicycle(){
    print('기본생성자 호출이 될까요?');
  }


  void changeGear(int gear) {
    currentSpeed = gear;
  }

  void showInfo() {
    print('Color : $color');
    print('size : $size');
    print('currentSpeed : $currentSpeed');
  }

  @override
  String toString() {
    return super.toString();
  }
}
