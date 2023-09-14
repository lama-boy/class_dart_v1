class Animal{
  // 속성을 만들어 주세요.
  String? name;
  String? gender;
  int? age;

  Animal(String name, String gender, int age){
    this.name = name;
    this.gender = gender;
    this.age = age;
  }
  // 기능 만들어 주세요.

  void eat(){
    print('$name($gender,$age) 이(가) 밥을 먹습니다.');
  }

  void bark(){
    print('$name($gender,$age) 이(가) 짖습니다.');
  }
}

void main() {
  Animal animal = Animal('사자','암컷',10);
  animal.eat();
  animal.bark();
}