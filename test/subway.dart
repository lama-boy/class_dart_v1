void main() {

}

class Subway{

  int lineNumber; // 호선
  int count; // 승객수
  int money; // 수익금

  Subway(this.lineNumber, this.count, this.money);

  // 승객을 태우다
  void take(int money){
    this.money += money;
    this.count ++;
  }

  void showInfo(){
    print('호선 : $lineNumber');
    print('수익금 : $money');
    print('승객수 : $count');
  }
}
