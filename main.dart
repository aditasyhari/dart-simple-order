import 'dart:io';
import 'food.dart';
import 'ride.dart';
import 'send.dart';

class Profile{
  String _nama, _notelp;
  var _alamat;

  String getNama(){
    return this._nama;
  }

  void setNama(String nama){
    this._nama = nama;
  }

  String getAlamat(){
    return this._alamat;
  }

  void setAlamat(String alamat){
    this._alamat = alamat;
  }

  String getNoTelp(){
    return this._notelp;
  }

  void setNoTelp(String notelp){
    this._notelp = notelp;
  }
}

void main() {
  bool ulang = true;

  var user = new Profile();
  user.setNama("Adit");
  user.setAlamat("Temuguruh, Sempu");
  user.setNoTelp("087869415384");

  // print("Masukkan Nama : ");
  // String nama = stdin.readLineSync();

  // print("Masukkan Alamat : ");
  // String alamat = stdin.readLineSync();

  // print("Masukkan No. Telp : ");
  // String notelp = stdin.readLineSync();

  do {
    menu(user.getNama(), user.getAlamat(), user.getNoTelp());
    stdout.write("\nApakah anda mau keluar? (y/t): ");
    String jawaban = stdin.readLineSync();

    if (jawaban.toUpperCase() == "Y") ulang = false;
  } while (ulang);
}

void menu(nama, alamat, notelp) {
  final line = "=====================================";
  var cetakPilihanMenu = '\nPilih Menu Aplikasi \n$line\n1. Food \n2. Ride \n3. Send\n4. Edit Profile\n'+line;
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
      {}
      break;
    default:
      {
        print('Menu tidak ada!');
      }
      break;
  }
}
