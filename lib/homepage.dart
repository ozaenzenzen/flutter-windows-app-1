import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: GoogleFonts.poppins(),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "Ini Material Style",
          style: GoogleFonts.poppins(),
        ),
      ),
    );
  }
}
