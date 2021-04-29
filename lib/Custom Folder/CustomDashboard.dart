import 'package:flutter/material.dart';

class CustomDashboard extends StatefulWidget {
  @override
  _CustomDashboard createState() => _CustomDashboard();
}

class _CustomDashboard extends State<CustomDashboard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          height: 200,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Card(
                          child: Text("10"),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Image.asset(
                            'assets/images/overtime.png',
                          )
                          //     child: Image.asset("assets/images/overtime.png"),
                          )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
