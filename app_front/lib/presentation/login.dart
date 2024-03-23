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
        child: Stack(
          children: [
            // Dégradé de couleurs en arrière-plan
            Container(
              height: 800,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 18, 17, 17), Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              // height: MediaQuery.of(context).size.height,
              // width: double.infinity,
            ),
            // Conteneur pour l'image de fond (moitié inférieure de l'écran)
            Positioned(
              bottom: 0, // Positionner en bas
              left: 0,
              right: 0,
              child: Container(
                height: 1000,
                // height:
                //     MediaQuery.of(context).size.height / 2, // Moitié inférieure
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Conteneur pour les autres widgets
            Positioned(
              top: 0, // Positionner en haut
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(20), // Ajouter un padding
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        color: Color(0xFFEFEFEF),
                        fontFamily: 'poppins',
                      ),
                    ),
                    SizedBox(height: 20), // Ajouter un espace
                    Container(
                      width: 200,
                      height: 30,
                      margin: EdgeInsets.only(right: 140),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'User e-mail',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFA4A4A4), // Correction de la couleur
                          fontFamily:
                              'Poppins', // Utilisation de la police Poppins
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFC4C4C4),
                            Color(0xFF5E5E5E),
                          ],
                        ),
                      ),
                      child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            alignLabelWithHint: false,
                            hintText: 'E-mail',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors
                                  .black, // Utilisation de la police Poppins
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              size: 30,
                              color: Colors.black,
                            ),
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
                          fontSize: 20,
                          color: Color(0xFFA4A4A4), // Correction de la couleur
                          fontFamily:
                              'Poppins', // Utilisation de la police Poppins
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFC4C4C4),
                            Color(0xFF5E5E5E),
                          ],
                        ),
                      ),
                      child: TextField(
                          obscureText: true,
                          controller: _passwordController,
                          decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: '*******',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors
                                    .black, // Utilisation de la police Poppins
                              ),
                              prefixIcon: Icon(
                                Icons.key_sharp,
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
                              Color(0xFF9C3FE4),
                              Color(0xFFC65647),
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
                              fontFamily: 'poppins',
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
                                  SnackBar(
                                      content:
                                          Text('Wrong Email or Password')));
                            }
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
