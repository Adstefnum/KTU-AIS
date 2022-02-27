import 'package:flutter/material.dart';

class MyInputBox extends StatelessWidget{
        const MyInputBox({Key? key}): super(key:key);

Widget _inputBox( bool _obscure, String text){
                    return TextField(
                        obscureText: _obscure,
                        controller: TextEditingController(),
                        decoration:InputDecoration(
                        labelText: text,
                        labelStyle: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                        )
                        )

                      );}
        @override
        Widget build(BuildContext context){
                return Column( children: <Widget>[
                    
                        _inputBox(false, 'Username'),
                        _inputBox(true, 'Password'),
                ],

                                ) ;
        }
}


 


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
          drawerBtn("Standard",Icons.assignment),
          drawerBtn("Scientific",Icons.change_history),
          drawerBtn("Programmer",Icons.code),
          drawerBtn("Date",Icons.calendar_today),
          drawerBtn("Converter",Icons.compare_arrows),
          drawerBtn("Finance",Icons.account_balance_wallet),
        ]),
  );
}}
