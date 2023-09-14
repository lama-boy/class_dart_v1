class Animal{
  void eat(){
    print('동물이 먹이를 먹다');
  }
}

class Dog extends Animal{
  @override
  void eat(){
    print('강아지가 사료를 먹다');
  }
}

class Cat extends Animal{
  @override
  void eat() {
    print('고양이가 사료를 먹다');
  }
}

void main() {
  // 다양한 형태로 바라볼 수 있다.
  Animal cat = Cat();
  Animal dog = Dog();

  // 자료구조
  List<Animal> animals = [cat,dog];
  animals.forEach((e)=>{
    print(e),
    e.eat()
  });

}