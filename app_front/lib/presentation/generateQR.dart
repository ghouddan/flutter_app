import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart'; // Import du package pour ouvrir des URLs

class GenerateQRPage extends StatefulWidget {
  @override
  _GenerateQRPageState createState() => _GenerateQRPageState();
}

class _GenerateQRPageState extends State<GenerateQRPage> {
  final List<String> filliere = [
    'Genie civil',
    'Genie informatique',
    'system informatique et reseau'
  ];
  final List<String> module = ['Back-end', 'Front-end', 'Full stack'];
  String qrData = ''; // Variable pour stocker les données du champ de texte
  String professor = ''; // Variable to store Professor
  String? fillieres = ''; // Variable to store Filliere
  String? modules = ''; // Variable to store Module

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
                height: MediaQuery.of(context).size.height * 0.3,
    
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
                        onChanged: (value) {
                          setState(() {
                            qrData =
                                value; // Mettre à jour les données du champ de texte
                          });
                        },
                      ),
                      // SizedBox(height: 16.0),
                      // TextFormField(
                      //   decoration: InputDecoration(
                      //     labelText: 'Professor',
                      //     hintText: 'Enter the professor',
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(6.0),
                      //     ),
                      //   ),
                      //   onChanged: (value) {
                      //     setState(() {
                      //       qrData = value; // Update Professor
                      //     });
                      //   },
                      // ),
                      SizedBox(height: 16.0),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Filliere',
                          hintText: 'Select a filliere',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                        items: filliere.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            fillieres = value; // Update Filliere
                          });
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
                        items: module.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            modules = value; // Update Module
                          });
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
              if (qrData.isNotEmpty) {
                String qrContent = qrData;
                //     "Date: $qrData\nProfessor: $qrData\nFilliere: $fillieres\nModule: $modules";

                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('QR Code Generated'),
                      content: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.width * 0.6,
                        child: QrImageView(
                          data: qrContent,
                        ),
                      ),
                      actions: [
                        Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                onPressed: () {
                                  // Handle the action for the first icon
                                  //_launchURL('https://wa.me/?text=$qrData');
                                },
                                icon: Icon(Icons.telegram),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                onPressed: () {
                                  // Handle the action for the second icon
                                  //_launchURL('mailto:?subject=QR Code&body=$qrData');
                                },
                                icon: Icon(Icons.email),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Empty Field'),
                      content: Text('Please enter data to generate QR code.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            label: Text(
              'Generate',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            icon: Icon(Icons.qr_code),
            backgroundColor: Colors.blue[700],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
