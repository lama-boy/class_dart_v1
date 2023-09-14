import 'package:flutter_v1/test/subway.dart';
import '../busStudent.dart';

class Student{
  String name;
  int money;

  Student(this.name, this.money);

  // 학생이 버스를 탄다.
  void takeBus(Bus bus){

  }
  // 학생이 지하철을 탄다.
  void takeSubWay(Subway takesubway){
    takesubway.take(1300);
    this.money -= 1300;
  }
}