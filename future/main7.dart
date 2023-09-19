import 'dart:convert' as convert;
void main() {
  String jsonStr = '''
  {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  }
  ''';

  // 1단계
  // JSON 문자열 형식을 Map 구조로 파싱해보자.
  print(convert.jsonDecode(jsonStr));
  Map<String,dynamic> jsonMap = convert.jsonDecode(jsonStr);
  jsonMap.forEach((key,value) => {
    //Todo todo = Todo(userId,id,title,completed
    // print('key : $key'),
    // print('value : $value')
  });

  //2단계
  // JSON 문자열 형식을 class 로 파싱해보자
  Todo todo = Todo.fromJson(jsonMap);
  print(todo.userId);
}


class Todo{
  int userId;
  int id;
  String title;
  bool completed;

  Todo(this.userId, this.id, this.title, this.completed);
  //명명된 생성자 2 - 이름이 생성자
  Todo.fromJson(Map<String,dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];
}