import 'package:flutter/material.dart';
import 'package:untitled1/homepage.dart';

import 'login with validate.dart';
void main() {
  runApp(
      MaterialApp(home:Login_with_valid(),
          debugShowCheckedModeBanner: false
      )
  );
  }
class Login_With_valid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>_LoginvalidateState();

}

class _LoginvalidateState extends State<Login_With_valid>{
  GlobalKey<FormState> formakey=GlobalKey();
  bool showpass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login with validate"),),

        body: SingleChildScrollView(
          child:Center(
          child: Form(
           key:formakey,
            child: Column(
              children: [
                SizedBox(height: 50,),
                Text("Login Page",style: TextStyle(fontSize: 40,color: Colors.red),),
                  Padding(
                  padding: const EdgeInsets.only(top: 50,right: 60),
                  child: TextFormField(
                    decoration:InputDecoration(
                     prefixIcon: Icon(Icons.person),
                      labelText: "username" ,
                      hintText: "username" ,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),

                    ),
                    validator: (uname){
                      if(uname!.isEmpty || !uname.contains('@') || !uname.contains('.')){
                    return "please enter valid username";
                      }
                      else{
                         return null;
                          }
                      },
                  ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 50,left: 20,right: 20,bottom: 60),
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
                        },icon: Icon(showpass == true ? Icons.visibility_off : Icons.visibility),),
                          labelText: "password",
                          hintText: "password",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),

                       ),
                       validator:(password){
                       if(password!.isEmpty || password.length<6){
                         return "please enter valid password";
                          }
                          else{
                          return null;
                              }
                         },
                ),
                  ),


                ElevatedButton(onPressed: (){
                 final valid=formakey.currentState!.validate();
                  if(valid){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                }
                  else{

                  }
                   return null;
                 },
                   child: Text("Login"),style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.red,),),
                  SizedBox(height: 20,),
                  TextButton(onPressed: (){


                }, child: Text("create a new user",))


             ]
            ),
             ),
            ),
          ),
         );
         }
        }













