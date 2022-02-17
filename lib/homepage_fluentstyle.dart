import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_windows_app_1/secondpage_fluentstyle.dart';
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
        alignment: Alignment.center,
        color: Colors.teal,
        height: 50,
        child: Text(
          "This is Header",
          style: GoogleFonts.poppins(
            color: Colors.white,
          ),
        ),
      ),
      content: Container(
        alignment: Alignment.center,
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return material.SelectableText(
                "$index. Hai",
                style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              );
            }),
      ),
      bottomBar: Container(
        color: Colors.red,
        height: 50,
        alignment: Alignment.center,
        child: TextButton(
          onPressed: () {
            // Get.to();
            Navigator.push(
              context,
              material.MaterialPageRoute(
                builder: (context) => const SecondPageFluentStyle(),
              ),
            );
          },
          child: Text(
            "Go To Second Page",
            style: GoogleFonts.poppins(
              // fontSize: 15.sp,
              fontSize: 15,
              // fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          style: ButtonStyle(
            // backgroundColor: ButtonState.all<Color>(Colors.white),
            foregroundColor: ButtonState.all<Color>(Colors.white),
            // textStyle: ButtonState.all<TextStyle>(
            //   GoogleFonts.poppins(
            //     fontSize: 15,
            //     // fontWeight: FontWeight.w700,
            //     color: Colors.white,
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
