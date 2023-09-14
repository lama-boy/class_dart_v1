void main() {
  Employee employee1 = Employee('홍길동',30);
  employee1.display();
  print('----------------');
  Employee employee2 = Employee('이순신',50,'IT',9000);
  employee2.display();
}

class Employee {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Employee(this.name, this.age, this.subject, this.salary);
  // 생성자 안에 [] - 옵션값이다. 즉 받아도 되고, 안받아도 되는 값을 설정할 수 있다.

  // 1단계
  // Employee(this.name, this.age, [this.subject, this.salary]);

  // 2단계
  // 생성자 옵션에 기본값을 할당해 줄 수 있다.
  Employee(this.name, this.age, [this.subject = 'N/A', this.salary = 0.0]);


  void display(){
    print('Name : ${name}');
    print('age : ${age}');
    print('subject : ${subject}');
    print('salary : ${salary}');
  }
}


