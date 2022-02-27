import 'package:flutter/material.dart';
import 'widgets/drawer.dart';

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
        Icons.settings,
        color: Colors.white,
      ),
      onPressed: () {
        // do something
      },
    )
  ],
        title: const Text("Kaunas University of Technology"),
        centerTitle: true,
        backgroundColor: Colors.green,   
                      ), 
      drawer: DrawerClass(),       
      body: Column()
    );
        }
}


