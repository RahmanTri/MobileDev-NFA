import 'kendaraan.dart';
import 'mobil.dart';
import 'motor.dart';
import 'garasi.dart';
import 'dart:io';

void main() {
  Garasi garasi = Garasi();

  Mobil mobil1 = Mobil('Toyota', 'Supra GR-86', 2015, 2, 'StandBy');
  Mobil mobil2 = Mobil('Toyota', 'VIOS Gen-5', 2024, 4, 'StandBy');
  Mobil mobil3 = Mobil('Honda', 'Civic RS', 2024, 4, 'StandBy');
  Motor motor1 = Motor('Kawasaki', 'ZX-10R', 2020, false, 'Standby');
  Motor motor2 = Motor('Honda', 'CBR 1000RR', 2020, false, 'Standby');
  garasi.tambahKendaraan(mobil1);
  garasi.tambahKendaraan(mobil2);
  garasi.tambahKendaraan(mobil3);
  garasi.tambahKendaraan(motor2);
  garasi.tambahKendaraan(motor1);  

  while (true) {
      print("\n ===== SISTEM MANAJEMEN GARASI =====");
      print("1. Tambah kendaraan");
      print("2. Tampilkan semua kendaraan yang ada");
      print("3. Serviskan kendaraan");
      print("4. Tampilkan kendaraan yang di servis");
      print("===================================");
      stdout.write("Masukkan pilihan anda (1-4) : ");
      int menu = int.parse(stdin.readLineSync()!);

      if (menu < 1 || menu > 4) {
        print("Input Tidak Valid");
      }

      switch (menu) {
        case 1 : 
        print("\n ==== TAMBAH KENDARAAN ====");
        print("Jenis Kendaraan");
        print("1. Mobil");
        print("2. Motor");
        stdout.write("Pilih jenis kendaraan (1/2): ");
        int jenis = int.parse(stdin.readLineSync()!);
        if (jenis < 1 || jenis > 2) {
          print("Input Tidak Valid");
        } else {
          if (jenis == 1) {
            print("Jenis Kendaraan : MOBIL");
            stdout.write("Masukkan merk mobil : ");
            String merk = stdin.readLineSync()!;
            
            stdout.write("Masukkan model mobil : ");
            String model = stdin.readLineSync()!;

            stdout.write("Masukkan tahun pembuatan mobil : ");
            int tahun = int.parse(stdin.readLineSync()!);

            stdout.write("Masukkan jumlah pintu : ");
            int jumlahPintu = int.parse(stdin.readLineSync()!);

            Mobil dataMobil = Mobil(merk, model, tahun, jumlahPintu, 'StandBy');
            garasi.tambahKendaraan(dataMobil);
          } else {
            print("Jenis Kendaraan : MOTOR");
            stdout.write("Masukkan merk motor : ");
            String merk = stdin.readLineSync()!;
            
            stdout.write("Masukkan model motor : ");
            String model = stdin.readLineSync()!;

            stdout.write("Masukkan tahun pembuatan motor : ");
            int tahun = int.parse(stdin.readLineSync()!);

            stdout.write("Apakah motor memiliki TopBox? (y/n) : ");
            String input = stdin.readLineSync()!;
            bool topBox = input == 'y' ? true : false;

            Motor dataMotor = Motor(merk, model, tahun, topBox, 'StandBy');
            garasi.tambahKendaraan(dataMotor);
          }
        }

        case 2 :
        garasi.tampilkanSemuaKendaraan();

        case 3 :
        print("===== SERVIS KENDARAAN =====");
        garasi.tampilkanSemuaKendaraan();
        print("============================");
        stdout.write("Pilih no. kendaraan : ");
        int pilihan = int.parse(stdin.readLineSync()!);
        if (pilihan < 1 || pilihan > garasi.daftarKendaraan.length) {
          print("Pilihan tidak valid");
        } else {
          Kendaraan kendaraanDiPilih = garasi.daftarKendaraan[pilihan -1];
          stdout.write("Masukkan kerusakan : ");
          String kerusakan = stdin.readLineSync()!;
          garasi.servisKendaraan(kendaraanDiPilih, kerusakan);
        }

        case 4 :
        garasi.tampilkanKendaraanServis();
      }
  }
}