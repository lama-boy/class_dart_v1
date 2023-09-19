void main() async {
  // await 키워드를 가지는 함수는 선언부에 async 를 선언해주어야 한다.
  // 동기성 - 모든 코드가 순차적으로 진행되는 형태.
  print('task 1 ...');
  var data1 = await fetchData(); // 기대 값 : 2초 data
  //                      --> 실제 값 : Future<String>
  print(data1.runtimeType);
  print('data1 : $data1');
  print('task 2 ...');
  print('task 3 ...');
  // 비동기성 - 코드가 동시 다밟적으로 실행, 순차적으로 보장을 할 수 없는 상태.
}

Future<String> fetchData(){
  // return Future.delayed(const Duration(seconds:2),(){
  //   return '2초 data';
  // } );
  return Future.delayed(const Duration(seconds: 2),()=>'2초 data');
}

