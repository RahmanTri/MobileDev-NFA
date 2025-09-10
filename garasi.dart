import 'dart:io';

import 'kendaraan.dart';

class Garasi {
  List <Kendaraan> daftarKendaraan = [];
  List <Map<String, String>> daftarServis = [];

  void tambahKendaraan(Kendaraan kendaraan) {
    daftarKendaraan.add(kendaraan);
    print("Kendaraan Berhasil Ditambahkan ke Garasi");
  }

  void tampilkanSemuaKendaraan() {
    print("\n Daftar Kendaraan yang Ada di Garasi");
    int no = 1;
    if (daftarKendaraan.isEmpty) {
      print(" ~ Garasi Kosong ~ ");
    } else {
      for (var kendaraan in daftarKendaraan) {
        stdout.write("$no. ");
        kendaraan.tampilkanInfo();
        no +=1;
    }
    }
  }

  void tampilkanKendaraanServis() {
    print("\n Daftar Kendaraan Yang Sedang Maitence");
    int no = 1;
    if (daftarServis.isEmpty) {
      print(" ~ Tidak ada kendaraan yang di servis ~ ");
    } else {
      for (var kendaraan in daftarServis) {
        stdout.write("$no. ");
        print("${kendaraan['Merk']} ${kendaraan['Model']} - kerusakan ${kendaraan['Kerusakan']}");
        no +=1;
      }
    }
    
  }

  void servisKendaraan(Kendaraan kendaraan, String kerusakan) {
    kendaraan.masukServis(kerusakan);
    kendaraan.setStatus('Maitence');
    daftarServis.add({
      'Merk' : kendaraan.merk,
      'Model' : kendaraan.model,
      'Kerusakan' : kerusakan,
    });
    print("Kendaraan masuk daftar servis => ${kendaraan.merk} ${kendaraan.model} dengan kerusakan $kerusakan");
  }
}