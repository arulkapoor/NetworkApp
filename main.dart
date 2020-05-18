import 'package:flutter/material.dart';
import 'SocialIcons_icons.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final title = 'Tree';
   

    return MaterialApp(
      title: title,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.tealAccent[400],
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          children: List.generate(60, (index) {
            return Stack(
                  children:<Widget>[ Container(
                
                  padding: EdgeInsets.fromLTRB(5, 15, 5, 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueGrey[900],
                    /*boxShadow: [
                           BoxShadow(
                               color: Colors.tealAccent[400],
                               //offset: const Offset(3.0, 3.0),
                               blurRadius: 0.25,
                               spreadRadius: 0.25,
                           )
                         ],*/
                  ),
                  
                  margin: EdgeInsets.all(5),
      
                  
              ),
              Container(
                  constraints: BoxConstraints(
                    maxHeight: 60,
                  ),
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)), 
                    color: Colors.black45,
                  ),
                  //padding: EdgeInsets.fromLTRB(5, 15, 5, 15),
                  margin: EdgeInsets.all(5),
              ),
              
  
                Align(
                     alignment: Alignment(0,-0.8),
                     child: 
                         Container(
                         padding: EdgeInsets.all(2),
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             color: Colors.tealAccent[400],
                             boxShadow: [
                               BoxShadow(
                                   color: Colors.tealAccent[400],
                                   //offset: const Offset(3.0, 3.0),
                                   blurRadius: 1.0,
                                   spreadRadius: 1.0,
                               )
                             ],
                           ),
                   
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/huid_profile_photo.jpg'),
                              radius: 35,


                          ),
                          
                         
                 ),
                 ), 
                Align(
                   alignment: Alignment(0, -0.2),
                   child: Text(
                    'Arul Kapoor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                   ),

                 ),  

                  Align(
                   alignment: Alignment(0,0.05),
                   child: Row(
                    children: <Widget>[
                      Spacer(flex: 5),
                      Icon(
                        SocialIcons.briefcase,
                        size: 10,
                        color: Colors.white,
                        ),
                        Spacer(),
                    Text(
                    'Software Engineer at Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                     
                    ),
                   ),
                   Spacer(flex: 5),
                    ],
                   ),

                 ),
                Align(
                   alignment: Alignment(0,0.2),
                   child: Row(
                    children: <Widget>[
                      Spacer(flex: 10),
                      Icon(
                        SocialIcons.map_pin,
                        size: 10,
                        color: Colors.white,
                        ),
                        Spacer(),
                    Text(
                    'San Francisco, CA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                     
                    ),
                   ),
                   Spacer(flex: 10),
                    ],
                   ),

                 ),
                 Align(
                  alignment: Alignment(0,0.6),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "3 SHARED GROUPS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:10,
                      ),
                    ),


                 ),
                 ),
                
                       
                Align(
                      alignment: Alignment(-1,0.9),
                      child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Spacer(),
                           Icon(
                                SocialIcons.facebook_f,
                                color: Colors.tealAccent[400],
                                size: 15,
                            ),
                           
                            Spacer(),
                            Icon(
                                  SocialIcons.instagram,
                                  size: 15,
                                  color: Colors.tealAccent[400],
                                  ),
                            Spacer(),
                            Icon(
                                  SocialIcons.linkedin_in,
                                  size: 15,
                                  color: Colors.tealAccent[400],
                                  ),
                            Spacer(flex: 10),
                          ]),
                      ),

                ]);
          })
        ),
      ),
    );
  }
}