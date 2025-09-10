import 'kendaraan.dart';

class Motor extends Kendaraan {
  bool memilikiBox;
  Motor (String merk, String model, int tahun, this.memilikiBox, String status)
  : super (merk, model, tahun, status);

  @override
  void tampilkanInfo() {
    // TODO: implement tampilkanInfo
    print("Motor : $merk - $model ($tahun), ${memilikiBox? "Dengan TopBox" : "Tanpa TopBox"} | status : $status");
  }

  @override
  void masukServis(kerusakan) {
    // TODO: implement masukkanServis
    print("Motor $merk $model diService dengan kerusakan $kerusakan");
  }
}