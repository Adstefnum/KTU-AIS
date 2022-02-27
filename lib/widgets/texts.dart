import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget{
 const MyTextWidget({Key? key}): super(key:key);
 Widget _welcometextWidget(String text)
 {
return Container(
                  padding:const  EdgeInsets.fromLTRB(15.0,50.0,0.0,0.0),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontSize: 70.0, fontWeight: FontWeight.bold)
                  )
                );
 }

 @override
Widget build(BuildContext context){
return Column(
            children: <Widget>[

                _welcometextWidget('Welcome'),
                _welcometextWidget('Back'),
                _welcometextWidget('.'),

                
            ]
);
}}

