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
}
