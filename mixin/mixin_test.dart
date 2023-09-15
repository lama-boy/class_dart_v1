mixin LoggingMixin{

  String tag = 'LogginMixin';
  // LoggingMixin(this.tag);  믹스인은 생성자를 가질 수 없다. ( 에러남 )

  log(String message){
    print('log - $tag : $message');
  }
}
//믹스인의 활용 - with 키워드 사용.
class User with LoggingMixin{
  String name;
  User(this.name);

}

void main() {
  User user = User('홍길동');
  user.tag = 'User';
  user.log('TEST USER CLASS');
}