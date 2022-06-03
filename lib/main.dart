import 'package:ethnography/Signin.dart';
import 'package:ethnography/ViewResult.dart';
import 'package:flutter/material.dart';
import 'Persona.dart';
import 'Signup.dart';
import 'fiche.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Signup(),
    );
  }
}

