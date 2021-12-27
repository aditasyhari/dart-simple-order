import 'dart:io';

class Ride {
  String nama;
  String alamat;
  String notelp;

  Ride(this.nama, this.alamat, this.notelp);

  var line = "=====================================";

  void goRide() {
    print("\nPilihan Menu Ride :\n" + line);

    print("Lokasi anda saat ini : ");
    String lokasi_asal = stdin.readLineSync();
    print("Lokasi tujuan anda : ");
    String lokasi_tujuan = stdin.readLineSync();

    print("\nDetail Transaksi\n" + line);
    print("Nama pembeli : " + this.nama);
    print("Alamat pembeli : " + this.alamat);
    print("No. Telp pembeli : " + this.notelp);
    print("Lokasi saat ini : " + lokasi_asal);
    print("Lokasi tujuan : " + lokasi_tujuan);

    print(line);
    print("Order Ride Selesai.");
  }
}
