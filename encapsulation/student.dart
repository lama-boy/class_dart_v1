class Student{
  // 1. 이름, 나이 -> private 선언하시오.
  // 2. 축약형 get,set 메서드를 만들어 주세요.
  String? _name;
  int? _age;

  Student(this._name, this._age);

  int? get age => _age;
  String? get name => _name;

  set age(int? age)=>_age = age;
  set name(String? name) => _name = name;

}


