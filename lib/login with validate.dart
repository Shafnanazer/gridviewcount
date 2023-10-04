import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Login_with_valid(),
  debugShowCheckedModeBanner: false,));
}
class Login_with_valid extends StatefulWidget {


  @override
  State<StatefulWidget> createState() =>Loginvalidstate();

}

class Loginvalidstate extends State<Login_with_valid> {
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login with validate"),),


      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text("Login page", style: TextStyle(fontSize: 40, color: Colors.red),),
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 6),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Username",
                    hintText: "Username",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),

                  ),

                ),
              ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextFormField(

                  obscuringCharacter: "*",
                  obscureText: showpass,
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
                    labelText: "Password",
                    hintText: "Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),

                  ),

              ),
               ),
              ElevatedButton(onPressed: (){}, child: Text("Login")),
              TextButton(onPressed: (){ }, child: Text("create a new user")),



            ],
          ),
        ),
      ),
    );
  }
}

