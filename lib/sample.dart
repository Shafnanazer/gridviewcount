import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
            home: sample(),
          )));
}

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Container(
          color: Colors.cyan,
          child: Padding(
            padding: const EdgeInsets.only(top: 300,left: 50,right: 50),
            child: Center(
            child: Column(
              children: [
                Center(child: Image(image: AssetImage("images/Simpleicons.png"),height: 100,width: 100)),
                Text(
                  "Welcome to flutter",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red[900],
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
