import 'package:flutter/material.dart';

class CityScreen extends StatelessWidget {
  const CityScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local'),
      ),
      body: Center(
        child: Text('Local'),
      ),
    );
  }
}
