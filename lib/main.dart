import 'package:flutter/material.dart';
import 'package:ReliGo/screens/login_screen.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DoubleBackToCloseApp(
          child: LoginScreen(),
          snackBar: const SnackBar(content: Text('Tap back again to exit')),
        ),
      ),
    );
  }
}
