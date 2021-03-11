import 'package:flutter/material.dart';

class InputTujuan extends StatelessWidget {
  const InputTujuan({
    Key key,
    @required this.inputController2,
  }) : super(key: key);
  final TextEditingController inputController2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(hintText: "Ketik kata kunci nama negara"),
        controller: inputController2,
      ),
    );
  }
}
