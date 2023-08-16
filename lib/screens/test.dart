import 'package:flutter/material.dart';

class TestRoute extends StatelessWidget {
  const TestRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test route'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.blueGrey,
      ),
    );
  }
}
