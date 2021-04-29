import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          //   color: Colors.white70,
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Card(
                  color: const Color(0xFFFDFEFE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Card(
                              color: const Color(0xFFFADBD8),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 10, left: 10, top: 5, bottom: 5),
                                child: Text("20",
                                    style: GoogleFonts.lato(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 0.0),
                          child: Image.asset('assets/images/goolge.jpg',
                              width: 200, height: 200)
                          // child: Icon(
                          //   Icons.access_time_outlined,
                          //   size: 80,
                          //   color: const Color(0xFFE5E7E9),
                          // ),
                          ),
                      Padding(
                        padding: EdgeInsets.only(top: 0.0, bottom: 10.0),
                        child: Center(
                          child: Text(
                            'Overtime',
                            style: GoogleFonts.lato(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              color: const Color(0xFF273746),
                            ),
                          ),
                        ),
                      ),
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
