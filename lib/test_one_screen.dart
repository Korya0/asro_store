import 'package:asroo_store/core/utils/context_extension.dart';
import 'package:asroo_store/generated/l10n.dart';
import 'package:flutter/material.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(S.of(context).app_title),
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
