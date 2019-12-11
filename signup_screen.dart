import 'package:flutter/material.dart';
import 'package:gate_pass1/Animation/FadeAnimation.dart';
import 'newuser.dart';
import 'package:gate_pass1/database_helper.dart';
class signup_screen extends StatefulWidget{
  @override
  signup_screenstate createState() => signup_screenstate();
  }
  
  class signup_screenstate extends State<signup_screen>{
  @override
  String _email;
  String _password;
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  
  
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
 children: <Widget>[
            SizedBox(height: 20.0,),
            Column(
              children: <Widget>[
            FadeAnimation(0.25,
            Image.asset('images/logo.png',height: 140,width: 240,),
            ),
            FadeAnimation(0.5,
                 Text('Gate Pass',style:TextStyle(fontSize: 30,)),
            ),
            SizedBox(height: 15,),
            FadeAnimation(0.5,
                 Text('Sign-Up',style:TextStyle(fontSize: 30,)),
            ),
            SizedBox(height: 15,),
            FadeAnimation(0.75,
            Container(
              height: 50.0,
            child:TextField(
              controller: myController1,
              decoration: InputDecoration(
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
              height: 50.0,
            child:TextField(
              controller: myController2,
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
             
              ),
              obscureText: true,
            ),
            )
            ),
            SizedBox(height: 12.0,),
            ButtonBar(
              children: <Widget>[
                FadeAnimation(1.5,
                RaisedButton(
                  child: Text('SignUp'),
                  onPressed: (){
                        
                                  },
                                                            shape: RoundedRectangleBorder(
                                                                                      borderRadius: new BorderRadius.circular(20.0)
                                                                                    )
                                          
                                                          ),
                                                          )
                                                          ],
                                                      )
                                                    
                                                          ],
                                                      )
                                           ]
                                                
                                                ),
                                              )
                                              );
                                            }
                        
                                        
                  
}
