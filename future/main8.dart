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

  print(convert.jsonDecode(jsonStr));
  //map 으로
  print('------------------------------');
  Map<String,dynamic> jsonMap = convert.jsonDecode(jsonStr);
  jsonMap.forEach((key,value) => {
      print('key : $key'),
      print('value : $value')
  });
  print('------------------------------');
  JsonParseClass jpc = JsonParseClass.fromJsonMap(jsonMap);
  print(jpc.userId);
}


class JsonParseClass{
  int userId;
  int id;
  String title;
  bool completed;

  JsonParseClass(this.userId, this.id, this.title, this.completed);
  JsonParseClass.fromJsonMap(Map<String,dynamic> jsonMap) :
      userId = jsonMap['userId'],
      id = jsonMap['id'],
      title = jsonMap['title'],
      completed = jsonMap['completed'];
}