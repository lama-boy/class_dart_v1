void main(){
  // Future (미래 타입) 을 선언해보자.
  Future<String> name = Future.value('텐코딩');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(number);
  print(isTrue);
  print('----------------------');

  // Future 타입을 값 꺼내기
  // 방법 2 - 콜백 메써드 활용 Future.then() 함수를 사용할 수 있다.
  name.then((v) => print('Future type 에서 값 꺼내기 : $v'));
  number.then((v)=> print(v));
  isTrue.then((v)=> print(v));



}



