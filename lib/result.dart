import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required this.result,
  }) : super(key: key);
  final String result;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Ongkos Kirim",
            style: TextStyle(fontSize: 18),
          ),
          Text(
            result,
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
// );
  }
}
