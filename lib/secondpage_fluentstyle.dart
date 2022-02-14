import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;

class SecondPageFluentStyle extends StatefulWidget {
  const SecondPageFluentStyle({Key? key}) : super(key: key);

  @override
  _SecondPageFluentStyleState createState() => _SecondPageFluentStyleState();
}

class _SecondPageFluentStyleState extends State<SecondPageFluentStyle> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: Container(
        // padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.teal,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              child: TextButton(
                child: material.Icon(
                  material.Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      content: Container(
        alignment: Alignment.center,
        child: Text("This is the second page"),
      ),
    );
  }
}
