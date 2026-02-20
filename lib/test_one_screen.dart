import 'package:asroo_store/core/utils/context_extension.dart';
import 'package:flutter/material.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Test One'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(context.image.testImage ?? ''),
          ],
        ),
      ),
    );
  }
}
