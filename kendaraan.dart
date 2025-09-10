abstract class Kendaraan {
  String _merk;
  String _model;
  int _tahun;
  String _status;
  Kendaraan(this._merk, this._model, this._tahun, this._status);

  String get merk => _merk;
  String get model => _model;
  int get tahun => _tahun;
  String get status => _status;

  void tampilkanInfo();
  void masukServis(String kerusakan);
  void setStatus(String newStatus) {
    _status = newStatus;
  }
}