void main() {
  Bus bus1 = Bus(100,0);
  Bus bus2 = Bus(200,0);
  Person student = Person('학생');
  Person adult = Person('성인');
  student.takeBus(bus1);
  print('----------------');
  adult.takeBus(bus2);
  student.takeBus(bus2);
  print('----------------');
}

class Bus {
  int busNum;
  int count;
  int money;


  Bus(this.busNum, this.count, {this.money = 100000});

  void getClient(int money) {
    this.count++;
    print('$count 명의 인원 탑승.');
    this.money += money;
    print('busMoney : ${this.money}');
  }
}

class Person {
  String personType;
  int money;

  Person(this.personType, {this.money = 10000});

  void takeBus(Bus bus) {
    print('bus : ${bus.busNum}');
    print('person : 안녕하세요!');
    if (this.personType == '학생') {
      int fee = 1300;
      bus.getClient(fee);
      money -= fee;
      print('잔액 : ${this.money}');
    } else if (this.personType == '성인') {
      int fee = 1500;
      bus.getClient(fee);
      money -= fee;
      print('잔액 : ${this.money}');
    } else {
      print('오류');
    }
  }
}

bool moneyCheck(int money, int fee) {
  return money >= fee;
}
