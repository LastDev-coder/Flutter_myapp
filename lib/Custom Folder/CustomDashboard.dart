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
          child: Card(
            //  clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Card title 1'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
