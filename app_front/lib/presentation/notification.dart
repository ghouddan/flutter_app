import 'package:app_front/presentation/Scan_QR.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//import 'package:file_picker/file_picker.dart';
//import 'package:app_front/presentation/send_schedule.dart';


class Day {
  final String name;
  final int number;

  Day(this.name, this.number);
}
class CustomContainer {
  final String start_time; 
  final String element_name;
  final String end_time;
   bool? presence;

  CustomContainer(this.start_time, this.element_name, this.end_time, this.presence);
}

class NotificationPage extends StatelessWidget {
  final List<Day> days = [
    Day("Mon", 10),
    Day("Tue", 11),
    Day("Wed", 12),
    Day("Thu", 13),
    Day("Fri", 14),
    Day("Sat", 15),
    Day("Sun", 16),
  ];

  //final PlatformFile? selectedFile; 
  final String? scannedData;
  // NotificationPage({Key? key, this.selectedFile}) : super(key: key); 
  NotificationPage({Key? key, this.scannedData}) : super(key: key);

  // Function for updating presence based on scanned data
void scanQRCode(String scannedData) {
  // Get the current time
  DateTime currentTime = DateTime.now();

  for (var container in customContainers) {
    DateTime startTime = DateFormat.jm().parse(container.start_time);
    DateTime endTime = DateFormat.jm().parse(container.end_time);

    DateTime currentDate = DateTime(currentTime.year, currentTime.month, currentTime.day);

    startTime = DateTime(currentDate.year, currentDate.month, currentDate.day, startTime.hour, startTime.minute);
    endTime = DateTime(currentDate.year, currentDate.month, currentDate.day, endTime.hour, endTime.minute);

    if (currentTime.isAfter(startTime) && currentTime.isBefore(endTime)) {
      container.presence = true; 
      break;
    }
    else{
       container.presence = false;
    }
  }
}



  


  final List<CustomContainer> customContainers = [
    CustomContainer("8:30 AM", "Technique de recherche de l'emploi", "10:30 AM", null),
    CustomContainer("10:30 AM", "Back-end programing", "12:30 AM", null),
    CustomContainer("1:30 PM", "TRE", "3:30 PM", null),
    CustomContainer("3:30 PM", "Math", "5:30 PM", null),
  ];

  
  int sale = 27;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String currentDay = DateFormat('EEE').format(now);

    if (scannedData != null) {
      scanQRCode(scannedData!);
    }
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              height: 800,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    color: Color.fromARGB(100, 33, 40, 63),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: days
                          .map(
                            (day) => Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: day.name == currentDay ? Color.fromARGB(100, 128, 179, 255) : null,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    day.name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: day.name == currentDay ? FontWeight.bold : FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    day.number.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: day.name == currentDay ? FontWeight.bold : FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 20),
                  ...customContainers.map(
                    (container) {
                      Color presentOrNot = Colors.white;
                      if (container.presence == false) {
                        presentOrNot = Colors.red;
                      } else if (container.presence == true) {
                        presentOrNot = Colors.green;
                      } else if (container.presence == null) {
                        presentOrNot = Colors.white;
                      }
                      return Container(
                        margin: EdgeInsets.only(top: 20),
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(98, 56, 68, 106),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    container.start_time,
                                    style: TextStyle(fontSize: 14, color: Colors.white),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    container.element_name,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(187, 240, 199, 149),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    container.end_time,
                                    style: TextStyle(fontSize: 14, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Salle $sale',
                                  style: TextStyle(color: Color.fromRGBO(235, 235, 245, 60)),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: 20,
                                  height: 20,
                                  margin: EdgeInsets.only(left: 15, top: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: presentOrNot,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
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
              width: 120,
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Home icon
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => QR_scaner()));
                    },
                    icon: Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  // emploi icon
                  IconButton(
                    onPressed: () {
                     String formattedTime = DateFormat.jm().format(DateTime.now());
                     DateTime parsedTime = DateFormat.jm().parseLoose(formattedTime); // Recommended
                      print(formattedTime);
                    },
                    icon: Icon(
                      Icons.calendar_month, 
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
