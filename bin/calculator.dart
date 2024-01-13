import 'dart:io';

int tambah(int first, int second) => first + second;
int kurang(int first, int second) => first - second;
int kali(int first, int second) => first * second;
int bagi(int first, int second) => first ~/ second;

operator(int first, int last, String? arit) {
  if (arit == '+') {
    var jumlah = tambah(first, last);
    print(jumlah);
  } else if(arit == '-'){
    var jumlah = kurang(first, last);
    print(jumlah);
  } else if(arit == '*'){
    var jumlah = kali(first, last);
    print(jumlah);
  } else if(arit == '/'){
    var jumlah = bagi(first, last);
    print(jumlah);
  }
}

void main() {
  stdout.write("Angka pertama : ");
  var angka1 = stdin.readLineSync();
  stdout.write("Operasi : ");
  var operasi = stdin.readLineSync();
  stdout.write("Angka kedua: ");
  var angka2 = stdin.readLineSync();

  var awal =int.parse('$angka1');
  var akhir =int.parse('$angka2');

  operator(awal, akhir, operasi);
}
