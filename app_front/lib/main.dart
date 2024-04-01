import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_front/presentation/login.dart';
//import 'package:app_front/presentation/NotificationPage.dart'; // Import your updated NotificationPage
import 'package:app_front/presentation/PresenceState.dart'; // Import your PresenceState class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PresenceState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Your App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Login(),
      ),
    );
  }
}
