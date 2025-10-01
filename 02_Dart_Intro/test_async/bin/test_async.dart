import 'package:http/http.dart' as http;

Future<void> getDataTodos() async {
  dynamic response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/todos/1'),
    headers: {
      'Accept': 'application/json',
    },
  );

  print(response.body);
}

void main() async {
  await getDataTodos();
  print("proses kedua");
}
