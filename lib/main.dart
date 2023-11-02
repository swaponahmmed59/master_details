import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:master_details/person_master_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MasterScreen(),
    );
  }
}
