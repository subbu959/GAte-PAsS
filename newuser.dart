import 'package:flutter/material.dart';
import 'package:gate_pass1/Animation/FadeAnimation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gate_pass1/app_screens/signup_screen.dart';
import 'home_screen.dart';
import 'package:gate_pass1/database_helper.dart';
String name;
class newuser extends StatefulWidget{
  @override
  newuserstate createState() => newuserstate();
  }
  
  class newuserstate extends State<newuser>{
   final DbStudentManager dbmanager = new DbStudentManager();

  final _nameController = TextEditingController();
  final _timeController = TextEditingController();
  final _companyController = TextEditingController();
  final _purposeController = TextEditingController();
  final _locationController = TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  Entry entry;
  List<Entry> list; 
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                   FadeAnimation(0.25,
            Image.asset('images/logo.png',height: 140,width: 240,),
            ),
            FadeAnimation(0.5,
                 Text('Gate Pass',style:TextStyle(fontSize: 30,)),
            ),
            SizedBox(height: 15,),
            FadeAnimation(0.5,
                 Text('Entered Visitor',style:TextStyle(fontSize: 20,)),
            ),
                  TextFormField(
                    decoration: new InputDecoration(labelText: 'Name of the visitor'),
                    controller: _nameController,
                    validator: (val) =>
                        val.isNotEmpty ? null : 'Name Should Not Be empty',
                  ),
                  TextFormField(
                    decoration: new InputDecoration(labelText: 'Time Of visit'),
                    controller: _timeController,
                    validator: (val) =>
                        val.isNotEmpty ? null : 'Time Should Not Be empty',
                  ),
                  TextFormField(
                    decoration: new InputDecoration(labelText: 'Company'),
                    controller: _companyController,
                    validator: (val) =>
                        val.isNotEmpty ? null : 'Company name Should Not Be empty',
                  ),TextFormField(
                    decoration: new InputDecoration(labelText: 'Purpose'),
                    controller: _purposeController,
                    validator: (val) =>
                        val.isNotEmpty ? null : 'Purpose Should Not Be empty',
                  ),TextFormField(
                    decoration: new InputDecoration(labelText: 'Location of the Visitor'),
                    controller: _locationController,
                    validator: (val) =>
                        val.isNotEmpty ? null : 'Location Should Not Be empty',
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blueAccent,
                    child: Container(
                        width: width * 0.9,
                        child: Text(
                          'Add',
                          textAlign: TextAlign.center,
                        )),
                    onPressed: () {
                      _addvisitor(context);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>home_screen()));
                    },
                  ),
               ],
              ),
            ),
          ),
        ],
      ),
    );    
  }

                                    void _addvisitor(BuildContext context) {
                          if(_formKey.currentState.validate()){
                            if(entry==null) {
                              Entry st = new Entry(name: _nameController.text, time: _timeController.text,company: _companyController.text,purpose: _purposeController.text,location: _locationController.text);
                              dbmanager.insertStudent(st).then((id)=>{
                                          print('Visitor Added to Db ${id}')
                              });
                            } else {
                              entry.name = _nameController.text;
                              entry.time = _timeController.text;
                              entry.company = _companyController.text;
                              entry.purpose = _purposeController.text;
                              entry.location = _locationController.text;
                            }
                          }
                        }
                      }
                    