class Profile {
  String _nama, _notelp;
  var _alamat;

  String getNama() {
    return this._nama;
  }

  void setNama(String nama) {
    this._nama = nama;
  }

  String getAlamat() {
    return this._alamat;
  }

  void setAlamat(String alamat) {
    this._alamat = alamat;
  }

  String getNoTelp() {
    return this._notelp;
  }

  void setNoTelp(String notelp) {
    this._notelp = notelp;
  }
}