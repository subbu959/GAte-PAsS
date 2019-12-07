import 'package:flutter/material.dart';
class signup_screen extends StatefulWidget{
  @override
  signup_screenstate createState() => signup_screenstate();
  }
  
  class signup_screenstate extends State<signup_screen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            Image.asset('images/logo.png',height: 150,width: 250,),
                 Text('Gate Pass',style:TextStyle(fontSize: 35,)),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email ID',
                filled: true,
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
            SizedBox(height: 12.0,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Re-Type Password',
                filled: true,
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('SignUp'),
                  onPressed: (){
                  },
                ),
                ],
            )
          
                ],
        ),
      ),
    );
  }
}