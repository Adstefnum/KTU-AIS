import 'package:flutter/material.dart';
import 'widgets/drawer.dart';
import 'notifs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
@override
HomePageState createState() => HomePageState();

}


class HomePageState extends State<HomePage> {
   @override
        Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
    IconButton(
      icon:const  Icon(
        Icons.notifications,
        color: Colors.white,
      ),
      onPressed: () {
        
    Route route = MaterialPageRoute(builder: (context) =>const NotifsPage());
                Navigator.push(context,route);
      },
    )
  ],
        title: const Text("Kaunas University of Technology"),
        centerTitle: true,
        backgroundColor: Colors.green,   
                      ), 
      drawer:  const DrawerClass(),       
      body: Column()
    );
        }
}


