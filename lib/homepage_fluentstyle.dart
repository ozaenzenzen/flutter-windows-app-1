import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageFluentStyle extends StatefulWidget {
  const HomePageFluentStyle({Key? key}) : super(key: key);

  @override
  _HomePageFluentStyleState createState() => _HomePageFluentStyleState();
}

class _HomePageFluentStyleState extends State<HomePageFluentStyle> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: Container(
        color: Colors.teal,
        height: 30.h,
      ),
      content: Container(
        alignment: Alignment.center,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return material.SelectableText(
              "$index. Hai",
              style: GoogleFonts.poppins(
                fontSize: 40.sp,
                fontWeight: FontWeight.w700
              ),
            );
          }
        ),
      ),
      bottomBar: Container(
        color: Colors.red,
        height: 30,
      ),
    );
  }
}
