class Table{
  String? name;
  String? color;

  //이름이 있는 매개변수를 설정할 수 있다.
  Table({this.name, this.color});

  void display(){
    print('name : $name');
    print('color : $color');
  }
} // end of table

void main() {

  //Table table1 = Table('이케아 의자', '블랙');
  Table table1 = Table(color: 'red',name: '게이밍의자');
  table1.display();
}

