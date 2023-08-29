import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("QR Generator"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Scan The QR Code And You Will Be Redirected To My Github Link",   style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(height: 20,),
            Center(
              child: QrImage(
                //this is the child that we are using to make the qr code
                version: 6,
                backgroundColor: Colors.white, //background inside the qr code that we are making
                foregroundColor: Colors.black, //qr code colors
                errorCorrectionLevel: QrErrorCorrectLevel
                    .M, //this is the lvl for the error correction
                padding: EdgeInsets.all(
                    0), //Creates insets where all the offsets are value.
                size: 300, //this making the size of the wr turns to 300x300
                data:
                    "https://github.com/Nora-2", //this is the inside data of the qr that we are gonna generate
              ),
            ),
          ],
        ),
      ),
    );
  }
}
