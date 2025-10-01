void main() {
  // int ABC = 10;
  // int abc = 10;

  // String 1nama = "Agus";
  // String %name = "Agus";
  // String _name = "Halo";

  // double int = 10.5;

  // bool is/Married = true;

  // <type> <name_variable> = <value>;
  // Type = int, double, String, bool, List, Map, Set, dynamic, var

  // int age = 10;
  // double height = 170.5;
  // String name = "Agus Harjoko";
  // bool isMarried = false;

  // print(age);
  // print(height);
  // print(name.split(" ")[0]);
  // print(name.split(" ")[1]);
  // print(isMarried);

  // String firstName = name.split(" ")[0];
  // String lastName = name.split(" ")[1];

  // print("Umur saya adalah $age dan tinggi saya adalah $height"); // Interpolasi
  // print("Nama Depan saya adalah" + firstName + " nama Belakang " + lastName); // Concatenation

  // keyword: var and dynamic

  dynamic a = 10.4; // Runtime Process
  print(a.runtimeType);
  a = 10.4;
  a = "Agus Harjoko";
  print(a.runtimeType);

  var b = 10; // Compile Time Process
  print(b.runtimeType);
  b = 10;
  print(b.runtimeType);

  // Null Safety

  int abc; // non nullable variable
  abc = 10;
  print(abc);

  int? cba;
  print(cba);

  // name, nim, suggestion
  dynamic name;
  dynamic nim;
  dynamic suggestion;

  // Type 1: weakly typed => value menentukan type data
  dynamic numbers = [
    1,
    2,
    3,
    4,
    5,
  ];
  print(numbers);
  print(numbers.runtimeType);

  // Type 2: strongly typed => type data menentukan value
  // List<String> numbers2 = [1, 2, 3, 4, 5.5, true];
  List<bool> isLoadings = [false, false, false, false];
  bool isLoadingError = false;
  bool isLoadingProses = false;
  bool isLoadingDataA = false;

  // [1,2,3, true, "halo", ["coding", "reading"]] ? bagaimana saya membuat variabel ini?

  List<dynamic> data = [
    1,
    2,
    3,
    true,
    "halo",
    ["coding", "reading"]
  ];

  // print("hobi kedua saya adalah $data[5][1]"); // salah
  print("hobi kedua saya adalah ${data[5][1]}"); // benar untuk interpolasi

  // 1: weak map
  var todo = {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false,
  };

  print(todo);
  print(todo.runtimeType);

  // Map<keyTypeData, valueTypeData> var = {value}; // strongly map
  Map<String, String> todo2 = {
    "userId": "1",
    "id": "1",
    "title": "delectus aut autem",
    "completed": "false",
  };

  List<Map<String, dynamic>> todos = [
    {"userId": 1, "id": 1, "title": "delectus aut autem", "completed": false},
    {"userId": 1, "id": 2, "title": "quis ut nam facilis et officia qui", "completed": false},
    {"userId": 1, "id": 3, "title": "fugiat veniam minus", "completed": false}
  ];

  print(todos[2]["title"]);

  String statusLulus;
  int nilai = 70;

  if (nilai > 75) {
    statusLulus = "Selamat Anda Lulus";
  } else {
    statusLulus = "Maaf Anda Tidak Lulus";
  }

  print(statusLulus);

  // Ternary Operator atau Conditional Expression
  statusLulus = (nilai > 75) ? "Selamat Anda Lulus" : "Maaf Anda Tidak Lulus";

  for (int number in numbers) {
    print(number);
  }
}
