import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'UI/initial_screen.dart';

void main() {
  runApp(InitialApp());
}

class InitialApp extends StatefulWidget {
  InitialApp({Key key}) : super(key: key);

  @override
  _InitialAppState createState() => _InitialAppState();
}

class _InitialAppState extends State<InitialApp> {
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.dispose();
  }

  @override
  initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Order App',
      home: InitialScreen(),
    );
  }
}
