import 'package:flutter/material.dart';

class InputAsal extends StatelessWidget {
  const InputAsal({
    Key key,
    @required this.inputController,
  }) : super(key: key);
  final TextEditingController inputController;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(hintText: "Ketik kata kunci nama kota"),
        controller: inputController,
      ),
    );
  }
}
