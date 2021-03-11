import 'package:flutter/material.dart';

class Periksa extends StatelessWidget {
  final Function periksaHandler;
  Periksa({Key key, @required this.periksaHandler});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
      width: double.infinity,
      height: 50,
      child: RaisedButton(
        onPressed: periksaHandler,
        color: Colors.grey[700],
        textColor: Colors.white,
        child: Text("Periksa"),
      ),
    );
  }
}
