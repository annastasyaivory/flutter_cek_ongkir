import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //widget statis
  //Stateless widget bersifat final dimana nilai atau konfigurasi telah diinisiasi sejak awal
  //dapat diubah oleh parent widget nya jika parent nya adalah StatefullWidget
  const Result({
    //const : inisiasi variabel immutable yang mana nilai variabelnya sudah diketahui pada saat kompilasi berjalan
    Key key, //key untuk id
    @required
        this.result, //anotasi @required digunakan untuk parameter yang wajib dibutuhkan
  }) : super(key: key);
  final String result;
  //final : inisiasi variabel immutable yang mana nilai variabelnya sudah atau belum diketahui pada saat kompilasi berjalan
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 20,
          bottom:
              20), //pengaturan margin widget pada value top saja dengan menggunakan only
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //memposisikan widget pada tengah layar
        children: [
          Text(
            "Ongkos Kirim",
            style: TextStyle(fontSize: 18), //pengaturan ukuran font text
          ),
          Text(
            result,
            style: TextStyle(fontSize: 30), //pengaturan ukuran font text
          )
        ],
      ),
    );
  }
}
