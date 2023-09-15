abstract class Animal{

  String name;

  Animal(this.name);

  void makeSound();
}

class Dog extends Animal{
  // 메모리에 Animal 이 먼저 올라가야 한다.
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name 이(가) war war 짖습니다.');
  }
}

class Cat extends Animal{

  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name 이(가) 냐옹 하고 웁니다.');
  }
}


void main() {
  Dog dog = Dog('바둑이');
  Cat cat = Cat('냐옹');

  List<Animal> list = [dog,cat];
  list.forEach((e) => {
    e.makeSound()
  });

}