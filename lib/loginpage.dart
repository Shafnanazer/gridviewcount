import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Loginpage(),
          )));
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?cs=srgb&dl=pexels-miguel-%C3%A1-padri%C3%B1%C3%A1n-255379.jpg&fm=jpg"), fit: BoxFit.fill)

        //     gradient: LinearGradient(
        //         begin: Alignment.topCenter,
        //         end: Alignment.centerLeft,
        //         colors: [Colors.red.shade800, Colors.green, Colors.yellow]
        ),

        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image(
                image: AssetImage(
                  "images/Simpleicons.png",
                ),
                height: 100,
                width: 100,
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Username",
                      border: OutlineInputBorder(
                           borderSide: BorderSide(width: 20,color: Colors.deepOrange),
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                child: TextField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            if (showpass) {
                              showpass = false;
                            }
                            else {
                              showpass = true;
                            }
                          });
                        }, icon: Icon(showpass == true ? Icons.visibility_off : Icons.visibility),),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: () {}, child: Text("Login"), style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),),
              SizedBox(height: 30,),
              TextButton(onPressed: () {}, child: Text("create a new user", style: GoogleFonts.b612Mono(
                        fontSize: 20,
                        color: Colors.yellow,
                        fontWeight: FontWeight.w400,
                        textStyle: Theme.of(context).textTheme.titleMedium
              ),))
            ],
          ),
        ),
      ),
    );
  }
}
