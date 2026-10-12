import 'package:flutter/material.dart';

void main() {
  print(Siswa.namaSekolah);

  Siswa siswa1 = Siswa("Aryan");
  siswa1.perkenalan();
  Siswa siswa2 = Siswa("daffa");
  siswa2.perkenalan();

  Siswa.namaSekolah = "SMA Harapan Bangsa";
  print("Setelah nama sekolah diubah");
  siswa1.perkenalan();
  siswa2.perkenalan();

  // Menjalankan aplikasi Flutter
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const hari = 'hari ini, Rabu!';
  static const hari2 = 'besok, Kamis!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(hari, textAlign: TextAlign.center),
              Text(hari2, textAlign: TextAlign.center),
              SizedBox(height: 24),
              SpacingTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class Siswa {
  static String namaSekolah = 'SMA Negeri 9 Kota Tangerang';
  String namaSiswa;
  Siswa(this.namaSiswa);

  void perkenalan() {
    print('Halo, nama saya $namaSiswa. Saya bersekolah di $namaSekolah');
  }
}

class SpacingTextWidget extends StatelessWidget {
  const SpacingTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tampilan Standar',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'JUDUL JUDULAN',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 8.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Catatan Pengingat Tugas',
          style: TextStyle(
            fontSize: 20,
            wordSpacing: 18.0,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Poin Kesatu\nPoin Kedua\nPoin Ketiga',
          style: TextStyle(
            fontSize: 20,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}