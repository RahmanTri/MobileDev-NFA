import 'kendaraan.dart';

class Mobil extends Kendaraan {
  int jumlahPintu;

  Mobil(String merk, String model, int tahun, this.jumlahPintu, String status)
  : super (merk, model, tahun, status);

  @override
  void tampilkanInfo() {
    print("Mobil : $merk - $model - ($tahun), $jumlahPintu pintu | status : $status");
  }

  @override
  void masukServis(kerusakan) {
    // TODO: implement masukkanServis
    print("Motor $merk $model sedang diservice dengan kerusakan $kerusakan");
  }

}