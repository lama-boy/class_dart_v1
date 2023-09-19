void main() async{
  // Future (미래 타입) 을 선언해보자.
  Future<String> name = Future.value('텐코딩');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(number);
  print(isTrue);
  print('----------------------');

  // Future 타입을 값 꺼내기
  // 방법1 - 코드를 동기적으로 처리하는 방법
  print( await name );
  print( await number );
  print( await isTrue );

}



