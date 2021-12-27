import 'dart:io';
import 'food.dart';
import 'ride.dart';
import 'send.dart';

void main() {
  bool ulang = true;

  print("Masukkan Nama : ");
  String nama = stdin.readLineSync();

  print("Masukkan Alamat : ");
  String alamat = stdin.readLineSync();

  print("Masukkan No. Telp : ");
  String notelp = stdin.readLineSync();

  do {
    menu(nama, alamat, notelp);
    stdout.write("\nApakah anda mau keluar? (y/t): ");
    String jawaban = stdin.readLineSync();

    if (jawaban.toUpperCase() == "Y") ulang = false;
  } while (ulang);
}

void menu(nama, alamat, notelp) {
  final line = "=====================================";
  var cetakPilihanMenu = '\nPilih Menu Aplikasi \n$line\n1. Food \n2. Ride \n3. Send\n'+line;
  print(cetakPilihanMenu);

  print("Enter Number :");
  int menu = int.parse(stdin.readLineSync());

  switch (menu) {
    case 1:
      {
        var food = new Food(nama, alamat, notelp);
        food.menuFood();
      }
      break;
    case 2:
      {
        var ride = new Ride(nama, alamat, notelp);
        ride.goRide();
      }
      break;
    case 3:
      {}
      break;
    default:
      {
        print('Menu tidak ada!');
      }
      break;
  }
}
