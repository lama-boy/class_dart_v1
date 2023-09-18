void main() {

  // 1. null 에 안전한 객체의 사용 가능한 속성 접근
  String? maybeName;
  int length;
  length = maybeName?.length ?? 0;
  // 문자열 값이 null 이아니면 문자열 길이를 return 하고 null 이면 길이값 0 을 리턴.
  print('length : $length');

  // 2. null 에 안전한 객체 메서드 접근
  String? name = getName(); // null 또는 문자열을 반환할 수 있다.
  String returnName = name?.toLowerCase() ?? 'HONG';
  print('returnName : $returnName');

  // 3
  String displayName = name ?? 'Unknown';
  print(displayName);
}

String? getName(){
  return null;
}