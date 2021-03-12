import 'package:flutter/material.dart';

class InputTujuan extends StatelessWidget {
  //widget statis
  //Stateless widget bersifat final dimana nilai atau konfigurasi telah diinisiasi sejak awal
  //dapat diubah oleh parent widget nya jika parent nya adalah StatefullWidget
  const InputTujuan({
    //const : inisiasi variabel immutable yang mana nilai variabelnya sudah diketahui pada saat kompilasi berjalan
    Key key, //key untuk id
    @required
        this.inputController2, //anotasi @required digunakan untuk parameter yang wajib dibutuhkan
  }) : super(key: key);
  final TextEditingController inputController2;
  //final : inisiasi variabel immutable yang mana nilai variabelnya sudah atau belum diketahui pada saat kompilasi berjalan
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, //pengaturan tinggi widget
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Ketik kata kunci nama negara"), //hint text
        controller: inputController2, //pembuatan controller
      ),
    );
  }
}
