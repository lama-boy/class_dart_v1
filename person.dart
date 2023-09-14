void main() {

  // Person personKim = new Person();
  //Person personKim = Person('홍길동','010-1234-1234',20);
  Person personKim = Person();
  personKim.myName = '홍길동';
  personKim.phone = '010-1234-1234';
  personKim.age = 20;
  personKim.displayInfo();

} // end of main

// 클래스 설계하기
class Person{
  // dart 2.2 버전부터 진행.
  // nullable 타입의 이해
  String? myName;
  String? phone;
  int? age;

  // Person(String? myName, String? phone, int? age) {
  //   this.myName = myName;
  //   this.phone = phone;
  //   this.age = age;
  // }

  void displayInfo(){
    print('Person Name : $myName');
    print('Phone Number : $phone');
    print('Age : $age');
  }


} // end of class



