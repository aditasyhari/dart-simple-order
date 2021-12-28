import 'dart:io';
import 'menu.dart';

// Interface Segregation Principle
class Ride implements GoRide, Output {
  String nama, alamat, notelp;
  String _lokasi_tujuan, _lokasi_asal;

  Ride(this.nama, this.alamat, this.notelp);

  String line = "=====================================";

  void goRide() {
    print("\nPilihan Menu Ride :\n" + line);

    print("Lokasi anda saat ini : ");
    _lokasi_asal = stdin.readLineSync();
    print("Lokasi tujuan anda : ");
    _lokasi_tujuan = stdin.readLineSync();

    output();
  }

  void output() {
    print("\nDetail Transaksi\n" + line);

    print("Nama pembeli : " + this.nama);
    print("Alamat pembeli : " + this.alamat);
    print("No. Telp pembeli : " + this.notelp);
    print("Lokasi saat ini : " + this._lokasi_asal);
    print("Lokasi tujuan : " + this._lokasi_tujuan);

    print(line + "\nOrder Ride Selesai.");
  }
}
