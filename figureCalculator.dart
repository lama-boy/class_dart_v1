import 'dart:io';

void main() {
  print('도형 입력');
  var value = stdin.readLineSync();
  print(value);
  if(value != null) {
    FigureCalculator fc = FigureCalculator(value);
    print(fc);
  }else{
    print('null');
  }

}


class FigureCalculator{
  String type;

  FigureCalculator(this.type){
    print('값을 입력하세요. 삼각형, 사각형일 경우 스페이스로 길이 구분.');
    var val = stdin.readLineSync();
    if(val != null) {
      print(val);
      print(type);
      this.getArea(type,val);
    }else{
      print('값이 비었습니다.');
    }
  }


  double getArea(String type,String input){
    if(type == 'circle'){
      var banjirum = double.parse(input);
      return banjirum * banjirum * 3.14;
    }else if(type == 'tri'){
      var width = double.parse(input.split(' ')[0]);
      var height = double.parse(input.split(' ')[1]);
      return width * height / 2;
    }else if(type == 'rec'){
      var width = double.parse(input.split(' ')[0]);
      var height = double.parse(input.split(' ')[1]);
      return width * height;
    }else{
      print('error');
      return 0.0;
    }
  }
}
