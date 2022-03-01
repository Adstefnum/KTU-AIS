import 'package:flutter/material.dart';

class DrawerClass extends StatelessWidget{
   const DrawerClass({Key? key}) : super(key: key);
   Widget drawerBtn(String text, icon){
    return ListTile(
      title:Text(text),
      leading: Icon(icon),
      
    );
  }
  @override
Widget build(BuildContext context){
  return Drawer(
      child: ListView(
        children: <Widget>[
      Row(children:<Widget>[
    const  Icon(Icons.account_circle_rounded,size: 100.0,),
   Column( children: const <Widget> [
            
       Text("E1275"),
       SizedBox(height:5.0),
         Text("CGPA: 9.2"),
   ])
      ],) ,
       Container(
                       padding: const EdgeInsets.only(left:10.0),
                       child:const Text("Stephen Oluwabukunmi Adesina")),
        const Divider(height:5.0, color: Colors.purple ),
          drawerBtn("Standard",Icons.assignment),
          drawerBtn("Scientific",Icons.change_history),
          drawerBtn("Programmer",Icons.code),
          drawerBtn("Date",Icons.calendar_today),
          drawerBtn("Converter",Icons.compare_arrows),
          drawerBtn("Settings",Icons.settings),
          drawerBtn("Dark Mode",Icons.dark_mode)
        ]),
  );
}}
