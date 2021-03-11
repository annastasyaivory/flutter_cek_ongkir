import 'package:flutter/material.dart';
import 'inputTujuan.dart';
import 'inputAsal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController inputController = new TextEditingController();
  TextEditingController inputController2 = new TextEditingController();

  String _inputUserAsal = "";
  String _inputUserTujuan = "";
  // String _pos = "";
  // String _tiki = "";
  // String _jne = "";

  var listItem = ["Pos", "Tiki", "JNE"];
  String _newValue = "Pos";
  String _result = "";

  List<String> listViewItem = List<String>();

  void perhitunganOngkir() {
    setState(() {
      _inputUserAsal = (inputController.text);
      _inputUserTujuan = (inputController2.text);

      if (_inputUserAsal == "Malang") {
        if (_inputUserTujuan == "Korea") {
          if (_newValue == "Pos") {
            _result = "Rp 303.418,00";
          } else if (_newValue == "Tiki") {
            _result = "Rp 374.946,00";
          } else if (_newValue == "JNE") {
            _result = "Rp 418.209,00";
          }
        } else if (_inputUserTujuan == "Singapore") {
          if (_newValue == "Pos") {
            _result = "Rp 268.260,00";
          } else if (_newValue == "Tiki") {
            _result = "Rp 144.210,00";
          } else if (_newValue == "JNE") {
            _result = "Rp 173.052,00";
          }
        } else if (_inputUserTujuan == "Malaysia") {
          if (_newValue == "Pos") {
            _result = "Rp 279.218,00";
          } else if (_newValue == "Tiki") {
            _result = "Rp 324.472,50";
          } else if (_newValue == "JNE") {
            _result = "Rp 360.525,00";
          }
        }
      }

      if (_inputUserAsal == "Jakarta") {
        if (_inputUserTujuan == "Korea") {
          if (_newValue == "Pos") {
            _result = "Rp 300.464,00";
          } else if (_newValue == "Tiki") {
            _result = "Rp 374.946,00";
          } else if (_newValue == "JNE") {
            _result = "Rp 418.209,00";
          }
        } else if (_inputUserTujuan == "Singapore") {
          if (_newValue == "Pos") {
            _result = "Rp 268.260,00";
          } else if (_newValue == "Tiki") {
            _result = "Rp 144.210,00";
          } else if (_newValue == "JNE") {
            _result = "Rp 173.052,00";
          }
        } else if (_inputUserTujuan == "Malaysia") {
          if (_newValue == "Pos") {
            _result = "Rp 279.218,00";
          } else if (_newValue == "Tiki") {
            _result = "Rp 324.472,50";
          } else if (_newValue == "JNE") {
            _result = "Rp 360.525,00";
          }
        }
      }

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
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Cek Ongkir Internasional"),
          backgroundColor: Colors.black,
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          color: Colors.grey[300],
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Asal",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              InputAsal(inputController: inputController),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Tujuan",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              InputTujuan(inputController2: inputController2),
            ],
          ),
        ),
      ),
    );
  }

  DropdownButton<String> buildDropdownButton() {
    return DropdownButton<String>(
      items: listItem.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: _newValue,
      onChanged: dropdownOnChanged,
    );
  }

  void dropdownOnChanged(String changeValue) {
    setState(() {
      _newValue = changeValue;
      perhitunganOngkir();
    });
  }
}
