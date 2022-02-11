import 'package:flutter/material.dart';
import 'package:matrimonial/Pages/Auth/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matrimonial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Welcome(),
    );
  }
}
