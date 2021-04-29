import 'package:flutter/material.dart';

class CustomPunchIn extends StatefulWidget {
  @override
  _CustomPunchIn createState() => _CustomPunchIn();
}

class _CustomPunchIn extends State<CustomPunchIn> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          "Punch In",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
