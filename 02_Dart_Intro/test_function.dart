String add(int a, int b) {
  int result = a + b;
  return "$result";
}

dynamic getDataDynamic(int data) {
  return data;
}

List<int> data(List<int> data) => data; // arrow function

void main() {
  print("selamat datang di kelas mobile programming");
  print("Nilai ada a + b adalah ${add(10, 20)}");
}
