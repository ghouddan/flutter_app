import 'dart:io';

import 'package:app_front/presentation/login.dart';
import 'package:flutter/material.dart';
import 'package:app_front/presentation/generateQR.dart';
import 'package:file_picker/file_picker.dart';

final List<String> filier = ['GI', 'TI', 'SIR'];

class SendSchedule extends StatefulWidget {
  @override
  _SendScheduleState createState() => _SendScheduleState();
}

class _SendScheduleState extends State<SendSchedule> {
  String? selectedFileName;
  PlatformFile? pickedfile;
  FilePickerResult? result;
  File? filetodispaly;

  // Getter method to access filetodisplay variable
  File? get fileToDisplay => filetodispaly;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // choose file 
                  GestureDetector(
                    onTap: () async {
                      try{
                      FilePickerResult? result = await FilePicker.platform.pickFiles();

                      if (result != null) {
                        String? filePath = result.files.single.path;
                        setState(() {
                          selectedFileName = result.files.single.name;
                          pickedfile = result.files.first;
                          filetodispaly = File(filePath!.toString());
                        });
                      }
                      } catch(e){
                        
                        print(e);
                      }
                    },
                    child: Container(
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
                        enabled: false,
                        decoration: InputDecoration(
                          alignLabelWithHint: false,
                          hintText: selectedFileName ?? 'Choose file',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          prefixIcon: Icon(
                            Icons.file_copy,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // drop list
                  Container(
                    width: 350,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color.fromARGB(8, 196, 196, 196), Colors.black],
                      ),
                    ),
                    child: SizedBox(
                      height: 70, 
                      child: DropdownButtonFormField<String>(
                        items: [filier[0], filier[1], filier[2]]
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: Colors.red), 
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {},
                        decoration: InputDecoration(
                          alignLabelWithHint: false,
                          hintText: 'Select a major',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          prefixIcon: Icon(
                            Icons.arrow_drop_down,
                            size: 50,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                      ),
                      onPressed: () {
                        print('send');
                      },
                      child: Text(
                        'Send Schedule',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
        // navigation  bar at the bottom of the page
        Positioned(
          bottom: 10,
          left: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                colors: [Colors.black, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            width: 150,
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              // QR generation page
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => GenerateQRPage()));
                  },
                  icon: Icon(
                    Icons.qr_code,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                // Sign out 
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  icon: Icon(
                    Icons.logout,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
