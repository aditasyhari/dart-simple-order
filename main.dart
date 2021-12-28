import 'dart:io';
import 'food.dart';
import 'menu.dart';
import 'ride.dart';
import 'send.dart';
import 'profile.dart';

var user = new Profile(); 

// Single Responsibility Principle
class App extends Menu {
  String nama, notelp;
  var alamat;

  App(this.nama, this.alamat, this.notelp);

  @override
  void menu() {
    // TODO: implement menu
    final line = "=====================================";
    var cetakPilihanMenu =
        '\nPilih Menu Aplikasi \n$line\n1. Food \n2. Ride \n3. Send\n4. Edit Profile\n' +
            line;
    print(cetakPilihanMenu);

    print("Enter Number :");
    int menu = int.parse(stdin.readLineSync());

    switch (menu) {
      case 1:
        {
          var food = new Food(nama, alamat, notelp);
          food.goFood();
        }
        break;
      case 2:
        {
          var ride = new Ride(nama, alamat, notelp);
          ride.goRide();
        }
        break;
      case 3:
        {
          var send = new Send(nama, alamat, notelp);
          send.goSend();
        }
        break;
      case 4:
        {
          String line = "=====================================";
          print("\nEdit Profile\n" + line);

          print("Masukkan Nama : ");
          String nama = stdin.readLineSync();
          user.setNama(nama);

          print("Masukkan Alamat : ");
          String alamat = stdin.readLineSync();
          user.setAlamat(alamat);

          print("Masukkan No. Telp : ");
          String notelp = stdin.readLineSync();
          user.setNoTelp(notelp);
        }
        break;
      default:
        {
          print('Menu tidak ada!');
        }
        break;
    }
  }
}

void main() {
  bool ulang = true;

  user.setNama("Adit");
  user.setAlamat("Temuguruh, Sempu");
  user.setNoTelp("087869415384");

  do {
    var app = new App(user.getNama(), user.getAlamat(), user.getNoTelp());
    app.menu();
    stdout.write("\nApakah anda mau keluar? (y/t): ");
    String jawaban = stdin.readLineSync();

    if (jawaban.toUpperCase() == "Y") ulang = false;
  } while (ulang);
}