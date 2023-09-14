import 'package:flutter_v1/static/calculator_test.dart';

class Employee{
  // static <-- 객체들이 공유할 수 있는 메모리 공간.
  // 하지만 static 은 해당 객체의 속성 값을 나타내는 것은 아니다.

  String name;
  static int nextEmployeeNumber = 1000;
  int employeeNumber = 0;
  //static 변수
  //멤버 변수

  Employee(this.name){
    employeeNumber = nextEmployeeNumber;
    nextEmployeeNumber++;
  }

  //함수는 독립적인 일련의 코드의 묶음이다.
  //메써드는 멤버 변수를 활용해서 기능을 구현한다.
  void display(){
    print('이름 : $name');
    print('사원 번호 : $employeeNumber');
  }

}

void main() {

  // 제약조건
  // Employee 클래스 안에 사원 번호 데이터를 받는 변수를 선언하시오
  // 단, Employee 가 인스턴스화 되면(객체) 사원번호는 자동으로 1씩 증가할 수 있도록
  // 만들어주세요
  for(int i = 0; i < 50; i++) {
    Employee employee = Employee('홍길동$i');
  }
  Employee emp = Employee('abc');
  emp.display();




}
