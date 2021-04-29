import 'package:flutter/material.dart';
import 'Custom Folder/CustomChart.dart';
import 'Custom Folder/CustomDashboard.dart';
import 'Custom Folder/CustomPunchIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            "CDVI",
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.notifications_active_rounded),
              color: Colors.blue,
            ),
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.account_circle_sharp),
              color: Colors.black87,
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              _index == 0
                  ? CustomDashboard()
                  : (_index == 1 ? CustomPunchIn() : CustomChart()),
              Padding(
                padding: EdgeInsets.only(
                    top: 10.0,
                    left: 18,
                    bottom: MediaQuery.of(context).padding.bottom),
                child: Row(
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                _index == 0 ? Colors.blue : Colors.transparent,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          child: Row(
                            children: [
                              Icon(Icons.dashboard,
                                  color:
                                      _index == 0 ? Colors.white : Colors.blue),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  _index == 0 ? "Dashboard" : "",
                                  style: TextStyle(
                                      color: _index == 0
                                          ? Colors.white
                                          : Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                _index == 1 ? Colors.blue : Colors.transparent,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          child: Row(
                            children: [
                              Icon(Icons.timelapse,
                                  color:
                                      _index == 1 ? Colors.white : Colors.blue),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  _index == 1 ? "Push In" : "",
                                  style: TextStyle(
                                      color: _index == 1
                                          ? Colors.white
                                          : Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 2;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                _index == 2 ? Colors.blue : Colors.transparent,
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15.0),
                          child: Row(
                            children: [
                              Icon(Icons.data_usage,
                                  color:
                                      _index == 2 ? Colors.white : Colors.blue),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  _index == 2 ? "Chart" : "",
                                  style: TextStyle(
                                      color: _index == 2
                                          ? Colors.white
                                          : Colors.blue),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
