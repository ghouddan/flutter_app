import 'package:app_front/presentation/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserProfilePage extends StatelessWidget {
  // Define variables to hold user information
  final String firstName = "John";
  final String lastName = "Doe";
  final String email = "john.doe@example.com";
  final String cin = "123456789";
  final String dateOfBirth = "January 1, 1990";
  final String phoneNumber = "+1234567890";
  final String address = "123 Main St, City, Country";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/image/profile_image.jpeg',
                    ),

                    //fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Information',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'First name: $firstName',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: Text(
                              'Last name: $lastName',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Email: $email',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[800],
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'CIN: $cin',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[800],
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Date of birth: $dateOfBirth',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[800],
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Phone number: $phoneNumber',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[800],
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Address: $address',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[800],
                        ),
                      ),
                      // Add more input fields as needed
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'University Information',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'University: EST',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[800],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Field of Study: Computer Science',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[800],
                        ),
                      ),
                      // Add more university information as needed
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Login()));
        },
        label: Text(
          'Log Out',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'poppins',
          ),
        ),
        icon: Icon(Icons.logout),
        backgroundColor: Color.fromARGB(255, 182, 85, 234),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
