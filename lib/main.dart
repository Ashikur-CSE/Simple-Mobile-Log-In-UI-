import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test3/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Timer (Duration(seconds: 4),(){
      Navigator.push(context, MaterialPageRoute(builder: (builder)=>LoginPage()));
    },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.black,),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          children: [
            Image.asset("image/aaa.jpg"),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
                //backgroundColor: Colors.green,
                strokeWidth: 5,
              ),
            ),
            Text("Loading",style: TextStyle(color:Colors.white),),
          ],
        ),
      ),
    );
  }
}

