//Annastasya Putri Ivory
//NIM 1931710036
//Kelas MI-2A Abs 05

import 'package:flutter/material.dart'; //Widget Flutter yang menerapkan Desain Material.
import 'inputTujuan.dart'; //impor file inputTujuan.dart agar dapat dilakukan pemanggilan
import 'inputAsal.dart'; //impor file inputAsal.dart agar dapat dilakukan pemanggilan
import 'result.dart'; //impor file result.dart agar dapat dilakukan pemanggilan
import 'periksa.dart'; //impor file periksa.dart agar dapat dilakukan pemanggilan
import 'riwayatPengecekan.dart'; //impor file riwayatPengecekan.dart agar dapat dilakukan pemanggilan
//statement import dapat digunakan untuk mengimport package, library, atau file lain yang digunakan pada file yang dieksekusi

void main() {
  //fungsi main *semua proses aplikasi dimulai jalankan pada fungsi main
  runApp(MyApp()); //menjalankan class MyApp()
  //class My App() pada file main.dart ini mengextend StateFulWidget
}

class MyApp extends StatefulWidget {
  //widget dinamis
//stateful widget ini dapat diperbarui ketika dibutuhkan sesuai action pengguna atau jika ada ada perubahan data
  @override
  _MyAppState createState() => _MyAppState(); //perubahan di trigger oleh state
}

class _MyAppState extends State<MyApp> {
  //TextEditingController adalah controller dari form/textfield yang dapat diedit/diisi
  //setiap textfield mempunyai controller masing masing
  TextEditingController inputController =
      new TextEditingController(); //pembuatan controller untuk inputAsal
  TextEditingController inputController2 =
      new TextEditingController(); //pembuatan controller untuk inputTujuan

  String _inputUserAsal = ""; //inisialisasi inputAsal
  String _inputUserTujuan = ""; //inisialisasi inputTujuan
  // String _pos = "";
  // String _tiki = "";
  // String _jne = "";

  var listItem = ["Pos", "Tiki", "JNE"]; //list of object untuk map
  //list mulai dari index ke 0
  //list.length – 1 adalah index nilai terakhir dari sebuat list
  String _newValue = "Pos"; //mengeset nilai pada dropdown button
  String _result = ""; //mengeset nilai pada dropdown button

  List<String> listViewItem =
      List<String>(); //membuat variable bertipe List<String>
  final periksaHandler = Function;

  void perhitunganOngkir() {
    setState(() {
      _inputUserAsal = (inputController.text); //penerimaan inputAsal
      _inputUserTujuan = (inputController2.text); //penerimaan inputTujuan

      //from MALANG to ALL
      //equalsIgnoreCase(String string1, String string2)
      if (_inputUserAsal.toLowerCase() == "Malang".toLowerCase()) {
        //from Malang
        if (_inputUserTujuan.toLowerCase() == "Korea".toLowerCase()) {
          //to Korea
          if (_newValue == "Pos") {
            //Malang-Korea[POS]
            _result = "Rp 303.418,00"; //hasil yang akan ditampilkan
          } else if (_newValue == "Tiki") {
            //Malang-Korea[Tiki]
            _result = "Rp 374.946,00"; //hasil yang akan ditampilkan
          } else if (_newValue == "JNE") {
            //Malang-Korea[JNE]
            _result = "Rp 418.209,00"; //hasil yang akan ditampilkan
          }
        } else if (_inputUserTujuan.toLowerCase() ==
            "Singapore".toLowerCase()) {
          //to Singapore
          if (_newValue == "Pos") {
            //Malang-Singapore[POS]
            _result = "Rp 268.260,00"; //hasil yang akan ditampilkan
          } else if (_newValue == "Tiki") {
            //Malang-Singapore[Tiki]
            _result = "Rp 144.210,00"; //hasil yang akan ditampilkan
          } else if (_newValue == "JNE") {
            //Malang-Singapore[JNE]
            _result = "Rp 173.052,00"; //hasil yang akan ditampilkan
          }
        } else if (_inputUserTujuan.toLowerCase() == "Malaysia".toLowerCase()) {
          //to Malaysia
          if (_newValue == "Pos") {
            //Malang-Malaysia[POS]
            _result = "Rp 279.218,00"; //hasil yang akan ditampilkan
          } else if (_newValue == "Tiki") {
            //Malang-Malaysia[Tiki]
            _result = "Rp 324.472,50"; //hasil yang akan ditampilkan
          } else if (_newValue == "JNE") {
            //Malang-Malaysia[JNE]
            _result = "Rp 360.525,00"; //hasil yang akan ditampilkan
          }
        }
      }

      //from JAKARTA to ALL
      if (_inputUserAsal.toLowerCase() == "Jakarta".toLowerCase()) {
        //from Jakarta
        if (_inputUserTujuan.toLowerCase() == "Korea".toLowerCase()) {
          //to Korea
          if (_newValue == "Pos") {
            //Jakarta-Korea[POS]
            _result = "Rp 300.464,00"; //hasil yang akan ditampilkan
          } else if (_newValue == "Tiki") {
            //Jakarta-Korea[Tiki]
            _result = "Rp 374.946,00"; //hasil yang akan ditampilkan
          } else if (_newValue == "JNE") {
            //Jakarta-Korea[JNE]
            _result = "Rp 418.209,00"; //hasil yang akan ditampilkan
          }
        } else if (_inputUserTujuan.toLowerCase() ==
            "Singapore".toLowerCase()) {
          //to Singapore
          if (_newValue == "Pos") {
            //Jakarta-Singapore[POS]
            _result = "Rp 268.260,00"; //hasil yang akan ditampilkan
          } else if (_newValue == "Tiki") {
            //Jakarta-Singapore[Tiki]
            _result = "Rp 144.210,00"; //hasil yang akan ditampilkan
          } else if (_newValue == "JNE") {
            //Jakarta-Singapore[JNE]
            _result = "Rp 173.052,00"; //hasil yang akan ditampilkan
          }
        } else if (_inputUserTujuan.toLowerCase() == "Malaysia".toLowerCase()) {
          //to Malaysia
          if (_newValue == "Pos") {
            //Jakarta-Malaysia[POS]
            _result = "Rp 279.218,00"; //hasil yang akan ditampilkan
          } else if (_newValue == "Tiki") {
            //Jakarta-Malaysia[Tiki]
            _result = "Rp 324.472,50"; //hasil yang akan ditampilkan
          } else if (_newValue == "JNE") {
            //Jakarta-Malaysia[JNE]
            _result = "Rp 360.525,00"; //hasil yang akan ditampilkan
          }
        }
      }

      //penambahan list untuk riwayat dengan memanggil beberapa variabel yang dibutuhkan
      listViewItem
          .add("$_inputUserAsal - $_inputUserTujuan [$_newValue] : $_result");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        resizeToAvoidBottomPadding:
            false, //menghindari error 'bottom overflowed' saat keyboard muncul
        appBar: AppBar(
          //setting appbar yang berada pada bagian paling atas aplikasi
          title: Text("Cek Ongkir Internasional"),
          backgroundColor: Colors.black, //background color app bar
        ),
        body: Container(
          padding: EdgeInsets.all(
              8), //padding mengatur jarak dari dalam semua sisi dengan menggunakan 'all' berarti mengisi semua value LTRB
          color: Colors.grey[300], //set color background body
          child: Column(
            //column untuk pengaturan widget vertikal
            children: [
              Container(
                alignment: Alignment
                    .topLeft, //pengaturan posisi widget ke atas pojok kiri
                child: Text(
                  "Asal",
                  style: TextStyle(fontSize: 20), //pengaturan ukuran font text
                ),
              ),
              InputAsal(
                  inputController:
                      inputController), //mengirim parameter ke child widget melalui konstruktor pada file inputAsal.dart
              Container(
                alignment: Alignment
                    .topLeft, //pengaturan posisi widget ke atas pojok kiri
                margin: EdgeInsets.only(
                    top:
                        10), //pengaturan margin widget pada value top saja dengan menggunakan only
                child: Text(
                  "Tujuan",
                  style: TextStyle(fontSize: 20), //pengaturan ukuran font text
                ),
              ),
              InputTujuan(
                  inputController2:
                      inputController2), //mengirim parameter ke child widget melalui konstruktor pada file inputTujuan.dart
              Row(
                //row untuk pengaturan widget secara horizontal
                mainAxisAlignment: MainAxisAlignment
                    .start, //memposisikan widget mengikuti posisi widget pertama [hasilnya ke kiri]
                children: [
                  Text("Pilih Opsi Pengiriman",
                      style: TextStyle(
                        fontSize: 20, //pengaturan ukuran font text
                      )),
                  Container(
                      margin: EdgeInsets.only(
                          left:
                              10), //pengaturan margin widget pada value left saja dengan menggunakan only
                      child:
                          buildDropdownButton()), //pemanggilan fungsi build dropdown
                ],
              ),
              Periksa(
                  periksaHandler:
                      perhitunganOngkir), //menurunkan fungsi ke child widget
              Result(
                  result:
                      _result), //mengirim parameter ke child widget melalu konstruktor
              Container(
                margin: EdgeInsets.only(
                    top: 10,
                    bottom:
                        10), //pengaturan margin widget pada value top bottom saja dengan menggunakan only
                child: Text(
                  "Riwayat Pengecekan",
                  style: TextStyle(fontSize: 18), //pengaturan ukuran font text
                ),
              ),
              Expanded(
                //expanded untuk memperluas children column di ruang yang tersissa
                child: RiwayatPengecekan(
                    listViewItem:
                        listViewItem), //mengirim parameter ke child widget melalu konstruktor
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownButton<String> buildDropdownButton() {
    return DropdownButton<String>(
      items: listItem.map((String value) {
        //penambahan di data di riwayat hasil listviewitem menggunakan map
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(), //mapping diubah menjadi bentuk list
      value: _newValue,
      onChanged: dropdownOnChanged, //extract method dibawah
    );
  }

  void dropdownOnChanged(String changeValue) {
    //terima parameter dari onchanged tipenya string
    //changevalue dpt dari dropdownonChanged
    setState(() {
      //mulai build lagii
      _newValue = changeValue;
      perhitunganOngkir(); //behaviour button pada dropdown
      //jadi setelah dropdown diubah akan lgsng tambah ke riwayat
    });
  }
}
