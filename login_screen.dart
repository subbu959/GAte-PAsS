import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gate_pass1/app_screens/signup_screen.dart';
class login_screen extends StatefulWidget{
  @override
  login_screenstate createState() => login_screenstate();
  }
  
  class login_screenstate extends State<login_screen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 30.0,),
            Column(
               children:<Widget>[
                 Image.asset('images/logo.png',height: 150,width: 250,),
                 Text('Gate Pass',style:TextStyle(fontSize: 35,)),
                 SizedBox(height: 5.0,),
                ],
            ),
            SizedBox(height: 12.0,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email ID',
                filled: true,
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 12.0,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('Login'),
                  onPressed: (){},
                ),
                ],
            ),
            ButtonBar(
              children: <Widget>[
                Text("New User?"),
                RaisedButton(
                  child: Text('SignUp'),
                  onPressed: (){
                    tosignup(context);
                                                   
                                      },
                                    ),
                                    ],
                                )
                              
                                ],
                            ),
                          ),
                        );
                      }
                    
                      void tosignup(BuildContext context) {
                      
            Navigator.push(context, MaterialPageRoute(builder: (context)=>signup_screen()));
          
                      }
  
}