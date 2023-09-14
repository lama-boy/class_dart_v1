import 'dart:io';

void main() {
  print('입력하세요');
  String? val = stdin.readLineSync();
  if(val != null) {
    print(val);
  }else{
    print('값이 비었습니다.');
  }
}
