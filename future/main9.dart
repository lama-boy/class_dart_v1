import 'dart:convert' as convert;

void main() {
  String jsonStr = '''
  {
    "id": 2,
    "name": "Ervin Howell",
    "username": "Antonette",
    "email": "Shanna@melissa.tv",
    "address": 
      {
        "street": "Victor Plains",
        "suite": "Suite 879",
        "city": "Wisokyburgh",
        "zipcode": "90566-7771",
        "geo": 
          {
            "lat": "-43.9509",
            "lng": "-34.4618"
          }
      },
    "phone": "010-692-6593 x09125",
    "website": "anastasia.net",
    "company": 
    {
      "name": "Deckow-Crist",
      "catchPhrase": "Proactive didactic contingency",
      "bs": "synergize scalable supply-chains"
    }
  }
  ''';

  Map<String, dynamic> jsonMap = convert.jsonDecode(jsonStr);
  print(jsonMap);
  print(jsonMap.runtimeType);
  print(jsonParser(jsonMap,""));
}


String jsonParser(Map<String, dynamic> jsonMap,String result){
  result = "";
  jsonMap.forEach((key,val) => {
    if(val is Map<String,dynamic>){
      result += jsonParser(val,result)
    }else{
      result += '$key : ',
      result += '$val\n'
    }
  });
  return result;
}
