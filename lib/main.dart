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
}
