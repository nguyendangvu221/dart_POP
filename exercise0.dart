import 'dart:io';

void inputInfo(int n, List<int> a) {
  for (int i = 0; i < n; i++) {
    int number = int.parse(stdin.readLineSync()!);
    a.add(number);
  }
}

void sort(int n, List<int> a) {
  for (int i = 0; i < n; i++) {
    for (int j = i + 1; j < n; j++) {
      if (a[i] > a[j]) {
        int temp = a[i];
        a[i] = a[j];
        a[j] = temp;
      }
    }
  }
}

void main(List<String> args) {
  int n = int.parse(stdin.readLineSync()!);
  List<int> a = [];
  inputInfo(n, a);
  sort(n, a);
  print(a);
}
