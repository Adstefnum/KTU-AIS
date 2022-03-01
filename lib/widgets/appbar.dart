import 'package:flutter/material.dart';
import '../notifs.dart';


//class MyAppBar extends StatefulWidget{
//MyAppBar({Key? key}):super(key:key);
//
//@override 
//MyAppBarState createState() => MyAppBarState();
//}

class MyAppBar extends AppBar{
MyAppBar():super(
  //      @override
//Widget build(BuildContext context){

        actions: <Widget>[
    IconButton(
      icon:const  Icon(
        Icons.notifications,
        color: Colors.white,
      ),
      onPressed: () {
        
//    Route route = MaterialPageRoute(builder: (context) =>const NotifsPage());
//                Navigator.push(context,route);
      },
    )
  ],
        title: const Text("Kaunas University of Technology"),
        centerTitle: true,
        backgroundColor: Colors.purple,   
                      ); 

}

