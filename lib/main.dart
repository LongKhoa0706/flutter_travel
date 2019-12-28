import 'package:flutter/material.dart';
import 'package:travelist/account/register/register.dart';
import 'package:travelist/account/resetpass/resetpass.dart';
import 'package:travelist/account/signin/signin.dart';
import 'package:travelist/home/dashboard.dart';
import 'package:travelist/introduce.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ('/'),
      routes: <String,WidgetBuilder>{
        '/':(context)=> Introduce(),
        '/signin':(context)=>SignIn(),
        '/resetpass':(context)=>ResetPass(),
        '/register':(context)=>Register(),
        '/dashboard':(context)=>DashBoard(),
      },
    );
  }
}
