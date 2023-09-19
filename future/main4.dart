void main() {
  addNumbers1(10, 20).then((v) => print('result : $v'));

  addNumbers2(100, 100).then((v) => print('결과값 : $v'));
}

Future<int> addNumbers1(int n1, int n2) async {
  print('함수시작');
  var result = 0;
  await Future.delayed(const Duration(seconds: 2), () {
    result = n1 + n2;
  });
  print('함수종료');
  return result;
}

// 방법2
Future<int> addNumbers2(int n1, int n2) {
  return Future.delayed(const Duration(seconds: 2), () => n1 + n2);
}
