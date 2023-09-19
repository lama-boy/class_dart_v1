import 'package:http/http.dart' as http;

void main() {
  //HTTP 요청 및 응답 처리를 직접 만들어보자
  // https://jsonplaceholder.typicode.com/todos/10
  // https://jsonplaceholder.typicode.com/posts
  print(getData(10).then((v) => print(v)));

}

Future<http.Response> getData(int num) async{
  String url = 'https://jsonplaceholder.typicode.com/todos/$num';
  var data = await http.get(Uri.parse(url));
  return data;
}

