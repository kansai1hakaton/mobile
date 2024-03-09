import 'package:flutter/material.dart';
import 'package:mobile/components/bottom_nav.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      bottomNavigationBar: BottomNav(),
      body: Center(
        child: Text('Test'),
      ),
    );
  }
}
