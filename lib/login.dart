import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'home_page.dart';
import 'widgets/texts.dart';
import 'widgets/input_box.dart';

class LoginUser extends StatefulWidget {
const LoginUser({Key? key}) : super(key: key);
@override
  LoginUserState createState() => LoginUserState();}
  
class LoginUserState extends State<LoginUser>{
final loginEmail = TextEditingController();
final loginPassword = TextEditingController();
bool visible = false;
String msg = ' ';
bool errortextvisibility = false;

  
//   userLogin() async{
//
//  // Showing CircularProgressIndicator.
//  
// setState(() {
//  visible = true ; 
//  }); 
//
//
//  // Getting value from Controller
//  var email = loginEmail.text;
//  var password = loginPassword.text;
//  
//
//  // SERVER API URL
//  var url ='';
//
//  // Starting Web API Call.
//  var response = await http.post(url, body: {'email': email, 'password' : password});
//
//  
//   // If Web call Success than Hide the CircularProgressIndicator.
//  if(response.statusCode == 200){
//  
//     setState(() {
//  visible = false ; 
//  });
//  final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//
//      var endValue = parsed.map<Map>((json) => parsed.fromJson(json)).toList();
//
//      if(endValue == 'Data Matched'){
//    Route route = MaterialPageRoute(builder: (context) => HomePage());
//                Navigator.push(context,route);
//  }
//
//  else{
//
//    errortextvisibility = true;
//    msg = endValue;
//  }
//  }
//}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: <Widget>[
             Stack(
              children: <Widget>[
                          Visibility(
          visible: visible, 
           child: const LinearProgressIndicator()
            
          ),
              Visibility(
            visible: errortextvisibility,
         child:Text(msg,style:const TextStyle(fontSize: 20.0, color: Colors.red)))]),

               Container(
                  padding: const EdgeInsets.only(top:120.0, left:20.0, right:20.0),
                  child: Column(
                    children: <Widget>[
                            Image.asset('assets/images/ktu-logo-en-full.png'),
                            const SizedBox(height:100.0),
                     const MyInputBox(),
                   const SizedBox(height:50.0),
                   Container(
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.purpleAccent,
                          color: Colors.purple,
                          elevation: 7.0,
                          child: GestureDetector( 
                            onTap: () { Route route = MaterialPageRoute(builder: (context) => const HomePage());
                Navigator.push(context,route);/*userLogin()*/},
                            child: const Center(
                              child:  Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'
                                )
                              )
                            ))
                        )
                      ),]
            ),
          )
        ],
      ));}
}




