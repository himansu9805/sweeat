import 'package:flutter/material.dart';
import 'UI/initial_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InitialApp(),
    );
  }
}

class InitialApp extends StatefulWidget {
  InitialApp({Key key}) : super(key: key);

  @override
  _InitialAppState createState() => _InitialAppState();
}

class _InitialAppState extends State<InitialApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialScreen(),
    );
  }
}
