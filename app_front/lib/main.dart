//import 'package:app_front/presentation/notification.dart';
//import 'package:app_front/presentation/login.dart';
import 'package:app_front/presentation/login.dart';
import 'package:flutter/material.dart';
 //import  'presentation/login.dart';
//import  'presentation/notification.dart';

void main()
{
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //scrollBehavior: MyCustomScrollBehavior(),
      title: 'login app',
      home:Login(),

    );
  }
}