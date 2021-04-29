import 'package:flutter/material.dart';

class CustomChart extends StatefulWidget {
  @override
  _CustomChart createState() => _CustomChart();
}

class _CustomChart extends State<CustomChart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          "Chart",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}
