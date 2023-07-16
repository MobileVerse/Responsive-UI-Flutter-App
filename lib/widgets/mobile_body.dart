import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        title: Text(
          "M O B I L E",
          style: GoogleFonts.robotoSlab(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xffffffff),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          // top container
          Padding(
            padding: EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.deepPurple[500],
              ),
            ),
          ),

          // all other bottom containers
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    height: 120,
                    color: Colors.deepPurple[400],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
