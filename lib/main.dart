import 'package:flutter/material.dart';
import 'package:myweb/core/views/home.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Material App', debugShowCheckedModeBanner: false, home: Home());
  }
}
