import 'package:flutter/material.dart';
import 'package:mobile/components/appbar.dart';

class HomePage extends StatelessWidget {
  final String? imageLink;

  const HomePage({
    required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backButton: false,
        title: 'appname',
        imageLink: null,
      ),
    );
  }
}
