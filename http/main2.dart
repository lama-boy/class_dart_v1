import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async{
  // 반드시 기억하자
  // json.decode(String --> Map<String,dynamic>
  // json.decode(String --> List<dynamic> ( Json Array Type )
  var data = await fetchTodo();
  print(json.decode(data.body).runtimeType);
  List<dynamic> listBody1 = json.decode(data.body);
  print(listBody1[0].runtimeType);
  // list 안의 Map --> 반복해서 돌며 Object 로 변환해야됨.
  List<Todo> todos = [];
  for(var m in listBody1){
    Todo letTodo = Todo.fromJson(m);
    todos.add(letTodo);
  }
  // print(todos.length);
  // print(todos[0].toString());
  todos.forEach((element) { print(element.toString());});

  //추후 학습
  List<Todo> myTodo = listBody1.map((e) => Todo.fromJson(e)).toList();
  print(myTodo[0].toString());
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
  const url = 'https://jsonplaceholder.typicode.com/todos';
  final response = await http.get(Uri.parse(url));

  return response;
}


