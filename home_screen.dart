import 'package:flutter/material.dart';
import 'package:gate_pass1/Animation/FadeAnimation.dart';
import 'newuser.dart';
import 'package:gate_pass1/database_helper.dart';
class home_screen extends StatefulWidget{
  @override
  home_screenstate createState() => home_screenstate();
  }
  
  class home_screenstate extends State<home_screen>{
  @override
  
  final DbStudentManager dbmanager = new DbStudentManager();
  Entry entry;
  List<Entry> list; 
  int updateIndex;
  
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
            
 children: <Widget>[
    SizedBox(height: 20.0,),
   Container(
              alignment: Alignment.topRight,
            child:FloatingActionButton(
              backgroundColor: Colors.blueGrey,
          
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>newuser()));
                              },
                              child: Icon(Icons.person_add),
                            ),
            ),                
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
                 Text('Entered Visitors',style:TextStyle(fontSize: 20,)),
            ),
            SizedBox(height: 12.0,),
            FutureBuilder(
                    future: dbmanager.getStudentList(),
                    builder: (context,snapshot){
                      if(snapshot.hasData) {
                        list = snapshot.data;
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemCount: list == null ?0 : list.length,
                          itemBuilder: (BuildContext context, int index) {
                           Entry st = list[index];
                           return Card(
                             child: Row(
                               children: <Widget>[
                                 Container(
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       Text('Name: ${st.name}',style: TextStyle(fontSize: 15),),
                                       Text('Time: ${st.time}', style: TextStyle(fontSize: 15, color: Colors.black54),),
                                       Text('Company: ${st.company}', style: TextStyle(fontSize: 15, color: Colors.black54),),
                                       Text('Purpose: ${st.purpose}', style: TextStyle(fontSize: 15, color: Colors.black54),),
                                       Text('Location: ${st.location}', style: TextStyle(fontSize: 15, color: Colors.black54),
                                       
                                       ),
                                     ],
                                   ),
                                 ),

                                
                               ],
                             ),
                           );
                          },

                        );
                      }
                      return new CircularProgressIndicator();
                    },                   
                  )

            
                            ],
                            ),
 ],
 
                        )
                      )
                  );
                  }
                
  }