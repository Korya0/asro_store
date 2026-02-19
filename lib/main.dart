import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(DevicePreview(builder: (context) => const AsroStoreApp()));
}

class AsroStoreApp extends StatelessWidget {
  const AsroStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold());
  }
}
