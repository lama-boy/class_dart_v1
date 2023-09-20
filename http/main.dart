import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async{
  // 헤더
  Map<String,String> header = {};
  // 바디
  Todo? todo;

  // await 를 붙임으로써 통신이 완료되면 대입연산자 실행.
  var res = await fetchTodo();   // 미완료, 완료 - data , error
  if(res.statusCode == 200){
    print('통신성공');
    print(res.headers.runtimeType); // 반드시 암기
    print(res.body.runtimeType); // 반드시 암기
    header = res.headers;
    // String --> Map --> Todo
    Map<String,dynamic> httpBody = convert.jsonDecode(res.body); // String -> Map 파싱
    print(httpBody.toString());
    print(httpBody['title']);
    // Map --> Todo 클래스 타입
    todo = Todo.fromJson(httpBody);
  }else{
    print('통신실패');
  }
    print(todo.toString());
}

class Todo{
  final int userId;
  final int id;
  final String title;
  final bool completed;
  // []
  // { } <-- 명명된 파라미터
  Todo({required this.userId,required this.id,required this.title,required this.completed});

  Todo.fromJson(Map<String,dynamic> map):
      userId = map['userId'],
      id = map['id'],
      title = map['title'],
      completed = map['completed'];

  @override
  String toString() {
    return "userId : $userId, id : $id, title : $title, completed : $completed";
  }
}



Future<http.Response> fetchTodo() async{
  const url = 'https://jsonplaceholder.typicode.com/todos/1';
  final response = await http.get(Uri.parse(url));

  return response;
}


