import 'package:flutter/material.dart';

class Periksa extends StatelessWidget {
  //widget statis
  //Stateless widget bersifat final dimana nilai atau konfigurasi telah diinisiasi sejak awal
  //dapat diubah oleh parent widget nya jika parent nya adalah StatefullWidget
  final Function periksaHandler;
  //final : inisiasi variabel immutable yang mana nilai variabelnya sudah atau belum diketahui pada saat kompilasi berjalan
  Periksa({Key key, @required this.periksaHandler});
  //key untuk id
  //anotasi @required digunakan untuk parameter yang wajib dibutuhkan

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
      //margin mengatur jarak dari luar dengan mengisi semua value LTRB
      width: double.infinity, //widget diset sesuai ukuran layar
      height: 50, //pengaturan tinggi widget
      child: RaisedButton(
        onPressed:
            periksaHandler, //pada event onPressed maka ia akan memanggil fungsi periksaHandler
        color: Colors.grey[700], //set warna button
        textColor: Colors.white, //set warna text pada button
        child: Text("Periksa"), //text yang ada di button
      ),
    );
  }
}
