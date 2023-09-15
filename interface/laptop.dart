// 일반 클래스를 사용한 방법
class Laptop{
  // void 는 생략이 가능하다.
  turnOn(){
    print('전원을 켭니다.');
  }

  turnOff(){
    print('전원을 끕니다.');
  }
}

class MacBook implements Laptop{
  @override
  turnOn() {
    print('맥북의 전원을 켭니다.');
  }

  @override
  turnOff() {
    print('맥북의 전원을 끕니다.');
  }
}

void main() {
  MacBook macbook = MacBook();
  macbook.turnOn();
  macbook.turnOff();
}