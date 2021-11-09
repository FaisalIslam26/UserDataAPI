import 'package:flutter/material.dart';
import 'package:screen1/screen_one.dart';

class ScreenThree extends StatelessWidget {
  static final String path = "ScreenThree";
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Three"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, ScreenOne.path);
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
