import 'package:app_front/presentation/Scan_QR.dart';
import 'package:app_front/presentation/send_schedule.dart';
import 'package:flutter/material.dart';
//import 'package:app_front/presentation/Scan_QR.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          height: 800,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                width: 400,
                child: Image.asset('assets/image/login_personne.png',
                    fit: BoxFit.contain),
                margin: EdgeInsets.zero,
              ),
              const Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 200,
                height: 30,
                margin: EdgeInsets.only(right: 140),
                alignment: Alignment.topLeft,
                child: Text(
                  'User e-mail',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 12, 1, 1)),
                ),
              ),
              Container(
                width: 350,
                height: 65,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(8, 196, 196, 196), Colors.black],
                  ),
                ),
                child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      alignLabelWithHint: false,
                      hintText: 'E-amil',
                      //labelText: 'E-mail',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: Icon(
                        Icons.person_4_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                      // Icon added here
                    )),
              ),
              Container(
                width: 200,
                height: 30,
                margin: EdgeInsets.only(right: 140),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 12, 1, 1)),
                ),
              ),
              Container(
                width: 350,
                height: 65,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(8, 196, 196, 196), Colors.black],
                  ),
                ),
                child: TextField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        hintText: '*******',
                        //labelText: '******',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Adjust the border radius here
                        ),
                        prefixIcon: Icon(
                          Icons.key,
                          size: 30,
                          color: Colors.black,
                        ))),
              ),
              Container(
                height: 65,
                width: 350,
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(33),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(100, 198, 86, 71),
                        Color.fromARGB(100, 156, 63, 228)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.bottomRight,
                    )),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    onPressed: () {
                      String email = _emailController.text;
                      String password = _passwordController.text;

                      if (email == "ghouddan@gmail.com" &&
                          password == "admin") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QR_scaner()));
                      } else if (email == "admin@gmail.com" &&
                          password == "admin") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SendSchedule()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Wrong Email or Password')));
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
