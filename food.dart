import 'dart:io';

class Food {
  String nama;
  String alamat;
  String notelp;

  Food(this.nama, this.alamat, this.notelp);

  var line = "=====================================";

  final List listMenu = [
    {'no': 1, 'nama_menu': 'Bakso Aci', 'harga': 10000},
    {'no': 2, 'nama_menu': 'Seblak Mak Nyak', 'harga': 25000},
    {'no': 3, 'nama_menu': 'Nasi Goreng', 'harga': 15000}
  ];

  void menuFood() {
    print("\nPilihan Menu Food :\n" + line);
    listMenu
        .map((val) => {
              print(val['no'].toString() +
                  '. ' +
                  val['nama_menu'] +
                  ', harga Rp ' +
                  val['harga'].toString())
            })
        .toList();

    print('Pilih Food :');
    int foodDipilih = int.parse(stdin.readLineSync());
    transaksi(foodDipilih);
  }

  void transaksi(int food) {
    print("\nDetail Transaksi\n" + line);
    print("Nama pembeli : " + this.nama);
    print("Alamat pembeli : " + this.alamat);
    print("No. Telp pembeli : " + this.notelp);
    print("Nama makanan : " + listMenu[food - 1]['nama_menu']);
    print("Harga makanan : Rp " + listMenu[food - 1]['harga'].toString());
    print(line);
    print("Order Food Selesai.");
  }
}
