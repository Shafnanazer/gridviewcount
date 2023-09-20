import'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: sample(),));
}

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text("My App"),),
        body: Container(color:Colors.cyan,
          child: Center(
            child: Text("Welcome to flutter", style: TextStyle(fontSize: 30,
                color: Colors.red[900],
                fontStyle: FontStyle.italic,
                fontWeight:FontWeight.w600,),
                ),
          ),
        )


    );
  }


}