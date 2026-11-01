import 'package:flutter/material.dart';
import 'package:flutter_application_7/deletemethod.dart';
import 'package:flutter_application_7/getmethod.dart';
import 'package:flutter_application_7/post.dart';
import 'package:flutter_application_7/putmethod.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Deletemethod()
    );
  }
}
