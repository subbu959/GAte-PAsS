import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gate_pass1/app_screens/home_screen.dart';
import 'package:gate_pass1/app_screens/signup_screen.dart';
import 'package:gate_pass1/Animation/FadeAnimation.dart';
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
            SizedBox(height: 20.0,),
            Column(
               children:<Widget>[
                 FadeAnimation(0.25,
                    Image.asset('images/logo.png',height: 150,width: 250,),
                    ),
                    FadeAnimation(0.5,                 
                    Text('Gate Pass',style:TextStyle(fontSize: 25,)),
                    ),
                 SizedBox(height: 5.0,),
                 
                    FadeAnimation(0.5,                 
                    Text('Login',style:TextStyle(fontSize: 25,)),
                    ),
                ],
            ),
            SizedBox(height: 12.0,),
            FadeAnimation(0.75,   
              new Container(
                height: 50.0,
            child: TextField(
              decoration:
              
               InputDecoration(
                labelText: 'Email ID',
                filled: true,
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
             
              ),
            ),
            )
            ),
            SizedBox(height: 12.0,),
            FadeAnimation(1,
            Container(
              height:50.0,
            child:TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
              obscureText: true,
            ),
            )
            ),
            ButtonBar(
              children: <Widget>[
                FadeAnimation(1.25,
                RaisedButton(
                  child: Text('Login'),
                  
                  onPressed: (){
                    tohome();
                                      },
                                      shape: RoundedRectangleBorder(
                                                                borderRadius: new BorderRadius.circular(20.0)
                                                              )
                                    ),
                                    ),
                                    ],
                                ),
                                ButtonBar(
                                  children: <Widget>[
                                    FadeAnimation(1.5,
                                    Text("New User?"),
                                    ),
                                    FadeAnimation(1.75,
                                    RaisedButton(
                                      child: Text('SignUp'),
                                      onPressed: (){
                                        tosignup(context);
                                                    },
                                                    shape: RoundedRectangleBorder(
                                                                borderRadius: new BorderRadius.circular(20.0)
                                                              )
                                                        ),
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
                    
                      void tohome() {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>home_screen()));
                              
                      }
  
}
