import 'dart:async';
import 'Onboarding.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() async {
  try {
    print(
        "fkwebngkjbewkgjbewkjgbkewjbgkjwebgkjbwekgjbwkejgbkewjbgkjbwegkbewkjbgkwebgkb");
    var response = await Dio().get('http://192.168.1.10:8080/api/taches/');
    print(
        "T********************************************************************* ");
    print(response);
  } catch (e) {
    print(e);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void getHttp() async {
    try {
      var response = await Dio().get('localhost:8080/api/taches/');
      print(
          "T********************************************************************* ");
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), openOnBoard);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('asset/image/management.png'),
          )),
        ),
      ),
    );
  }

  void openOnBoard() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Onboarding()));
  }
}
