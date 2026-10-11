import 'package:flutter/material.dart';

void main() {
  // runApp(
  //   MaterialApp(
  //     home: Scaffold(
  //       body: Center(
  //         child: Text('Hello, world!'),
  //       ),
  //     ),
  //   ),
  // );
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [Text(hari, textAlign: TextAlign.center),
              Text(hari2, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
    
  }
}
class Siswa{
  static String namaSekolah = 'SMA Negeri 9 Kota Tangerang';
  String namaSiswa;
  Siswa(this.namaSiswa);

  void perkenalan(){
    print('Halo, nama saya $namaSiswa. Saya bersekolah di $namaSekolah');
  }
  void main(){
    print(Siswa.namaSekolah);

    Siswa siswa1= Siswa("Aryan");
    siswa1.perkenalan();
    Siswa siswa2= Siswa("daffa");
    siswa2.perkenalan();
  }
}