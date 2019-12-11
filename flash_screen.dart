import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gate_pass1/app_screens/login_screen.dart';
import 'package:gate_pass1/Animation/FadeAnimation.dart';

class flash_screen extends StatefulWidget{
  @override
_flash_screenstate createState()=> _flash_screenstate();
}
class _flash_screenstate extends State<flash_screen>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(milliseconds: 3000), 
    () =>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>login_screen())));
  }
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.white,
      body:
      Center(        
       child:Column(
           children:<Widget>[
             SizedBox(height: 90.0,),
             
              FadeAnimation(1,
         Image.asset('images/logo.png',height: 250,width: 300,),
              ),
          FadeAnimation(1.25,    
         Text('Gate Pass',style: TextStyle(fontSize: 45),),
          )
           ]
         )
    ),
  );
  
}
