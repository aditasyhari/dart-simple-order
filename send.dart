import 'dart:io';

class Send {
  String nama;
  String alamat;
  String notelp;

  Send(this.nama, this.alamat, this.notelp);

  var line = "=====================================";

  void goSend() {
    print("\nPilihan Menu Send :\n" + line);

    print("Nama barang : ");
    String barang = stdin.readLineSync();
    print("Berat barang : ");
    int berat = int.parse(stdin.readLineSync());
    print("Nama penerima : ");
    String penerima = stdin.readLineSync();
    print("No. Telp penerima : ");
    String notelp_penerima = stdin.readLineSync();
    print("Lokasi pengambilan : ");
    String lokasi_asal = stdin.readLineSync();
    print("Lokasi tujuan : ");
    String lokasi_tujuan = stdin.readLineSync();

    print("\nDetail Transaksi\n" + line);

    print("Nama pengirim : " + this.nama);
    print("No. Telp pengirim : " + this.notelp);

    print("Nama barang : " + barang);
    print("Berat barang (kg): " + berat.toString() + ' kg');

    print("Nama penerima : " + penerima);
    print("No. Telp penerima : " + notelp_penerima);

    print("Lokasi pengambilan : " + lokasi_asal);
    print("Lokasi tujuan : " + lokasi_tujuan);

    print(line);
    print("Order Send Selesai.");
  }
}