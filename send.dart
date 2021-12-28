import 'dart:io';
import 'menu.dart';

// Interface Segregation Principle
class Send implements GoSend, Output {
  String nama, alamat, notelp;
  String _barang, _penerima, _notelp_penerima, _lokasi_asal, _lokasi_tujuan;
  int _berat;

  Send(this.nama, this.alamat, this.notelp);

  String line = "=====================================";

  void goSend() {
    print("\nPilihan Menu Send :\n" + line);

    print("Nama barang : ");
    _barang = stdin.readLineSync();
    print("Berat barang (kg) : ");
    _berat = int.parse(stdin.readLineSync());
    print("Nama penerima : ");
    _penerima = stdin.readLineSync();
    print("No. Telp penerima : ");
    _notelp_penerima = stdin.readLineSync();
    print("Lokasi pengambilan : ");
    _lokasi_asal = stdin.readLineSync();
    print("Lokasi tujuan : ");
    _lokasi_tujuan = stdin.readLineSync();

    output();
  }

  void output() {
    print("\nDetail Transaksi\n" + line);

    print("Nama pengirim : " + this.nama);
    print("No. Telp pengirim : " + this.notelp);

    print("Nama barang : " + this._barang);
    print("Berat barang (kg): " + this._berat.toString() + ' kg');

    print("Nama penerima : " + this._penerima);
    print("No. Telp penerima : " + this._notelp_penerima);

    print("Lokasi pengambilan : " + this._lokasi_asal);
    print("Lokasi tujuan : " + this._lokasi_tujuan);

    print(line);
    print("Order Send Selesai.");
  }
}
