import 'package:flutter/material.dart';
import 'widgets/appbar.dart';
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
        appBar:MyAppBar(),      
      drawer:  const DrawerClass(),       
      body: ListView(

      )
    );
        }
}


