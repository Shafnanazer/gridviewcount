import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';
void main(){
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Myapp()
      )));
}
class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>MyappState();


}

class MyappState extends State<Myapp> {
  @override
  void initState() {
         Timer(Duration(seconds: 5), () {
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
         });
    super.initState();
  }
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

