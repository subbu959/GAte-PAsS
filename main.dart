import 'package:flutter/material.dart';
import './app_screens/flash_screen.dart';
void main()=>runApp(new _flutterone());
    

class _flutterone extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: flash_screen(),
          
      );
  }



}
