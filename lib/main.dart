import 'package:flutter/material.dart';

void main() {
  runApp(const AsroStoreApp());
}

class AsroStoreApp extends StatelessWidget {
  const AsroStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold());
  }
}
