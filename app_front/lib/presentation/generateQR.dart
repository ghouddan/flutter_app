import 'package:flutter/material.dart';

class GenerateQRPage extends StatelessWidget {
  final List<String> fieldsOfStudy = ['Computer Science', 'Software Engineering', 'Other Field'];
  final List<String> modules = ['Module 1', 'Module 2', 'Module 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Image.asset(
                    'assets/image/QR_code_image.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 17.0),
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'QR Code Information',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Date',
                          hintText: 'Enter the date',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Professor',
                          hintText: 'Enter the professor',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Field of Study',
                          hintText: 'Select a field of study',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                        items: fieldsOfStudy.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          // Handle onChanged event
                        },
                      ),
                      SizedBox(height: 16.0),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Module',
                          hintText: 'Select a module',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                        items: modules.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          // Handle onChanged event
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            onPressed: () {
              // Implement QR code generation functionality
            },
            label: Text(
              'Generate',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            icon: Icon(Icons.qr_code),
            backgroundColor: Colors.blue[700],
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              print('mail taped');
            },
            child: Image.asset(
              'assets/image/gmail.png',
              height:40,
              width: 40,
              ),// Replace icon1 with your desired icon
            backgroundColor: Color.fromARGB(255, 191, 221, 192), // Replace with desired color
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              print('watsapp taped');
            },
            child: Image.asset(
              'assets/image/whatsapp.png',
               height:40,
               width: 40,
              ), 
            backgroundColor: const Color.fromARGB(255, 230, 164, 66), 
          ),
          SizedBox(width: 20),
          
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
