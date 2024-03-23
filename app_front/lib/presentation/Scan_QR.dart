import 'package:flutter/material.dart';
import 'package:app_front/presentation/Profile.dart';
import 'package:app_front/presentation/notification.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QR_scaner extends StatelessWidget {

  Future<void> scanQRCode(BuildContext context) async {
    String barcodeScanResult = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", true, ScanMode.QR);

    if (barcodeScanResult != '-1') {
      // Navigate to NotificationPage with scanned data if the result is not -1
      Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage(scannedData: barcodeScanResult)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextButton.icon(
                  icon: const Icon(
                    Icons.person,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfilePage()));
                  },
                  label: const Text(
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Icon(
                    Icons.schedule,
                    size: 60,
                    color: Color.fromARGB(255, 92, 49, 153),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 150, bottom: 0),
            child: const Text(
              'Scan the QR Code',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          // onTap function to trigger QR code scanning
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
                // Call the function to scan QR code
                scanQRCode(context);
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
            margin: EdgeInsets.only(left: 40),
            child: Text(
              'The QR code will be automatically detected when you position it between the guide lines',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
