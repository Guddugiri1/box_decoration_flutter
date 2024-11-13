import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade50,
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)),
              border: Border.all(
                width: 2,
                color:  Colors.black
              ),
              boxShadow: [
                 BoxShadow(
                   blurRadius: 51,
                   // spreadRadius: 11,
                   color: Colors.grey,
                   spreadRadius: 21
                 )
              ],
              shape: BoxShape.circle
            ),
          ),
        ),
      ),
    );
  }
}
