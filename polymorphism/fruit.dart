class Fruit {
  String name;
  int price;

  Fruit(this.name, this.price);

  void showInfo() {
    print('상품명 : $name');
    print('rkrur : $price');
  }
}

class Peach extends Fruit {
  Peach(super.name, super.price);
}

class Banana extends Fruit {
  String origin;

  Banana(super.name, super.price, this.origin);
}

void main() {
  // 업캐스팅, 다운캐스팅 의미를 알아보자.
  List<Fruit> fruits = [Banana('델몬트 바나나', 3000, '필리핀'), Peach('아삭복숭아', 5000)];
  fruits[0].name;
  fruits[0].price;
  // fruits[0].origin 컴파일 시점에 선언된 데이터 타입까지만 확인할 수 있다.
  // fruits[0].origin; // 업캐스팅 된 상태라서 origin 을 사용할 수 없다. Fruit 타입이기 때문에.
  fruits[0].showInfo();

  // 업캐스팅된 상태의 바나나에 origin 변수에 접근하고 싶다면 어떻게 해야할까?
  // 컴파일 시점에 형 변환 처리를 하면 된다.

  // Banana banana1 = ((Banana) fruits[0].origin); // 자바에서 했던 다운캐스팅
  Banana banana1 = fruits[0] as Banana; //  ?!?!?!
  print((fruits[0] as Banana).origin);
  print(banana1.origin);
  // as : 상속 관계에서 형 변환 처리를 할 수 있다.
}
