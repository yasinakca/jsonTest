import 'package:flutter/material.dart';
import 'package:localjson/local_json.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => Home(),
        "/localJson" : (context) => LocalJson()
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Json Kullanimi"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Local Json"),
          onPressed: () {
            Navigator.pushNamed(context, "/localJson");
          },
        ),
      ),
    );
  }
}

