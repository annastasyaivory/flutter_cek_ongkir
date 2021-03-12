import 'package:flutter/material.dart';

class RiwayatPengecekan extends StatelessWidget {
  //widget statis
  //Stateless widget bersifat final dimana nilai atau konfigurasi telah diinisiasi sejak awal
  //dapat diubah oleh parent widget nya jika parent nya adalah StatefullWidget
  const RiwayatPengecekan({
    //const : inisiasi variabel immutable yang mana nilai variabelnya sudah diketahui pada saat kompilasi berjalan
    Key key, //key untuk id
    @required
        this.listViewItem, //anotasi @required digunakan untuk parameter yang wajib dibutuhkan
  }) : super(key: key);

  final List<String> listViewItem;
  //final : inisiasi variabel immutable yang mana nilai variabelnya sudah atau belum diketahui pada saat kompilasi berjalan

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listViewItem.map((String value) {
      return Container(
        margin: EdgeInsets.all(
            10), //margin mengatur jarak dari luar semua sisi dengan menggunakan 'all' berarti mengisi semua value LTRB
        child: Text(
          value,
          style: TextStyle(fontSize: 15), //pengaturan ukuran font text
        ),
      );
    }).toList()); //mapping diubah menjadi bentuk list
  }
}
