void main() {
  String name = 'John'; // 이 name 변수에는 null 이 아닌 문자열만 담긴다.
  int age = 30; // null 이 아닌 정수값만 가질 수 있다.
  String? nullableName; // 이 변수에는 문자열 또는 null 이 담긴다.
  int? nullableInt; // 이 변수에는 문자열 또는 null 이 담긴다.

  // 방어적 코드
  if (nullableName != null) {
    print('name : $nullableName');
  }
}
