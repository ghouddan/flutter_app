
import 'package:flutter/material.dart';
import 'package:app_front/presentation/Profile.dart';
import 'package:app_front/presentation/notification.dart';


class QR_scaner extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.purple],
            begin:  Alignment.topLeft,
            end:Alignment.bottomRight,
            ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
        children: <Widget>[
          Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween, 
  crossAxisAlignment: CrossAxisAlignment.center,  children: [
    Padding(
      // profile button
      padding: const EdgeInsets.only(top: 50), 
      child: TextButton.icon(
        icon: const Icon(
          Icons.person,
          size: 40,
        ),
        onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)  => UserProfilePage()));
           //print('true');
        },
        label:const  Text(
          'Profile',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(98, 71, 48, 174),
        ),
      ),
    ),
    // SizedBox(width: 170),
    GestureDetector(
      onTap: () => { 
        //Navigator.push(context, MaterialPageRoute(builder: (context) =>Notification()))
        Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage() ))
        //print("true"),
        },
      child: const Padding(
          padding: EdgeInsets.only(top: 40), 
          child: Icon(
           Icons.schedule,
           size: 60,
          color: Color.fromARGB(255, 92, 49, 153),
  ),
)
    ),
  ],

),
          Container(
            margin:const  EdgeInsets.only(top: 150, bottom: 0),
          
            child:const Text(
              'Scan the QR Code',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
              ),
            ),
          ),
          //on tap function 
          Container(
  decoration: BoxDecoration(
    border: Border.all(
      color: Colors.black,
      width: 2.0,
    ),
    borderRadius: BorderRadius.circular(10),
  ),
  child: GestureDetector(
    onTap: () {
      print('Image tapped!');
    },
    child: Image.asset(
      'assets/image/QR_code_image.png',
      height: 300,
      width: 300,
    ),
  ),
),

          Container(
            alignment: Alignment.center,
            width: 300,
            padding: EdgeInsets.only(right: 10),
            margin: EdgeInsets.only(left:40 ),
            decoration: BoxDecoration(),
              child: Text(
              'The QR code will be automatically detected when you position it between the guide lines',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  
              ),
            ),
          )
        ]
      ),
      ),
    );
  }



}